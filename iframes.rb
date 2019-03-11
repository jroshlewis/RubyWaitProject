require 'watir'
require 'webdrivers'
class Iframes



    browser = Watir::Browser.new

    browser.wait(timeout = 60)

    browser.cookies.clear

    browser.window.maximize

    browser.goto("https://www.toolsqa.com/iframe-practice-page/")

    puts browser.title

    # giving wait
    browser.wait_until{browser.iframe(id: "IF2")}

    # locating an element on the iframe
    reslt = browser.iframe(id: "IF2").h1(text: "Error establishing a database connection").present?

    puts reslt


end