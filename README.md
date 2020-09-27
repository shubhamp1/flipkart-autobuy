# flipkart-autobuy
Automated program to buy Flipkart products in flash sale online. Specifically to buy products which go out of sale in a fraction of seconds and are too difficult to buy manually.

Steps to run this script:

1. Clone or download this repository git clone https://github.com/shubhamp1/flipkart-autobuy.git
2. Do cd flipkart-autobuy
3. install ruby in your os if not installed
4. install gem Watir   
5. Download the correct chromedriver for you operating system (Linux/OSX/Windows), put the chromedriver in path accouding to your os.
   (refer this link for download chrome driver [chrome driver](https://chromedriver.chromium.org/downloads))
6. Enter your email and password in credential.rb file.
7. Enter flipkart product URL in credential.rb file.
8. Run ruby flipkart_autobuy.rb

Note: Make sure to delete all address in your flipkart account and currently support only COD payment.