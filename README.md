# Bash Scripts Project

## Team Members
- **Yuval Dahan 331894596**
- **Itay Felzot 331017764**

---

## Getting Started

Execute the following commands to set up the project:

```bash
git clone https://github.com/Afeka-DevTools/26b-10142-bash-yuval-and-itay.git
cd 26b-10142-bash-yuval-and-itay
cd scripts
```

All scripts are executed using: `bash scriptName.sh`

---

## Scripts by Itay Felzot

### 1. countingFilesFoldersLinks.sh

This script enumerates the quantity of directories, files, and symbolic links within a specified directory.

**Execution:**
```bash
bash countingFilesFoldersLinks.sh
```

**Required Input:**
- Directory path (optional; default is the current directory)

**Output Example:**
```
Enter the folder path you want to count files, folders and links in (Default is ._): ../
The amount of folders in the folder '../' is: 1
The amount of files in the folder '../' is: 10
The amount of links in the folder '../' is: 0
```

---

### 2. freqOfWords.sh

This script analyzes a text file and calculates the frequency of each word, displaying results in descending order by frequency.

**Preparation Required:**
Create a sample text file before running this script:
```bash
cd .. && echo "hello world hello bash bash bash" > sample.txt && cd scripts
```

**Execution:**
```bash
bash freqOfWords.sh
```

**Required Input:**
- File path (e.g., `../sample.txt`)

**Output Example:**
```
Enter the file name you want to count words in: ../sample.txt
      3 bash
      2 hello
      1 world
```

---

### 3. prefixAdderScript.sh

This script prepends a specified prefix to all `.txt` files within a target directory.

**Preparation Required:**
Create a test directory with sample `.txt` files:
```bash
cd .. && mkdir -p test_files && echo "test content" > test_files/file1.txt && echo "more content" > test_files/file2.txt && cd scripts
```

**Execution:**
```bash
bash prefixAdderScript.sh
```

**Required Inputs:**
1. Directory path (e.g., `../test_files`)
2. Prefix string (e.g., `backup_`, `draft_`, `old_`)

**Output Example:**
```
Enter the prefix to add (e.g., 'draft_'): backup_
Adding prefix 'backup_' to .txt files...
Renaming: file1.txt -> backup_file1.txt
Renaming: file2.txt -> backup_file2.txt
Done!
```

**Verification:**
```bash
cd .. && ls test_files/ && cd scripts
```

---

### 4. scriptWordCount.sh

This script computes word count, sentence count, and character count for all files within a specified directory.

**Preparation Required:**
Create a test directory with sample text files:
```bash
cd .. && mkdir -p test_files && echo "Hello world. This is a test! How are you?" > test_files/sample.txt && cd scripts
```

**Execution:**
```bash
bash scriptWordCount.sh ../test_files
```

**Optional Input:**
- Directory path (uses current directory if not provided)

**Output Example:**
```
Processing file: sample.txt
Words: 8
Sentences: 2
Characters: 47
```

---

### 5. sizeOfFileChecker.sh

This script counts the number of files in the current directory that exceed a specified size threshold in bytes.

**Execution:**
```bash
bash sizeOfFileChecker.sh
```

**Required Input:**
- File size in bytes (optional; default is 1024 bytes)

**Output Example:**
```
Enter the size in bytes to check for files bigger than (Default is 1024): 5000
The amount of files bigger than 5000 bytes is: 3
```

---

## Scripts by Yuval Dahan

### 1. gitStatus.sh

This script displays the Git status for all subdirectories that contain a `.git` repository.

**Execution:**
```bash
bash gitStatus.sh
```

**Required Input:**
- Directory path (optional; default is the current directory)

**Output Example:**
```
Enter the folder path you want to check Git status in (Default is .): ../
Git status for sub folders in: ../
----------------------------------------
Git status for ../repo1/:
On branch main
Your branch is up to date with 'origin/main'.
nothing to commit, working tree clean
```

---

### 2. importantDetails.sh

