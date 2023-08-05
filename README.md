# Rick and Morty - API
Flutter's application about the show, Rick and Morty; the application has 2 core views, characters, and episodes of the television show.
We work using the API [The Rick and Morty API](https://rickandmortyapi.com/); using clean architecture, state management with Bloc State, and automatic code generation using libraries such as Freezed and Json Serializable

> ## Getting Started
- [SDK Verion](https://github.com/jorgecasanovadev/rick_and_morty_api#sdk-version): SDK version
- [How to use](https://github.com/jorgecasanovadev/rick_and_morty_api/tree/main#how-to-use): Initialize Rick and Morty API
- [Libraries and Tools](https://github.com/jorgecasanovadev/rick_and_morty_api#libraries--tools-used): Libraries and tools used
- [Screenshots](https://github.com/jorgecasanovadev/rick_and_morty_api/tree/main#how-to-use): Screenshots of the app views


<hr align"center">

> ### SDK Version
```dart
~ % flutter --version
Flutter 3.10.5 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 796c8ef792 (8 weeks ago) • 2023-06-13 15:51:02 -0700
Engine • revision 45f6e00911
Tools • Dart 3.0.5 • DevTools 2.23.1

~ % flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.10.5, on macOS 13.5 22G74 darwin-arm64, locale en-US)
[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
[✓] Xcode - develop for iOS and macOS (Xcode 14.3.1)
[✓] Chrome - develop for the web
[✓] Android Studio (version 2022.2)
[✓] VS Code (version 1.81.0)
[✓] Connected device (3 available)
[✓] Network resources

• No issues found!
```
<hr align"center">

> ### How to Use 

**Step 1: 🧑🏻‍💻**
- Download or clone this repo by using the link below:
```
git@github.com:jorgecasanovadev/rick_and_morty_api.git
```
```
https://github.com/jorgecasanovadev/rick_and_morty_api.git
```
**Step 2: 🤓**
- Go to the project root and execute the following command in the console to get the required dependencies: 
```
flutter clean
flutter pub get 
```
**Step 3: 🧙🏼‍♂️**
- This project works with code generation, execute the following command to generate files:
```
flutter packages pub run build_runner build --delete-conflicting-outputs
```
<hr align"center">


> ### Libraries & Tools Used

* [Dio](https://github.com/flutterchina/dio) (HTTPs requests)
* [Bloc](https://pub.dev/packages/bloc) (State management)
* [Flutter_Bloc](https://pub.dev/packages/flutter_bloc) (Connect reactive data with the UI)
* [Flutter_Logs](https://pub.dev/packages/flutter_logs) (Capture and management of logs)
* [Auto_Route](https://pub.dev/packages/auto_route) (Declarative routing solution)
* [Freezed](https://pub.dev/packages/freezed) (Code generation for immutable classes)
* [Json Serialization](https://pub.dev/packages/json_serializable) (Automatically generate code converting JSON)
* [Easy_Localization](https://pub.dev/packages/easy_localization) (Easy and fast internationalizing and localization)
<hr align"center">

> ### Screenshot Screens
#### Home Screen

<img align="left" height="300em" width="250em" src="./screenshots/home_screen.png" alt="home-screen">

- This is the first screen inside of the app.
- Redirected to Characters-Screen and Episodes-Screen.
```
ui/
|- modules/
   |- home/
      |- home_screen.dart
```
<br>
<br>
<br>
<br>
<br>
<hr align"center">


#### Character Screen

<img align="left" height="300em" width="250em" src="./screenshots/characters_screen.png" alt="characters-screen">

- The characters screen shows a list of the characters of the tv-show.
- Search field to search for a specific character.
- Each character card redirects to a full info view screen of the same character.
```
ui/
|- modules/
   |- characters/
      |- bloc/
         |- character_bloc.dart
         |- character_event.dart
         |- character_state.dart
      |- model/
         |- character_model.dart
      |- views/
         |- character_card.dart
         |- character_view.dart
      |- characters_screen.dart
```
<hr align"center">


#### Episodes Screen

<img align="left" height="300em" width="250em" src="./screenshots/episodes_screen.png" alt="episodes-screen">

- The episodes screen shows a list of the episodes of the tv-show. (Available to the Second Season)
- Each episode card redirects to a full info view of the same character. ("Coming soon")
```
ui/
|- modules/
   |- episodes/
      |- bloc/
         |- episode_bloc.dart
         |- episode_event.dart
         |- episode_state.dart
      |- model/
         |- episode_model.dart
      |- views/
         |- episode_card.dart
      |- characters_screen.dart
```
<hr align"center">
<br>


> ### Getting started with Flutter
This project is a starting point for a Flutter application.
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
