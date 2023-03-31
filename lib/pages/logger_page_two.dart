import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoggerPageTwo extends StatefulWidget {
  const LoggerPageTwo({super.key, required this.title});

  final String title;

  @override
  State<LoggerPageTwo> createState() => _LoggerPageTwoState();
}

class _LoggerPageTwoState extends State<LoggerPageTwo> {
  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 3,
      lineLength: 50,
    ),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Text('Click on + button'),
        ),
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
      );
}
