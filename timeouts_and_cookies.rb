require 'watir'
require 'webdrivers'


class TimeoutsAndCookies

      # creating browser object to launch Chrome browser
      browser = Watir::Browser.new

      # to add timeouts. In watir default time out id 30 seconds.
      # to add wait more than 30 seconds
      browser.wait(timeout=50)


      # to delete all cookies
      browser.cookies.clear

=begin
      # to add a cookie
      browser.cookies.add("abc", "path")

      # to delete single cookie
      browser.cookies.delete("xyz")
=end


      # to maximize the window
      browser.window.maximize


      browser.goto("https://www.slideshare.net/")

   end