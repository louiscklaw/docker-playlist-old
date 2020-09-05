const puppeteer = require( 'puppeteer' );

( async () => {
  const browser = await puppeteer.launch({
    defaultViewport:{
        width: 1920,
        height: 2080
    },
    ignoreHTTPSErrors: true
  });
  const page = await browser.newPage();
  await page.goto( 'https://example.com' );
  await page.screenshot( {
    path: 'example.png'
  } );

  await browser.close();
} )();

console.log('helloworld')
