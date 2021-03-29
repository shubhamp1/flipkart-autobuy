$LOAD_PATH << '.'

require 'credential'
include Credentials

require 'watir'
$browser = Watir::Browser.new
$browser.window.maximize

def login
  $browser.goto($website)
  login = $browser.link(class: '_1_3w1N').wait_until(&:present?).click

  $browser.text_field(class: 'VJZDxU').set($email)
  $browser.text_field(type: 'password').set($password)

  submit = $browser.button(class: %w[_2KpZ6l _2HKlqd])

  submit.click
  submit.wait_while(&:present?)
  $buy = $browser.button(class: %w[_2KpZ6l _2U9uOA ihZ75k _3AWRsL])

  $browser.refresh until $buy.present? == true
  $buy.click

  # click_add_adderss_btn = $browser.img(class: "_2hT5Bw").click; #for add more address if address alredy added
end

def set_adderss
  # if you want to buypass add address then uncomment "#bypass address" lines
  # name = $browser.button(value: "Use my current location")      #bypass address
  # if name.present?                                              #bypass address
    $browser.text_field(name: 'name').set($name)
    $browser.text_field(name: 'phone').set($mobileno)
    $browser.text_field(name: 'pincode').set($pincode)
    $browser.text_field(name: 'addressLine2').set($locality)
    $browser.textarea(name: 'addressLine1').set($addressLine1)
    $browser.label(for: $address_type).click
    save_address_btn = $browser.button(class: %w[_2KpZ6l _1JDhFS _3AWRsL]).click
  # end                                                          #bypass address
  continu_for_email = $browser.button(value: 'CONTINUE')
  continu_for_email.click
  for_payment_option = $browser.radio(id: 'COD').click!
  conform_order = $browser.button(class: '_7UHT_c')
  puts 'Order is placed 😊'
  puts 'Thank you for using our bot!'

  sleep 200
end

login
set_adderss
