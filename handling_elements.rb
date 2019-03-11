require 'watir'
require 'webdrivers'

class HandlingElements


      browser = Watir::Browser.new :firefox


      browser.window.maximize
      browser.cookies.clear

      browser.goto("https://www.slideshare.net/")

      # to locate the text_field
      browser.text_field(id: "nav-search-query").send_keys("adfc")

      # locating element by using tagname button
      browser.button(class: "expand").click


      # locating the link element
      browser.link(text: "Login").click


      # locating the element by using text
      result = browser.h5(text: "Login with your SlideShare account").present?

      # locating the element by using "element and tag_name"
      textMsg  = browser.element(tag_name: "h5").text


      puts result

      puts textMsg

      #/html/body/div[2]/div/div[3]/h5

          if(result.eql?true )
            puts "Test Case Pass"
          end



      #browser.wait_until_present(browser.text("Login with your SlideShare account"))



      # to close the browser
      browser.close
end