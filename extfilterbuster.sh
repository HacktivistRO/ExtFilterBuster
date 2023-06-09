intro() {
clear
echo "  _____      _   _____ _ _ _            ____            _"
echo " | ____|_  _| |_|  ___(_) | |_ ___ _ __| __ ) _   _ ___| |_ ___ _ __"
echo " |  _| \ \/ / __| |_  | | | __/ _ \ '__|  _ \| | | / __| __/ _ \ '__|"
echo " | |___ >  <| |_|  _| | | | ||  __/ |  | |_) | |_| \__ \ ||  __/ |"
echo " |_____/_/\_\ __|_|   |_|_|\__\___|_|  |____/ \__,_|___/\__\___|_|"
echo "                          -By HacktivistRO"
}

intro
echo "Bypassing filters for File Upload Vulnerability since 2023"

bypass_char=( '%20' '%0d' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':' '....' '......' '#' '\x00' '…:.' '*' '%' '%7f' '%ff' '%n' '%s' '%x' ',' '-' ';' '_' )

# Change this line with list of extension according to the technology of the target application. If not sure, leave it as is.
tech_ext=( '.aSP' '.aSa' '.aSp' '.aSpx' '.action' '.asa' '.asax' '.ashx' '.asmx' '.asp' '.aspx' '.axd' '.backup' '.bak' '.base' '.js' '.bat' '.c' '.cFc' '.cFm' '.cFml' '.cGi' '.cfc' '.cfc.' '.cfg' '.cfm' '.cfml' '.cgi' '.class' '.com' '.conf' '.config' '.cs' '.css' '.dBm' '.dbm' '.dll' '.do' '.exe' '.faces' '.hta' '.htm' '.html' '.iNc' '.ifaces' '.inc' '.inc' '.jSp' '.jSpa' '.jSpf' '.jSpfa' '.jSpx' '.jSpxa' '.jSv' '.jSva' '.jSw' '.jSwa' '.jar' '.java' '.jhtml' '.jpeg' '.jpg' '.js' '.jsa' '.jsf' '.json' '.jsp' '.jspa' '.jspf' '.jspfa' '.jspx' '.jspxa' '.jsv' '.jsva' '.jsw' '.jswa' '.lIb' '.lib' '.lock' '.log' '.md' '.mdb' '.nsf' '.old' '.pHp' '.pHp3' '.pHp4' '.pHp5' '.pHtml' '.pL' '.pM' '.passwd' '.pcap' '.pdf' '.php' '.php2' '.php3' '.php4' '.php5' '.php6' '.php7' '.php8' '.phps' '.phar' '.pht' '.phtml' '.pl' '.png' '.properties' '.reg' '.resx' '.seam' '.sh' '.sht' '.shtml' '.sln' '.sql' '.svf' '.swf' '.txt' '.wadl' '.wasm' '.web' '.wsdl' '.xhtml' '.xml' '.xsd' '.war' '.yaml' '.yml' '.zip' )

# Change this line with list of allowed extensions of the target application. If not sure, leave it as is.
allowed_ext=( '.zip' '.js' '.xls' '.pdf' '.jpg' '.gif' '.md' '.css' '.html' '.txt' '.svg')

echo "Generating wordlist for you now."
for bypass_char in "${bypass_char[@]}"; do
  for tech_ext in "${tech_ext[@]}"; do
    for allowed_ext in "${allowed_ext[@]}"; do
      echo "rohan.${tech_ext}${bypass_char}${bypass_char}${allowed_ext}" >> wordlist.txt
      echo "rohan.${bypass_char}${bypass_char}${tech_ext}${allowed_ext}" >> wordlist.txt
      echo "rohan.${bypass_char}${tech_ext}${allowed_ext}${bypass_char}" >> wordlist.txt
      echo "rohan.${tech_ext}${bypass_char}${allowed_ext}" >> wordlist.txt
      echo "rohan.${allowed_ext}${tech_ext}${bypass_char}" >> wordlist.txt
      echo "rohan.${tech_ext}${allowed_ext}${bypass_char}" >> wordlist.txt
      echo "rohan.${tech_ext}" >> wordlist.txt
      echo "rohan.${allowed_ext}" >> wordlist.txt
   done
  done
done
intro
echo "Wordlist generated. Getting final finish done."
cat wordlist.txt | sort -u > file-upload-list.txt
rm wordlist.txt
intro
echo "ExtFilterBuster has completed the task successfully."
sleep 2
echo "File Upload Wordlist saved as file-upload-list.txt"
sleep 2
echo "All the best for your upcoming phase of testing!"
