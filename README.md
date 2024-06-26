# Namaste! 🙏

![](https://komarev.com/ghpvc/?username=HacktivistRO&style=for-the-badge)

![ExtFilterBuster-logo](https://github.com/HacktivistRO/ExtFilterBuster/assets/49992837/8fb1334c-983b-40b4-92fe-9434f91dfdb5)


# ExtFilterBuster
ExtFilterBuster is a BASH script designed to assist in testing file upload vulnerability by generating possible filenames with multiple extensions that can bypass server-side filters. By using a combination of various extensions and filter bypass characters, it aims to help identify potential weaknesses in file upload functionalities.

# Usage
1) Clone the repository using the following command: ```git clone https://github.com/HacktivistRO/ExtFilterBuster```

2) This step is optional but is recommended as it will ensure that wordlist is generated according to extenstions allowed on your target.

   Open the script in a text editor and modify the following variables according to your target application:  

   * `bypass_char`: This variable contains a list of characters used for bypassing filters. Modify this list to include any additional bypass characters you want to test.  

   * `tech_ext`: This variable contains a list of extensions based on the technology used by the target application. If you're unsure about the specific extensions, you can leave the list as it is.  

   * `allowed_ext`: This variable contains a list of allowed extensions in the target application. Modify this list based on the allowed extensions of your target application.

    Save the script with the modifications.

3) Run the script using the following command: ```bash extfilterbuster.sh``` and wait for a few seconds
4) The script will generate a wordlist file named file-upload-list.txt containing the possible filenames that can be used to test file upload vulnerability.

### NOTE: It will take around 5-7 minutes for the script to complete the task, provided you do not change anything in the script.

#### The generated wordlist can be used for further testing of file upload vulnerabilities in your target application.

## Sample Usage
```
git clone https://github.com/HacktivistRO/ExtFilterBuster
cd ExtFilterBuster
bash extfilterbuster.sh
```

## UPDATE: For everyone's reference, a ready-to-use wordlist has already been uploaded.

# Contributions
Contributions to ExtFilterBuster are welcome! If you have any suggestions, improvements, or bug fixes, feel free to submit a pull request on GitHub.
