$LOAD_PATH << '.'

require 'credential'
include Credentials

require 'watir'
$browser = Watir::Browser.new
$browser.window.maximize
# $wait = Selenium::WebDriver::Wait.new(timeout:  30)

def login
  $browser.goto($website);
  login = $browser.link(class: "_3Ep39l").wait_until(&:present?).click;
 
  $browser.text_field(class: "_1dBPDZ").set($email);
  $browser.text_field(type: "password").set($password);

  submit =  $browser.button(class: ["_2AkmmA", "_1LctnI", "_7UHT_c"]);
  submit.click
  submit.wait_while(&:present?);
  $buy = $browser.button(class: ["_2AkmmA", "_2Npkh4", "_2kuvG8", "_7UHT_c"])
  
   until $buy.present? == true do
    $browser.refresh
   end
    $buy.click
 
  # click_add_adderss_btn = $browser.img(class: "_2hT5Bw").click; #for add more address if address alredy added
end

def set_adderss
    # sleep 1.5
    # name = $browser.button(value: "Use my current location")
    # puts name.present?
    #if name.present? #if you want to buypass add address then uncomment this and end tag also
    $browser.text_field(name: "name").set($name)
    $browser.text_field(name: "phone").set($mobileno)
    $browser.text_field(name: "pincode").set($pincode)
    $browser.text_field(name: "addressLine2").set($locality)
    $browser.textarea(name: "addressLine1").set($addressLine1)
    # $browser.label(class: "_8J-bZE _2tcMoY").click
    $browser.label(for: $address_type).click
    save_address_btn = $browser.button(class: "_7UHT_c").click
 # end
  continu_for_email = $browser.button(value: "CONTINUE")
  continu_for_email.click
  for_payment_option = $browser.radio(id: "COD").click!
  conform_order = $browser.button(class: "_7UHT_c")
  # sleep 5
  # until conform_order.click do
  #   sleep 3
  #   conform_order.click
  #   puts "order not place"
  # end
  # puts "order is placed"
  sleep 200
end

login
set_adderss