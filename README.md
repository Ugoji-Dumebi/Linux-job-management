# 🧠 Linux Process and Job Management Project

This project was created by **Chukwudumebi Ugoji**, as part of my journey into **DevOps**.  
It demonstrates the fundamentals of **process and job management** in Linux using Bash scripting.



## 🚀 Project Overview

This Bash script automates the creation and management of background jobs and processes.  
It shows how to:

- Start background processes  
- List and manage jobs  
- Bring jobs to the foreground and back  
- Gracefully terminate processes  

This project is part of my foundational DevOps learning under the **Tech4Dev Fellowship Program**.



## 📜 Script Code

```bash
#!/bin/bash
set -m
# Process and Job Management Project
echo "starting two background process..."

sleep 500 &
SLEEP_PID=$!
echo "Started sleep 500 background with PID $SLEEP_PID"

tail -f /dev/null &
TAIL_PID=$!
echo "Started tail -f /dev/null in background with PID $TAIL_PID"

echo "LIST OF JOBS"
jobs

echo "LIST OF PROCESS"
ps -ef

echo "KILLING JOB 1 GRACEFULLY..."
kill -15 %1
ps -ef

echo "KILLING JOB 2 GRACEFULLY..."
kill -15 %2
ps -ef

echo "ALL PROCESS SUCCESSFULLY COMPLETED..."

Key Commands Explained

Command	Description

sleep 500 & : Runs the sleep command in the background for 500 seconds
tail -f /dev/null & :	Starts a dummy background process that keeps running
jobs :	Lists all background jobs currently running
ps -ef :	Lists all system processes and their details
fg %1 :	Brings background job 1 to the foreground
bg %1 :	Sends job 1 back to the background
kill -15 %1 :	Gracefully terminates job n using signal 15 (SIGTERM)



---

🧠 What I Learned

From this project, I learned:

How Linux manages foreground and background jobs

The role of process IDs (PIDs) in monitoring running tasks

The difference between kill and kill -15 (graceful termination)

How to use key process management commands (jobs, ps, fg, bg, kill)


This hands-on practice deepened my understanding of how processes are handled at the system level — a key concept in DevOps automation and server management.


💻 Tech Stack

Operating System: Ubuntu/Linux

Shell: Bash (/bin/bash)

Tools Used: sleep, tail, jobs, ps, kill



---

👩🏽‍💻 Author

Name: Chukwudumebi Ugoji
Fellowship: Tech4Dev womentechsters – DevOps Track
GitHub: @UgojiDumebi
LinkedIn: https://www.linkedin.com/in/chukwudumebi-ugoji/

---

🏁 Acknowledgements

A huge thanks to the Tech4Dev Fellowship and mentors for their guidance in my DevOps journey.
This project marks the beginning of my practical experience in process automation and Linux system management.

