## Varta - Indian Social Media App

A social media app written in Flutter using Firebase auth,realtime,firestore database and storage.


## Dependencies
<details>
     <summary> Click to expand </summary>
     
* [intl](https://pub.dev/packages/intl)
* [uuid](https://pub.dev/packages/uuid)
* [http](https://pub.dev/packages/http)
* [share](https://pub.dev/packages/share)
* [provider](https://pub.dev/packages/provider)
* [url_launcher](https://pub.dev/packages/url_launcher)
* [google_fonts](https://pub.dev/packages/google_fonts)
* [image_picker](https://pub.dev/packages/image_picker)
* [firebase_auth](https://pub.dev/packages/firebase_auth)
* [google_sign_in](https://pub.dev/packages/google_sign_in)
* [firebase_analytics](https://pub.dev/packages/firebase_analytics)
* [firebase_database](https://pub.dev/packages/firebase_database)
* [shared_preferences](https://pub.dev/packages/shared_preferences)
* [flutter_advanced_networkimage](https://pub.dev/packages/flutter_advanced_networkimage)
     
</details>

## Screenshots

For screenshots, click here: [Screenshots](https://github.com/rohitp934/Varta/tree/master/screenshots)




## Getting started 
* Project setup instructions are given at [Wiki](https://github.com/rohitp934/Varta/wiki/Gettings-Started) section.

## Directory Structure
<details>
     <summary> Click to expand </summary>
  
```
|-- lib
|   |-- helper
|   |   |-- constant.dart
|   |   |-- customRoute.dart
|   |   |-- enum.dart
|   |   |-- routes.dart
|   |   |-- theme.dart
|   |   |-- utility.dart
|   |   '-- validator.dart
|   |-- main.dart
|   |-- model
|   |   |-- chatModel.dart
|   |   |-- feedModel.dart
|   |   |-- notificationModel.dart
|   |   '-- user.dart
|   |-- page
|   |   |-- Auth
|   |   |   |-- forgetPasswordPage.dart
|   |   |   |-- selectAuthMethod.dart
|   |   |   |-- signin.dart
|   |   |   |-- signup.dart
|   |   |   |-- verifyEmail.dart
|   |   |   '-- widget
|   |   |       '-- googleLoginButton.dart
|   |   |-- common
|   |   |   |-- sidebar.dart
|   |   |   |-- splash.dart
|   |   |   |-- usersListPage.dart
|   |   |   '-- widget
|   |   |       '-- userListWidget.dart
|   |   |-- feed
|   |   |   |-- composeTweet
|   |   |   |   |-- composeTweet.dart
|   |   |   |   |-- state
|   |   |   |   |   '-- composeTweetState.dart
|   |   |   |   '-- widget
|   |   |   |       |-- composeBottomIconWidget.dart
|   |   |   |       |-- composeTweetImage.dart
|   |   |   |       '-- widgetView.dart
|   |   |   |-- feedPage.dart
|   |   |   |-- feedPostDetail.dart
|   |   |   '-- imageViewPage.dart
|   |   |-- homePage.dart
|   |   |-- message
|   |   |   |-- chatListPage.dart
|   |   |   |-- chatScreenPage.dart
|   |   |   |-- conversationInformation
|   |   |   |   '-- conversationInformation.dart
|   |   |   '-- newMessagePage.dart
|   |   |-- notification
|   |   |   '-- notificationPage.dart
|   |   |-- profile
|   |   |   |-- EditProfilePage.dart
|   |   |   |-- follow
|   |   |   |   |-- followerListPage.dart
|   |   |   |   '-- followingListPage.dart
|   |   |   |-- profileImageView.dart
|   |   |   |-- profilePage.dart
|   |   |   '-- widgets
|   |   |       '-- tabPainter.dart
|   |   |-- search
|   |   |   '-- SearchPage.dart
|   |   '-- settings
|   |       |-- accountSettings
|   |       |   |-- about
|   |       |   |   '-- aboutTwitter.dart
|   |       |   |-- accessibility
|   |       |   |   '-- accessibility.dart
|   |       |   |-- accountSettingsPage.dart
|   |       |   |-- contentPrefrences
|   |       |   |   |-- contentPreference.dart
|   |       |   |   '-- trends
|   |       |   |       '-- trendsPage.dart
|   |       |   |-- dataUsage
|   |       |   |   '-- dataUsagePage.dart
|   |       |   |-- displaySettings
|   |       |   |   '-- displayAndSoundPage.dart
|   |       |   |-- notifications
|   |       |   |   '-- notificationPage.dart
|   |       |   |-- privacyAndSafety
|   |       |   |   |-- directMessage
|   |       |   |   |   '-- directMessage.dart
|   |       |   |   '-- privacyAndSafetyPage.dart
|   |       |   '-- proxy
|   |       |       '-- proxyPage.dart
|   |       |-- settingsAndPrivacyPage.dart
|   |       '-- widgets
|   |           |-- headerWidget.dart
|   |           |-- settingsAppbar.dart
|   |           '-- settingsRowWidget.dart
|   |-- state
|   |   |-- appState.dart
|   |   |-- authState.dart
|   |   |-- chats
|   |   |   '-- chatState.dart
|   |   |-- feedState.dart
|   |   |-- notificationState.dart
|   |   '-- searchState.dart
|   '-- widgets
|       |-- bottomMenuBar
|       |   |-- HalfPainter.dart
|       |   |-- bottomMenuBar.dart
|       |   '-- tabItem.dart
|       |-- customAppBar.dart
|       |-- customWidgets.dart
|       |-- newWidget
|       |   |-- customClipper.dart
|       |   |-- customLoader.dart
|       |   |-- customProgressbar.dart
|       |   |-- customUrlText.dart
|       |   |-- emptyList.dart
|       |   |-- rippleButton.dart
|       |   '-- title_text.dart
|       '-- tweet
|           |-- tweet.dart
|           '-- widgets
|               |-- parentTweet.dart
|               |-- retweetWidget.dart
|               |-- tweetBottomSheet.dart
|               |-- tweetIconsRow.dart
|               |-- tweetImage.dart
|               '-- unavailableTweet.dart
|-- pubspec.yaml
```
</details>
     