This script displays critical system environment variables and information, including user context, directory paths, shell configuration, and system time.

**Execution:**
```bash
bash importantDetails.sh
```

**Required Input:**
- None; execution is automatic

**Output Example:**
```
=========================================
   Important Environment Variables Info  
=========================================

Current User:       itay
Home Directory:    /home/itay
Current Directory: /home/itay/26b-10142-bash-yuval-and-itay/scripts
Shell in Use:      /bin/bash
System Language:   en_US.UTF-8

System PATH:
  - /usr/local/sbin
  - /usr/local/bin
  - /usr/sbin
  - /usr/bin

System time is Sat Jun 28 19:15:30 UTC 2026

=========================================
```

---

### 3. siteAbvTester.sh

This script tests the reachability of URLs listed in a text file and reports their HTTP status.

**Preparation Required:**
Create a text file containing a list of URLs to test:
```bash
cd .. && cat > urls.txt << EOF
https://www.google.com
https://www.github.com
https://www.example.com
EOF
cd scripts
```

**Execution:**
```bash
bash siteAbvTester.sh
```

**Required Input:**
- File path containing URLs (optional; default is `../urls.txt`)

**Output Example:**
```
Enter the path of the file containing the list of URLs (Default is urls.txt): ../urls.txt
Checking URLs from file: ../urls.txt
URL                                                Status    
------------------------------------------------------ ----------
https://www.google.com                             Reachable
https://www.github.com                             Reachable
https://www.example.com                            Not Reachable
```

**Prerequisites:**
- `curl` must be installed on the system

---

### 4. sortLinesScript.sh

This script reads a text file and outputs its lines in alphabetical order.

**Preparation Required:**
Create a text file with multiple lines for sorting:
```bash
cd .. && cat > data.txt << EOF
zebra
apple
banana
cherry
EOF
cd scripts
```

**Execution:**
```bash
bash sortLinesScript.sh
```

**Required Input:**
- File path (e.g., `../data.txt`)

**Output Example:**
```
Enter the filename to sort: ../data.txt
apple
banana
cherry
zebra
Sorted lines from '../data.txt'
```

---

### 5. suffixCounter.sh

This script counts the number of files with a specified suffix in the current directory and subdirectories.

**Execution:**
```bash
bash suffixCounter.sh
```

**Required Input:**
- File suffix (e.g., `.txt`, `.sh`, `.py`, `.md`)

**Output Example:**
```
Enter the suffix you want to count: .sh
The amount of files with the suffix '.sh' is: 10
```

---

## Complete Workflow Example

The following example demonstrates the complete process from project initialization to script execution:

**Step 1: Initialize the project environment**
```bash
git clone https://github.com/Afeka-DevTools/26b-10142-bash-yuval-and-itay.git
cd 26b-10142-bash-yuval-and-itay
cd scripts
```

**Step 2: Execute a script requiring no setup**
```bash
bash importantDetails.sh
```

**Step 3: Execute a script with simple input**
```bash
bash suffixCounter.sh
```
Enter `.sh` when prompted.

**Step 4: Execute a script with file preparation**
```bash
cd .. && mkdir -p test_files && echo "content1" > test_files/doc1.txt && echo "content2" > test_files/doc2.txt && cd scripts
bash prefixAdderScript.sh
```
Enter `../test_files` when prompted for directory path.
Enter `backup_` when prompted for prefix.

**Step 5: Verify results**
```bash
cd .. && ls test_files/ && cd scripts
```

---

## System Requirements

| Component | Requirement |
|-----------|------------|
| Bash | Version 4.0 or higher |
| Unix utilities | `find`, `sort`, `grep`, `wc` |
| Additional (for siteAbvTester.sh) | `curl` |
| Additional (for gitStatus.sh) | `git` |

---

## Usage Summary

1. Clone the repository
2. Navigate to the `scripts` directory
3. Execute scripts using `bash scriptName.sh`
4. Prepare required files and directories as specified for each script
5. Provide inputs as prompted by each script
