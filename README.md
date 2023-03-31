## 1. Research: Flutter Logger Package

- Keywords:
    - logger package in flutter
    - flutter logger example
    - flutter logs command
    - package: logging
    - flutter logging best practices
    - flutter log to logcat
    - dart logging
    - flutter log to console
    - flutter logger to file
    - flutter logger
    - flutter log to console
    - flutter developer log
    - flutter log in release mode
    - flutter print to console
    - flutter print log
    - flutter release log
- Video Title: Logger Package in Flutter - Flutter print logs to console in debug and release mode
  for developers

## 2. Research: Competitors

**Flutter Videos/Articles**

- 8.9K: https://www.youtube.com/watch?v=GUi0n9c33os
- 15K: https://www.youtube.com/watch?v=c5CwHXj21xw
- 755: https://www.youtube.com/watch?v=MZBIiWw4QAI
- 299: https://www.youtube.com/watch?v=uLIPwqyweAM
- https://pub.dev/packages/logger
- https://blog.logrocket.com/flutter-logging-best-practices/
- https://allperen.medium.com/how-to-setup-logging-in-flutter-ec35a4b11f8d
- https://medium.com/flutter-community/a-guide-to-setting-up-better-logging-in-flutter-3db8bab2000e

**Android/Swift/React Videos**

- 39K: https://www.youtube.com/watch?v=smOzLSTaso0
- 12K: https://www.youtube.com/watch?v=-cCG3BAFzUU
- 25K: https://www.youtube.com/watch?v=ZAqnJQn7xp4
- 6.9K: https://www.youtube.com/watch?v=Ac4MguvUO7M
- 2.1K: https://www.youtube.com/watch?v=0etjm30txxw
- 11K: https://www.youtube.com/watch?v=oGEvkonm-Bg
- 21K: https://www.youtube.com/watch?v=zOmQPGo0Jlw
- https://developer.android.com/studio/debug/logcat
- https://noveogroup.github.io/android-logger/
- https://www.ibm.com/docs/en/SSHS8R_8.0.0/com.ibm.worklight.apiref.doc/html/refjava-worklight-android-native/html/com/worklight/common/Logger.html?view=kc
- https://swiftpackageindex.com/apple/swift-log
- https://swiftpackageindex.com/DaveWoodCom/XCGLogger
- https://nshipster.com/swift-log/
- https://www.npmjs.com/react-native-logger
- https://snyk.io/advisor/npm-package/@react-native-community/cli-tools/functions/%40react-native-community%2Fcli-tools.logger.debug
- https://topdigital.agency/logging-in-react-native-all-you-need-to-know/

**Great Features**

- Logger prints beautiful logs to easily debug your app and track the errors and warning of your
  flutter app.
- You can find more feature
  at [https://pub.dev/documentation/logger/latest/](https://pub.dev/documentation/logger/latest/).

**Problems from Videos**

- Question: How do we see these logs in production after deploying in Android or IOS platforms?
  <br/> Answer: We use Google cloud logging. You can add an addition log ouput that writes to cloud
  logging then you can look at the logs on there.
- Question: How can I get logs from a live app running on users device with firebase as backend?
  <br/>Answer: You should use Cloud Logging and wrap it in a service. Then you can create an
  additional LogOutput and when the log function is called you send it to your Cloud Logging
  service.

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/71388853/how-to-use-logger-in-your-flutter-project

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. In this video, you will learn logger which prints beautiful logs to easily debug errors in your
   app.
2. Main points:
    - Simple logger with `PrettyPrinter`
    - Customized logger
3. By using this package, you can print beautiful logs in console of your running project.

**The Structured Main Content**

1. First of all, run `dart pub add logger` to add this package in your project's `pubspec.yaml`
   file and import `import 'package:logger/logger.dart';` to use wherever you want to use in your
   project.
2. `my_app.dart` contains theme properties of app and it calls `HomePage()`.
3. `home_page.dart` contains the buttons for logger page one, two and three.
4. In `logger_page_one.dart`, initialize logger package `final logger = Logger();` and use it
   in `onPressed` property of `FloatingActionButton` like this:
    ```dart 
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            logger.v('Level.verbose');
            logger.d('Level.debug');
            logger.i('Level.info');
            logger.w('Level.warning');
            logger.e('Level.error');
            logger.wtf('Level.wtf');
          },
          child: const Icon(Icons.add),
        ),
    ```

- Logger has six types of logs to show in console. These are `verbose`, `debug`, `info`, `warning`
  , `error` and `wtf` as mentioned in above code.

5. In `logger_page_two.dart`, initialize logger with following properties:

```dart

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 3,
    lineLength: 50,
  ),
);
```

- Other properties of `Logger` are `filter`, `level` and `output`. If you hover Logger you can
  see all its properties.
- `level` property is according to enums arrangement if you click on Level here
  -> `level: Level.warning,`. If the level is set to `warning`, then the logs of warning and below
  warning will only be shown in console.
- `PrettyPrinter` is by default printer of logger. Other printer are `SimplePrinter`
  , `LogfmtPrinter`, `PrefixPrinter` and `HybridPrinter`. The last two use all types of printers in
  it.
- FloatingActionButton code:

```dart 

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // 2nd property is optional
            logger.v('Level.verbose', 'Verbose Message here');
            logger.d('Level.debug', 'Debug Message here');
            logger.i('Level.info', 'Info Message here');
            logger.w('Level.warning', 'Warning Message here');
            logger.e('Level.error', 'Error Message here');
            logger.wtf('Level.wtf', 'What a Terrible Failure Message here');
          },
          child: const Icon(Icons.add),
        ),
```

- First property of logger.logLevel is `message` which is required. But second property `error` is
  optional in is logLevel.

6. `logger_page_three.dart` uses `custom_logger.dart` in which we create our own custom logger.

- Code of `custom_logger.dart` is following:

```dart
import 'package:logger/logger.dart';

final logger = (Type type) =>
    Logger(
      printer: CustomLogPrinter(type.toString()),
    );

class CustomLogPrinter extends LogPrinter {
  final String className;

  CustomLogPrinter(this.className);

  @override
  List<String> log(event) {
    final color = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;

    return [color!('$emoji: $className: $message')];
  }
}

```

`CustomLogPrinter` extends `LogPrinter` and overrides its `log` method which return list of string.
<br/> `CustomLogPrinter` requires the className to show from which class is the logger showing in
console.
<br/> `CustomLogPrinter` is then called in printer property of `Logger`.

- logger_page_three.dart imports `import 'custom_logger.dart';` and initializes the logger
  as `final log = logger(LoggerPageThree);` Then this `log` var is used in every button like
  following code:

```dart 
ElevatedButton(
                onPressed: () {
                  log.v('Verbose log');
                },
                child: Text('Verbose'),
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blueGrey),
                    ),
              ),
```

Only change the logLevel for other levels of log to show them in console.