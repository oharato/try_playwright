import { chromium } from "playwright";

(async () => {
  const browser = await chromium.launch({
    headless: true,
    args: ["--blink-settings=imagesEnabled=false", "--disable-remote-fonts"],
  });
  const context = await browser.newContext();
  const page = await context.newPage();
  await page.goto("https://example.com/");
  await page.screenshot({ path: "output/example.png" }); // スクリーンショットを撮る
  console.log(await page.locator("h1").textContent()); // h1要素のテキストを取得

  await page.close(); // ページを閉じる
  await browser.close(); // ブラウザを閉じる
})();