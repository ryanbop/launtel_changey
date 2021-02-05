# launtel_changey
changey is now a word :>

<h1>Gather Information</h1>
For all this to work you will need to supply the following information, some of this comes from you the rest comes from NBNCo (which can be gather through Launtel).

<h2>Your Variables</h2>
$username = ""<br>
$password = "" #Yes I know that I am storing the password in plain text. BUT, this is no where near a final script yet.

<h2>NBNCo Variables</h2>
<h3>Service ID</h3>
This is a 5 digit number (or at least mine is)
$service_id = "12345"
<h3>AVC ID</h3>
This is your Active Virtual Circuit ID. I believe this links to your nbn Modem.
$avc_id = "AVC123456789012"
<h3>Location ID</h3>
This is your location ID, it links to your physical property?
$location_id = "LOC123456789012"

<h2>This is important</h2>
This is the part that needs to change between your weekend and weekday script, if you do it with two seperate ps1 files in task scheduler (you could def's do it with `Get-Date`). 
<h3>PSID</h3>
The PSID is what actually changes the speed. Psid/Sid is the order number in Launtel's database. Unfortunealty, I can only provide the numbers for speeds up to 250/25 or 20.
<li>250/25 = 831</li>
<li>100/40 = 822</li>
<li>100/20 = 829</li>
<li>nbn50 = 824</li>
<li>nbn25 = 823</li>
$psid = ""

<h2>How to get the info</h2>
Navigate to <a href="https://residential.launtel.net.au/services"> and sign in
Then click the "Modify Service" button
Choose a speed tier (e.g. nbn50) and press "Looks great - update it!"
On this page pay careful attention to the url as it contains all the information you'll need for the variables (execpt your username and password).
  The URL should look similar to this "https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)"

<h1>So, In the end you'll have</h1>
<li>$Service_ID</li>
<li>$AVC_ID</li>
<li>$Location_ID</li>
<li>$PSID</li>
and..
<li>$username</li>
<li>$password</li>
