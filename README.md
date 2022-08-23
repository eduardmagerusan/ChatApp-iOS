<p align="center"><img width=12.5% src="https://user-images.githubusercontent.com/84686184/186276585-99db19d3-89bf-4ade-93a6-ab394e5cc660.png"></p>
<h1 align="center">ChatApp</h1>

The application is a real-time chat using Firebase. It allows you send messages to your friends. Just sign up, choose a buddy and start chatting.

## Compatibility

This project is written in Swift 5.0 and requires Xcode 13.

## Sign Up or Login

You should enter a email and password. Password is encrypted after signing up.

<p float="center" align="center">
  <img src="https://user-images.githubusercontent.com/84686184/186278320-ba9b5ca6-5424-415c-883c-1081ea523c15.png" alt="Light apperance" width="300"/>
</p>

## Chatting

Share messages and get them back from your buddies.

<p float="center" align="center">
  <img src="https://user-images.githubusercontent.com/84686184/186279757-cd0baa30-cd83-4206-80a0-c8bd9cdeede7.png" alt="Light apperance" width="300"/>
</p>


## How to run the app

1. Open the FalconMessenger.xcworkspace in Xcode.
2. Change the Bundle Identifier to match your domain.
3. Go to Firebase and create new project.
4. Select "Add Firebase to your iOS app" option, type the bundle Identifier & click continue.
5. Download "GoogleService-Info.plist" file and add to the project. Make sure file name is "GoogleService-Info.plist".
6. Go to Firebase Console, select your project, choose "Authentication" from left menu
7. Select "SIGN-IN METHOD" and enable "Phone" option.
8. Add Firebase storage rules:
```
// Allow read/write access on all documents to any user signed in to the application
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if request.auth != null;
    }
  }
}
```
