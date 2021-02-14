# Notes

This is in no way shape or form condoned by Launtel, this is a third party project. Therefore it could stop working at any point in time. 

This has all been tested on Fixed Wireless and Hybird Fibre Coxial, if you have another tech type please test and let me know the results (@Bope#6914 on the discord). :)


# launtel_changey
changey is now a word :>

# Checkout the Wiki
<a href="https://github.com/ryanbop/launtel_changey/wiki">https://github.com/ryanbop/launtel_changey/wiki</a><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
#Old Info
<h1>Gather Information</h1>
For all this to work you will need to supply the following information, some of this comes from you the rest comes from NBNCo (which can be gathered through Launtel).

<h2>Your Variables</h2>
$username = ""<br>
$password = "" #Yes I know that I am storing the password in plain text. Feel free to branch off with a "secure" version.

<h2>NBNCo Variables</h2>
<h3>Service ID</h3>
This should a 5 digit number.<br>
$service_id = "12345"
<h3>AVC ID</h3>
This is your Active Virtual Circuit ID. I believe this links to your NBN Modem. Info from Launtel: The AVC is an individual connection ID that stands for active virtual circuit. You are sort of correct in saying it "links" to your NBN gear, it is used in concert with the LOCID (Location ID) to provide a service with a unique ID on a port at a location. <a href="https://kb.launtel.net.au/en/software/launtel_nbn/nbn_glossary">More Info (thanks to "Agent-Squirrel")</a><br>
$avc_id = "AVC123456789012"
<h3>Location ID</h3>
This is your location ID, it links to your physical property?<br>
$location_id = "LOC123456789012"

<h2>This is important</h2>
This is the part that needs to change between the weekday version and the weekend version of the script (alternatively, you could Launtel_DateChanger.ps1). 
<h3>PSID</h3>
The PSID is what actually changes the speed. Psid/Sid is the order number in Launtel's database.
<h4>FTTP</h4>
<li>1000/400 = 803</li>
<li>1000/50 = 800</li>
<li>500/200 = 1051</li>
<li>250/100 = 777</li>
<li>100/40 = 774</li>
<li>nbn50 = 776</li>
<li>nbn25 = 775</li>
<h4>HFC</h4>
<li>1000/50 = 833</li>
<li>400/50 = 837</li>
<li>250/25 = 831</li>
<li>100/40 = 822</li>
<li>100/20 = 829</li>
<li>nbn50 = 824</li>
<li>nbn25 = 823</li>
<h4>Fixed Wireless</h4>
<li>FW25/5 = 812</li>
<li>FW+75/10 = 821</li>
<h4>FTTC</h4>
<li>100/40 = 820</li>
<li>100/20 = 828</li>
<li>nbn50 = 819</li>
<li>nbn25 = 818</li>
<h4>FTTB</h4>
<li>100/40 = 817</li>
<li>100/20 = 827</li>
<li>nbn50 = 816</li>
<li>nbn25 = 814</li>
<h4>FTTN</h4>
<li>100/40 = </li>
<li>100/20 = </li>
<li>nbn50 = </li>
<li>nbn25 = </li>

$psid = ""

<h2>How to get the info</h2>
<ol>Navigate to <a href="https://residential.launtel.net.au/services">https://residential.launtel.net.au/services</a> and sign in<br></ol>
<ol>Then click the "Modify Service" button<br></ol>
<ol>Choose a speed tier (e.g. nbn50) and press "Looks great - update it!"<br></ol>
<ol>On this page pay careful attention to the url as it contains all the information you'll need for the variables (except your username and password).<br></ol>
<ol>The URL should look similar to this <a href="https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)">"https://residential.launtel.net.au/confirm_service?psid=$($psid)&unpause=0&service_id=$($service_id)&upgrade_options=&avcid=$($avc_id)&locid=$($location_id)"</a> (the variable names will actually be what you want to copy).<br></ol>
DO NOT CLICK CONFIRM!

<h1>So, In the end you'll have</h1>
<li>$Service_ID = "12345"</li>
<li>$AVC_ID = "AVC123456789012"</li>
<li>$Location_ID = "LOC123456789012"</li>
<li>$PSID = "824"</li>
and..
<li>$username</li>
<li>$password</li>


<h1>Running the code</h1>
Once you have setup the code with all of your variables, run it and the raw HTML content will be dumped into C:\users\*username*\downloads. This will be removed eventually, I was using it for testing.
