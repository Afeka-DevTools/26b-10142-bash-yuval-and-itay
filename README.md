# Bash Scripts Project - Yuval Dahan and Itay Felzot

This is a group project by Yuval Dahan and Itay Felzot containing 10 bash scripts for various file and system operations.

To get started, clone the repository with: git clone https://github.com/Afeka-DevTools/26b-10142-bash-yuval-and-itay.git
Then navigate into the directory: cd 26b-10142-bash-yuval-and-itay
Make all scripts executable by running: chmod +x scripts/*.sh

Now you're ready to run any of the scripts. Here's what each script does and how to run it:

SCRIPTS BY ITAY FELZOT:

The first script is countingFilesFoldersLinks.sh. To run this script, execute: ./scripts/countingFilesFoldersLinks.sh
The script will prompt you to enter a folder path. You can press Enter to use the current directory as default. For example, you could enter ./scripts or /home/user/Documents or just press Enter. The script will then count and display how many folders, files, and symbolic links exist in that directory.

The second script is freqOfWords.sh. To run this script, execute: ./scripts/freqOfWords.sh
The script will ask you to enter the name of a file you want to analyze. For example, you could enter README.md or sample.txt. The script will then count how often each word appears in that file and display the results sorted by frequency.

The third script is prefixAdderScript.sh. To run this script, you can execute: ./scripts/prefixAdderScript.sh or ./scripts/prefixAdderScript.sh /path/to/directory
If you provide a directory path as an argument, the script will use it. Otherwise, it will ask you to enter a directory path. You can press Enter to use the current directory as default. Then the script will ask you to enter a prefix to add, for example: backup_ or draft_ or old_. The script will then rename all .txt files in that directory by adding your prefix to their names.

The fourth script is scriptWordCount.sh. To run this script, you can execute: ./scripts/scriptWordCount.sh or ./scripts/scriptWordCount.sh /path/to/directory
If you provide a directory path as an argument, it will be used. Otherwise, the current directory will be used. The script will then go through all files in that directory and count the number of words, sentences, and characters in each file, displaying the results for each file.

The fifth script is sizeOfFileChecker.sh. To run this script, execute: ./scripts/sizeOfFileChecker.sh
The script will ask you to enter a file size in bytes. You can press Enter to use 1024 bytes as the default. For example, you could enter 5000 or 1048576. The script will then count how many files in the current directory are larger than the size you specified and display the result.

SCRIPTS BY YUVAL DAHAN:

The sixth script is gitStatus.sh. To run this script, execute: ./scripts/gitStatus.sh
The script will ask you to enter a folder path. You can press Enter to use the current directory as default. The script will then check all subdirectories within that path, and for each one that contains a .git repository, it will display the git status of that repository.

The seventh script is importantDetails.sh. To run this script, execute: ./scripts/importantDetails.sh
This script doesn't require any input. When you run it, it will automatically display important system environment variables and information such as the current user, home directory, current working directory, shell in use, system language, the system PATH, and the current system time.

The eighth script is siteAbvTester.sh. To run this script, execute: ./scripts/siteAbvTester.sh
First, you should create a text file containing a list of URLs, one URL per line. For example, create a file called urls.txt with content like: https://www.google.com, https://www.github.com, https://www.example.com. Then when you run the script, it will ask you to enter the path to this file. You can press Enter to use urls.txt as the default filename. The script will then test each URL and display whether each one is reachable or not in a table format.

The ninth script is sortLinesScript.sh. To run this script, execute: ./scripts/sortLinesScript.sh
The script will ask you to enter the name of a file. For example, you could enter data.txt or sample.txt. The script will then read that file and display its lines sorted alphabetically.

The tenth script is suffixCounter.sh. To run this script, execute: ./scripts/suffixCounter.sh
The script will ask you to enter a suffix to search for. For example, you could enter .txt or .sh or .py or .md. The script will then count how many files in the current directory and its subdirectories have that suffix and display the count.

COMPLETE WORKFLOW EXAMPLE:

Here is a complete example of how to set up and run one of the scripts from start to finish. First, clone the repository: git clone https://github.com/Afeka-DevTools/26b-10142-bash-yuval-and-itay.git
Then move into the repository directory: cd 26b-10142-bash-yuval-and-itay
Make the scripts executable: chmod +x scripts/*.sh
Now let's run the importantDetails.sh script which requires no input: ./scripts/importantDetails.sh
This will immediately display system information. Alternatively, if you want to run the countingFilesFoldersLinks.sh script, execute: ./scripts/countingFilesFoldersLinks.sh
When prompted, type: ./scripts
The script will count and display the number of folders, files, and links in the scripts directory. Or if you want to run the suffixCounter.sh script, execute: ./scripts/suffixCounter.sh
When prompted, type: .sh
The script will count how many shell script files exist in the current directory and subdirectories.

REQUIREMENTS:

All scripts require bash version 4.0 or higher. Standard Unix utilities must be installed including find, sort, grep, and wc. The siteAbvTester.sh script requires curl to be installed. The gitStatus.sh script requires git to be installed on your system.

That's everything you need to know to use all the scripts in this project. Clone the repository, make the scripts executable, and then run whichever script you need based on your requirements.