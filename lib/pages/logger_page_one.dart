import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class LoggerPageOne extends StatefulWidget {
  const LoggerPageOne({super.key, required this.title});

  final String title;

  @override
  State<LoggerPageOne> createState() => _LoggerPageOneState();
}

class _LoggerPageOneState extends State<LoggerPageOne> {
  final logger = Logger();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(child: Text('Click on + button')),
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
      );
}
