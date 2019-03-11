require 'watir'
require 'webdrivers'

class PracticeElementsHandling

      browser = Watir::Browser.new

      browser.wait(timeout = 50)

      browser.cookies.clear

      browser.window.maximize

      browser.goto("https://www.oclc.org/en/home.html")

      toolTipText = browser.link(text: "OCLC.org").attribute("title")

      puts toolTipText

      # the mouse hover action
      browser.link(text: "Membership").hover

      # locating element using tag_name and text
      browser.a(text: "Overview").click

      # locating element using xpath
      #browser.link(xpath: "//*[contains(text(),'Overview')]").click

     result  = browser.span(text: "We advance further, faster").present?

     puts result

     # to navigate back
     browser.back



end