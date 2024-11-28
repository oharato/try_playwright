FROM node:22.11-bookworm

# 環境変数としてUIDとGIDを受け取る
ARG UID
ARG GID

# UIDとGIDを使用して新しいユーザを作成
RUN if ! getent group $GID; then groupadd -g $GID appgroup; fi && \
    if ! id -u $UID > /dev/null 2>&1; then useradd -m -u $UID -g $GID appuser; fi

WORKDIR /app

# root ユーザとして依存関係をインストール
RUN npx playwright install-deps chromium

COPY . .

# root ユーザとして npm install を実行
RUN npm install

# appuser としてコマンドを実行
USER $UID:$GID

RUN npx playwright install chromium

CMD ["npx", "ts-node", "index.ts"]
