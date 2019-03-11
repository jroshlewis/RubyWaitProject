require 'watir'
require 'webdrivers'

class LaunchingTheBrowser

      # to launch the browser
      # -- we can launch the browser using gem "webdrivers"
      # -- we can lanuch the browser using "selenium-webdriver". If using selenium-webdriver then set the driver path.
      # --for eg. Selenium::Webdriver::Chrome.driver_path="C:/RoshTesting/Tools/Browsers/chromedirver.exe"

      # Chrome is the default browser, so no need to specify the browser.
      # eg. Watir::Browser.new

      #  to launch Internet Explorer
      #       browser = Watir::Browser.new :ie


      #creating new browser instance

      # to launch firefox browser
      browser = Watir::Browser.new :firefox


      Watir.default_timeout = 50



      browser.goto("https://www.slideshare.net/")







end