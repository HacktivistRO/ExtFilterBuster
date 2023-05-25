intro() {
clear
echo "  _____      _   _____ _ _ _            ____            _"
echo " | ____|_  _| |_|  ___(_) | |_ ___ _ __| __ ) _   _ ___| |_ ___ _ __"
echo " |  _| \ \/ / __| |_  | | | __/ _ \ '__|  _ \| | | / __| __/ _ \ '__|"
echo " | |___ >  <| |_|  _| | | | ||  __/ |  | |_) | |_| \__ \ ||  __/ |"
echo " |_____/_/\_\ __|_|   |_|_|\__\___|_|  |____/ \__,_|___/\__\___|_|"
echo "                          -By HacktivistRO"
echo ""
}

intro
echo "Bypassing filters for File Upload Vulnerability since 2023"

bypass_char=( '%20' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':' )

# Change this line with list of extension according to the technology of the target application. If not sure, leave it as is.
tech_ext=('.action', '.asax', '.ashx', '.asmx', '.asp', '.aspx', '.axd', '.backup', '.bak', '.base.js', '.bat', '.c', '.cfg', '.cfm', '.cgi', '.class', '.com', '.conf', '.config', '.cs', '.css', '.dll', '.do', '.exe', '.faces', '.hta', '.htm', '.html', '.ifaces', '.inc', '.jar', '.java', '.jhtml', '.jpeg', '.jpg', '.js', '.jsa', '.jsf', '.json', '.jsp', '.jspf', '.lock', '.log', '.md', '.mdb', '.nsf', '.old', '.passwd', '.pcap', '.pdf', '.php', '.php2', '.php3', '.php4', '.php5', '.php6', '.php7', '.phps', '.pht', '.phtml', '.pl', '.png', '.properties', '.reg', '.resx', '.seam', '.sh', '.sht', '.shtml', '.sln', '.sql', '.svf', '.swf', '.txt', '.wadl', '.wasm', '.web', '.wsdl', '.xhtml', '.xml', '.xsd', '.yaml', '.yml', '.zip' )

# Change this line with list of allowed extensions of the target application. If not sure, leave it as is.
allowed_ext=( '.zip', '.js', '.xls' , '.pdf', '.jpg', '.gif', '.md', '.css', '.html', '.txt', '.svg')

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
clear
echo "ExtFilterBuster has completed the task successfully."
sleep 2
echo "File Upload Wordlist saved as file-upload-list.txt"
sleep 2
echo "All the best for your upcoming phase of testing!"
