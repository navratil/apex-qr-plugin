QR Code plugin
===============

Self contained QR Code item plugin for the Oracle Application Express.

Plugin simply renders value of the item as a QR code. Users can easily scan the QR code with their smart phones directly from the screen or print the page and use it as a ticket.

QR codes are generated using JavaScript - directly in the browser. Plugin does not depend on any external QR generator service. 

Demo: http://apex.oracle.com/pls/apex/f?p=55756

More about QR codes: http://en.wikipedia.org/wiki/QR_code

Follow **@apexindublin**

## Installation
* Import src/item_type_plugin_com_jannavratil_apex_qr.sql into your application 
  * There are no associated database objects
  * Javascript library is contained in the plugin (no need to copy .js files onto web server)
* Create a Page item - select Plug-ins - QR Code Item
* Set the source value for the item
* Run the page!
 
## Plugin attributes
QR plugin has following custom component attributes
* **Size**: Height and Width of the QR code in pixels - default 200
* **Color**: Color of the QR code - default #000000 (black)
* **Background**: Background color - default #FFFFFF (white)

For performance and scalability reasons you can also store JavaScript file (src/qrcode.min.js) on your Web Server. You would need to change the "File Prefix" plugin attribute accordingly (e.g. from #PLUGIN_PREFIX# to #IMAGE_PREFIX#).

### Dynamic actions (optional)
Dynamic actions can be used to update QR code on the page in a real time.
Each QR Code item has a dedicated JavaScript function renderQR_#ITEM_NAME#(newValue).

To update QR code in real time create dynamic action "Ececute JavaScript Code" with following code:

renderQR_#ITEM_NAME#('New Value');

e.g. renderQR_P100_MYQRCODE($x("P100_MYVALUE").value);

### Examples
There are three examples in the demo application (examples/qr-code-demo.sql) on page 101:
* First is the basic use - QR code is updated when page is submitted (Apply button)
* Second: The QR code is updated each time user changes the value - Dynamic action (Event = Key Release)
* Third is based on a timer - see Page Source / Execute when Page Loads
 
## Compatibility
* Developed with APEX 4.2, compatible with APEX 18
* Tested with following browsers: Firefox, Chrome, IE11, Safari (iPhone)
* Tested with following QR code scanners: scan.me, RedLaser, Google Authenticator, HDE OTP

## License
* The MIT License (MIT)
* See LICENSE-MIT for details
