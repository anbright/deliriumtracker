# Delirium Tracker

## CIS 557 Project
Online platform to help Providers track Patients' activities in hospital. Data collected from AndroidWear watches is visualized for Providers to see recent activity and help diagnose potential delirium.

## Current Status
Deployed on heroku: http://deliriumtracker.herokuapp.com
Monitoring with NewRelic

## Team Members:
Andrew Bright  
Akshary Chandrasekhar  
Deeptanshu Kapur  
PM: Minsu Kim

## Pages

### Dashboard
View the research ids of current patients and add/remove patients to follow
route: /users/:id

### Patient
View the accelerometer and heartrate data of a particular patient
/patient/:id for accelerometer dat

### Sign-Up
Sign-Up allows users to sign up and redirects user to user page

### Login
Allows users to login to their accounts



##API
### Endpoints:
Accelerometer data -> /api/accelerometer  
Heartrate data -> /api/heartrate  

### Format: JSON post request

Headers:
Content-Type:application/json
Authentication: Token token=1234566789

{
  "time": "1000",
  "user_id": "1",
  "x": "-9.8",
  "y": "4.78",
  "z":"1.00"
}

Create apikey in rails with ApiKey.create! command in rails console


