#!/bin/bash
ansible all -a "rm -r ironfish-autodeposit" -u root
ansible all -a "git clone https://github.com/JuManjey/ironfish-autodeposit.git" -u root
ansible all -a "chmod +x ironfish-autodeposit/autodeposit.py" -u root
ansible all -a "systemctl enable cron" -u root
ansible all -a "systemctl start cron" -u root
ansible all -a "systemctl status cron" -u root
