# LeetCode Solutions

This repository contains my LeetCode problem-solving journey, including both algorithmic (Python) and database (SQL) solutions. It reflects consistent practice and preparation for technical interviews.

---

## 📊 Overview

* Total Problems Solved: 77+
* Languages: Python, SQL
* Focus Areas: Data Structures, Algorithms, SQL Queries

---

## 🔗 LeetCode Profile

https://leetcode.com/himanidadem

---

## 🚀 Syncing LeetCode to GitHub (Guide)

This repository is synced using a combination of tools to support both past and future submissions.

### 🔹 1. Backfill Past Submissions

To sync previous LeetCode submissions:

* Tool: **glsync**
* Fetches submissions and commits them using original timestamps

#### Steps:

1. Install Go
2. Install glsync:

   ```
   go install github.com/ahmed-e-abdulaziz/glsync@latest
   ```
3. Add to PATH:

   ```
   export PATH=$PATH:$(go env GOPATH)/bin
   ```
4. Get your LeetCode session cookie (via browser DevTools)
5. Run:

   ```
   glsync -lc-cookie="YOUR_COOKIE" -repo-url="YOUR_REPO_URL"
   ```

⚠️ Important:

* Set Git email before running:

  ```
  git config --global user.email "your_email@gmail.com"
  ```
* Use GitHub Personal Access Token (PAT) instead of password

---

### 🔹 2. Auto Sync Future Submissions

To automatically sync new accepted solutions:

* Tool: **LeetSync (Chrome Extension)**

#### Steps:

1. Install LeetSync
2. Open LeetCode and log in
3. Connect GitHub
4. Select your repository

Now:

* Every **Accepted** submission is automatically pushed to GitHub

---


## 🎯 Purpose

This repository serves as:

* A record of my problem-solving practice
