# Flutter Web App 

This is a **Flutter Web** application designed to run on **Ubuntu (Linux) and ChromeOS**.
This application can run on Windows/Linux/ChromeOs/MacOS.

# Instructions on how to run the application on Ubuntu:

## Prerequisites

Before running the application, ensure you have the follsowing dependencies installed.

## **1. Install Flutter**
bash
sudo apt update
sudo apt install curl git unzip xz-utils libglu1-mesa  

curl -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.16.0-stable.tar.xz 
tar xf flutter_linux_3.16.0-stable.tar.xz
export PATH="$PWD/flutter/bin:$PATH"  
flutter doctor 

! The result of the last command should be similar to:

Running flutter doctor...
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.29.0, on Ubuntu 20.04 (LTS), locale en)
[!] Android toolchain - develop for Android devices
[✓] Chrome - develop for the web
[!] Android Studio (not installed)
[!] Linux toolchain - develop for Linux desktop
[✓] VS Code (version 1.96)
[✓] Connected device (1 available)
[✓] Network resources

Doctor found issues in 3 categories.

! Configure a text editor or IDE
  A good option: Visual Studio Code 1.86 or later with the Flutter extension for VS Code. 
