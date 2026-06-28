# 🚀 Bash Scripts Project

## 👥 Team Members
- **Yuval Dahan**
- **Itay Felzot**

---

## 📋 Quick Start

```bash
git clone https://github.com/Afeka-DevTools/26b-10142-bash-yuval-and-itay.git
cd 26b-10142-bash-yuval-and-itay
cd scripts
```

Now you're ready to run any script! Just use: `bash scriptName.sh`

---

## 🔧 Scripts by Itay Felzot

### 1. **countingFilesFoldersLinks.sh** 📁
Counts the number of folders, files, and symbolic links in a specified directory.

**How to run:**
```bash
bash countingFilesFoldersLinks.sh
```

**Input required:**
- Folder path (optional, press Enter for current directory)

**Example:**
```
Enter the folder path you want to count files, folders and links in (Default is ._): ../
The amount of folders in the folder '../' is: 1
The amount of files in the folder '../' is: 10
The amount of links in the folder '../' is: 0
```

---

### 2. **freqOfWords.sh** 📊
Counts the frequency of words appearing in a text file and displays them sorted by frequency.

**Setup (before running):**
```bash
cd .. && echo "hello world hello bash bash bash" > sample.txt && cd scripts
```

**How to run:**
```bash
bash freqOfWords.sh
```

**Input required:**
- File path to analyze (e.g., `../sample.txt`)

**Example:**
```
Enter the file name you want to count words in: ../sample.txt
      3 bash
      2 hello
      1 world
```

---

### 3. **prefixAdderScript.sh** 📝
Adds a prefix to all `.txt` files in a specified directory.

**Setup (before running):**
```bash
cd .. && mkdir -p test_files && echo "test content" > test_files/file1.txt && echo "more content" > test_files/file2.txt && cd scripts
```

**How to run:**
```bash
bash prefixAdderScript.sh
```

**Inputs required:**
1. Directory path (e.g., `../test_files`)
2. Prefix to add (e.g., `backup_`, `draft_`, `old_`)

**Example:**
```
Enter the prefix to add (e.g., 'draft_'): backup_
Adding prefix 'backup_' to .txt files...
Renaming: file1.txt -> backup_file1.txt
Renaming: file2.txt -> backup_file2.txt
Done!
```

**Verify:**
```bash
cd .. && ls test_files/ && cd scripts
```

---

### 4. **scriptWordCount.sh** 📖
Counts words, sentences, and characters in all files within a directory.

**Setup (before running):**
```bash
cd .. && mkdir -p test_files && echo "Hello world. This is a test! How are you?" > test_files/sample.txt && cd scripts
```

**How to run:**
```bash
bash scriptWordCount.sh ../test_files
```

**Input required (optional):**
- Directory path (or uses current directory by default)

**Example:**
```
Processing file: sample.txt
Words: 8
Sentences: 2
Characters: 47
```

---

### 5. **sizeOfFileChecker.sh** 💾
Checks how many files are larger than a specified size (in bytes).

**How to run:**
```bash
bash sizeOfFileChecker.sh
```

**Input required:**
- File size in bytes (optional, default is 1024 bytes)

**Example:**
```
Enter the size in bytes to check for files bigger than (Default is 1024): 5000
The amount of files bigger than 5000 bytes is: 3
```

---

## 🌐 Scripts by Yuval Dahan

### 1. **gitStatus.sh** 🔀
Shows Git status for all subdirectories that contain a `.git` repository.

**How to run:**
```bash
bash gitStatus.sh
```

**Input required:**
- Folder path (optional, press Enter for current directory)

**Example:**
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

### 2. **importantDetails.sh** ℹ️
Displays important system environment variables and information.

**How to run:**
```bash
bash importantDetails.sh
```

**Input required:**
- ❌ No input needed - runs automatically!

**Example output:**
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

### 3. **siteAbvTester.sh** 🌍
Tests a list of URLs and checks if they are reachable or not.

**Setup (before running):**
```bash
cd .. && cat > urls.txt << EOF
https://www.google.com
https://www.github.com
https://www.example.com
EOF
cd scripts
```

**How to run:**
```bash
bash siteAbvTester.sh
```

**Input required:**
- Path to file containing URLs (optional, default is `../urls.txt`)

**Example output:**
```
Enter the path of the file containing the list of URLs (Default is urls.txt): ../urls.txt
Checking URLs from file: ../urls.txt
URL                                                Status    
------------------------------------------------------ ----------
https://www.google.com                             Reachable
https://www.github.com                             Reachable
https://www.example.com                            Not Reachable
```

⚠️ **Requires:** `curl` must be installed on your system

---

### 4. **sortLinesScript.sh** 🔤
Sorts the lines of a file alphabetically.

**Setup (before running):**
```bash
cd .. && cat > data.txt << EOF
zebra
apple
banana
cherry
EOF
cd scripts
```

**How to run:**
```bash
bash sortLinesScript.sh
```

**Input required:**
- File name/path to sort (e.g., `../data.txt`)

**Example output:**
```
Enter the filename to sort: ../data.txt
apple
banana
cherry
zebra
Sorted lines from '../data.txt'
```

---

### 5. **suffixCounter.sh** 🏷️
Counts files with a specific suffix/extension.

**How to run:**
```bash
bash suffixCounter.sh
```

**Input required:**
- Suffix to search for (e.g., `.txt`, `.sh`, `.py`, `.md`)

**Example:**
```
Enter the suffix you want to count: .sh
The amount of files with the suffix '.sh' is: 10
```

---

## 📚 Complete Workflow Example

Here's a step-by-step guide to set up and run a script from scratch:

**Step 1: Clone and navigate**
```bash
git clone https://github.com/Afeka-DevTools/26b-10142-bash-yuval-and-itay.git
cd 26b-10142-bash-yuval-and-itay
cd scripts
```

**Step 2: Run a simple script (no setup needed)**
```bash
bash importantDetails.sh
```
This will display your system information immediately.

**Step 3: Run a script that needs input (with setup)**
```bash
bash suffixCounter.sh
```
When prompted, enter: `.sh`

**Step 4: Run a script that needs files (full example)**
```bash
cd .. && mkdir -p test_files && echo "content1" > test_files/doc1.txt && echo "content2" > test_files/doc2.txt && cd scripts
bash prefixAdderScript.sh
```
When asked for the directory, enter: `../test_files`
When asked for the prefix, enter: `backup_`

**Step 5: Verify changes**
```bash
cd .. && ls test_files/ && cd scripts
```

---

## ⚙️ System Requirements

| Requirement | Details |
|------------|---------|
| **Bash** | Version 4.0 or higher |
| **Unix utilities** | `find`, `sort`, `grep`, `wc` |
| **For siteAbvTester.sh** | `curl` must be installed |
| **For gitStatus.sh** | `git` must be installed |

---

## 🎯 Summary

✅ Clone the repository  
✅ Navigate to the `scripts` directory  
✅ Run scripts with `bash scriptName.sh`  
✅ Create necessary files/directories before running (see individual script sections)  
✅ Follow the prompts for any required input

---

**Happy scripting! 🎉**