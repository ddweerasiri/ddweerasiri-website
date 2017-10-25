var webdriver = require('selenium-webdriver');
var By = webdriver.By;
var chrome = require('selenium-webdriver/chrome');


describe('Href Link Test Suite', function(){
    it("Blog Link Test", function(done) {
        var driver = new webdriver.Builder()
            .withCapabilities( {'browserName' : 'chrome'} )
            .build();
        driver.get("http://localhost:3000");
        driver.findElement(By.linkText("Blog")).click();
        driver.wait(checkHrefClick, 1000);

        function checkHrefClick() {
            var promise = driver.getCurrentUrl().then(function(url) {
                if (url === 'http://localhost:3000/blog') {
                    console.log('success:' + url);
                    return true;
                } else {
                    console.log('fail' + url);
                    return false;
                }
            });
            return promise;
        }

        done();
        driver.quit();
    });
});

