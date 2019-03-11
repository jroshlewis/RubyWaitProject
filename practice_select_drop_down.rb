require 'watir'
require 'webdrivers'

class PracticeSelectDropDown

      browser = Watir::Browser.new

      browser.cookies.clear
      browser.window.maximize

      browser.goto("https://www.facebook.com/")

      browser.text_field(id: "u_0_c").send_keys("kdfj")
      browser.text_field(name: "lastname").send_keys("jkk122")
      browser.text_field(name: "reg_email__").send_keys("sfdl@mail.com")
      browser.text_field(name: "reg_passwd__").send_keys("jkkk123")

      # to select from drop down list by index number
      browser.select_list(id: "month").option(index: 3).click

      # to select from drop down list by given value
      browser.select_list(id:"day").select("21")

      # to select from drop down list by given content
      browser.select_list(id: "year").select("2005")


      # to fetch the value of select list
      selectList = browser.select_list(id: "year")
      contents = selectList.options.map(&:text)

      contents.each do |i|
        puts i
      end

      puts "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"

      #to fetch the value of month drop down list
      selectListContents = browser.select_list(id: "month").options.map(&:text)

      selectListContents.each do |i|
        puts i
      end


end