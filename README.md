# launtel_changey
changey is now a word :>

Is this readme <h1>shown</h1> in <p>html</p>?

<h1>Gather Information</h1>
For all this to work you will need to supply the following information, some of this comes from you the rest comes from NBNCo (which can be gather through Launtel).

<h2>Your Variables</h2>
$username = ""
$password = ""

<h2>NBNCo Variables</h2>
<h3>Service ID</h3>
This is a 5 digit number (or at least mine is)
$service_id = "12345"
<h3>AVC ID</h3>
This is <insert meaning for AVC here> ID. I believe this links to your nbn Modem.
$avc_id = "AVC123456789012"
<h3>Location ID</h3>
This is your location ID, it links to your physical property?
$location_id = "LOC123456789012"

<h2>This is important</h2>
This is the part that needs to change between your weekend and weekday script, if you do it with two seperate ps1 files in task scheduler (you could def's do it with `Get-Date`). 
<h3>PSID</h3>
Your PSID is what actually changes the speed. Unfortunealty, I can only provide the numbers for speeds up to 250/25 or 20.
<li>250/25 = 831</li>
<li>100/40 = 822</li>
<li>100/20 = 829</li>
<li>nbn50 = 824</li>
<li>nbn25 = 823</li>
$psid = ""
