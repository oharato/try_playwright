playwrightでスクレイピング

## first time

docker compose up --build

## next

docker compose down

docker compose up

## settings

1. ワークフロー権限の設定
リポジトリの設定で、GitHub Actionsに適切な権限を付与する必要があります：
リポジトリのページで「Settings」タブに移動します。
左側のメニューから「Actions」→「General」を選択します。
「Workflow permissions」セクションで、「Read and write permissions」を選択します。
「Allow GitHub Actions to create and approve pull requests」オプションを有効にします。

Build and deployment
Source
Branch
Your GitHub Pages site is currently being built from the gh-pages branch. Learn more about configuring the publishing source for your site.
gh-pages
