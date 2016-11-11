# Delirium Tracker

## CIS 557 Project
Online platform to help Providers track Patients' activities in hospital. Data collected from AndroidWear watches is visualized for Providers to see recent activity and help diagnose potential delirium.

## Current Status
Heroku: https:/deliriumtracker.herokuapp.com/

## Team Members:
Andrew Bright  
Akshary Chandrasekhar  
Deeptanshu Kapur  
PM: Minsu Kim

## Pages

### Sign-Up
Sign-Up allows users to sign up and redirects user to user page

### Login
Allows users to login to their accounts

### users/:id 
Viewing details of a user account

##Features:
TODO: update latest features

##API
Send POST request to /api
Include the ContentType: application/json header
Format JSON:
{
    "time": "1000",
    "user_id": "3",
    "x": "0",
    "y": "0",
    "z": "0"
}
