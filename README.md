# Bash Scripts Project - Yuval Dahan and Itay Felzot

This is a group project by Yuval Dahan and Itay Felzot containing 10 bash scripts for various file and system operations.

To get started, clone the repository with: git clone https://github.com/Afeka-DevTools/26b-10142-bash-yuval-and-itay.git
Then navigate into the directory: cd 26b-10142-bash-yuval-and-itay

Now you're ready to run any of the scripts using bash. Here's what each script does and how to run it:

SCRIPTS BY ITAY FELZOT:

The first script is countingFilesFoldersLinks.sh. To run this script, execute: bash scripts/countingFilesFoldersLinks.sh
The script will prompt you to enter a folder path. You can press Enter to use the current directory as default. For example, you could enter ./scripts or /home/user/Documents or just press Enter. The script will then count and display how many folders, files, and symbolic links exist in that directory. Make sure the folder path you enter actually exists on your system.

The second script is freqOfWords.sh. To run this script, execute: bash scripts/freqOfWords.sh
The script will ask you to enter the name of a file you want to analyze. Before running this script, you should create a text file. For example, you can create a file named sample.txt by running: echo "hello world hello bash bash bash" > sample.txt
Then when you run the script and it asks for the file name, enter: sample.txt
The script will then count how often each word appears in that file and display the results sorted by frequency.

The third script is prefixAdderScript.sh. To run this script, execute: bash scripts/prefixAdderScript.sh
First, you should create a directory with some .txt files. For example, create a test directory and files by running: mkdir -p test_files && echo "test content" > test_files/file1.txt && echo "more content" > test_files/file2.txt
Then when you run the script, it will ask you to enter a directory path. Enter: test_files
Then the script will ask you to enter a prefix to add, for example: backup_ or draft_ or old_
The script will then rename all .txt files in that directory by adding your prefix to their names. You can verify the changes by running: ls test_files/

The fourth script is scriptWordCount.sh. To run this script, execute: bash scripts/scriptWordCount.sh
Before running, create a test directory with some text files. For example: mkdir -p test_files && echo "Hello world. This is a test! How are you?" > test_files/sample.txt
When you run the script, it will use the current directory by default, but you can also provide a directory as an argument like: bash scripts/scriptWordCount.sh ./test_files
The script will then go through all files in that directory and count the number of words, sentences, and characters in each file, displaying the results for each file.

The fifth script is sizeOfFileChecker.sh. To run this script, execute: bash scripts/sizeOfFileChecker.sh
The script will ask you to enter a file size in bytes. You can press Enter to use 1024 bytes as the default. For example, you could enter 5000 or 1048576. The script will then count how many files in the current directory are larger than the size you specified and display the result.

SCRIPTS BY YUVAL DAHAN:

The sixth script is gitStatus.sh. To run this script, execute: bash scripts/gitStatus.sh
The script will ask you to enter a folder path. You can press Enter to use the current directory as default. Before running this, make sure you have at least one folder that contains a git repository, or just press Enter to check the current directory. The script will then check all subdirectories within that path, and for each one that contains a .git repository, it will display the git status of that repository.

The seventh script is importantDetails.sh. To run this script, execute: bash scripts/importantDetails.sh
This script doesn't require any input and doesn't need any setup. When you run it, it will automatically display important system environment variables and information such as the current user, home directory, current working directory, shell in use, system language, the system PATH, and the current system time.

The eighth script is siteAbvTester.sh. To run this script, execute: bash scripts/siteAbvTester.sh
First, you should create a text file containing a list of URLs, one URL per line. You can create this file by running: cat > urls.txt << EOF
https://www.google.com
https://www.github.com
https://www.example.com
EOF
Then when you run the script, it will ask you to enter the path to this file. You can press Enter to use urls.txt as the default filename. The script will then test each URL and display whether each one is reachable or not in a table format. Make sure you have curl installed on your system for this script to work.

The ninth script is sortLinesScript.sh. To run this script, execute: bash scripts/sortLinesScript.sh
Before running, you should create a text file with multiple lines. You can create a file called data.txt by running: cat > data.txt << EOF
zebra
apple
banana
cherry
EOF
Then when you run the script, it will ask you to enter the name of a file. Enter: data.txt
The script will then read that file and display its lines sorted alphabetically.

The tenth script is suffixCounter.sh. To run this script, execute: bash scripts/suffixCounter.sh
The script will ask you to enter a suffix to search for. For example, you could enter .txt or .sh or .py or .md. The script will then count how many files in the current directory and its subdirectories have that suffix and display the count. For example, to count all shell script files, enter: .sh

COMPLETE WORKFLOW EXAMPLE:

Here is a complete example of how to set up and run scripts from start to finish. First, clone the repository: git clone https://github.com/Afeka-DevTools/26b-10142-bash-yuval-and-itay.git
Then move into the repository directory: cd 26b-10142-bash-yuval-and-itay
Now let's run the importantDetails.sh script which requires no input or setup: bash scripts/importantDetails.sh
This will immediately display system information. Alternatively, if you want to run the countingFilesFoldersLinks.sh script, execute: bash scripts/countingFilesFoldersLinks.sh
When prompted, just press Enter to use the current directory, or type a path like ./scripts and press Enter. The script will count and display the number of folders, files, and links in that directory. Or if you want to run the suffixCounter.sh script, execute: bash scripts/suffixCounter.sh
When prompted, type: .sh
The script will count how many shell script files exist in the current directory and subdirectories. For a more complete example with the prefixAdderScript.sh, first create test files: mkdir -p test_files && echo "content1" > test_files/doc1.txt && echo "content2" > test_files/doc2.txt
Then run: bash scripts/prefixAdderScript.sh
When asked for the directory, enter: test_files
When asked for the prefix, enter: backup_
The script will rename the files to backup_doc1.txt and backup_doc2.txt. You can verify this worked by running: ls test_files/

REQUIREMENTS:

All scripts require bash version 4.0 or higher. Standard Unix utilities must be installed including find, sort, grep, and wc. The siteAbvTester.sh script requires curl to be installed. The gitStatus.sh script requires git to be installed on your system.

That's everything you need to know to use all the scripts in this project. Clone the repository, and then run whichever script you need based on your requirements using bash. Remember to create the necessary files and directories before running scripts that require them.