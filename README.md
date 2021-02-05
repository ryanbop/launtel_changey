# launtel_changey
changey is now a word :>

<h1>Gather Information</h1>
For all this to work you will need to supply the following information, some of this comes from you the rest comes from NBNCo (which can be gather through Launtel).

<h2>Your Variables</h2>
$username = ""<br>
$password = "" #Yes I know that I am storing the password in plain text. BUT, this is no where near a final script yet.

<h2>NBNCo Variables</h2>
<h3>Service ID</h3>
This is a 5 digit number (or at least mine is)<br>
$service_id = "12345"
<h3>AVC ID</h3>
This is your Active Virtual Circuit ID. I believe this links to your nbn Modem.<br>
$avc_id = "AVC123456789012"
<h3>Location ID</h3>
This is your location ID, it links to your physical property?<br>
$location_id = "LOC123456789012"

<h2>This is important</h2>
This is the part that needs to change between your weekend and weekday script, if you do it with two seperate ps1 files in task scheduler (alternativly, you could def's do it with and if statement and `Get-Date`). 
<h3>PSID</h3>
The PSID is what actually changes the speed. Psid/Sid is the order number in Launtel's database. Unfortunealty, I can only provide the numbers for speeds up to 250/25 or 20.
<li>250/25 = 831</li>
<li>100/40 = 822</li>
<li>100/20 = 829</li>
<li>nbn50 = 824</li>
<li>nbn25 = 823</li>
$psid = ""

<h2>How to get the info</h2>
Navigate to <a href="https://residential.launtel.net.au/services">https://residential.launtel.net.au/services</a> and sign in<br>
Then click the "Modify Service" button<br>
Choose a speed tier (e.g. nbn50) and press "Looks great - update it!"<br>
On this page pay careful attention to the url as it contains all the information you'll need for the variables (execpt your username and password).<br>
  The URL should look similar to this <a href="https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)">"https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)"</a> (the variable names will actually be what you want to copy).

<h1>So, In the end you'll have</h1>
<li>$Service_ID = "12345"</li>
<li>$AVC_ID = "AVC123456789012"</li>
<li>$Location_ID = "LOC123456789012"</li>
<li>$PSID = 824</li>
and..
<li>$username</li>
<li>$password</li>
