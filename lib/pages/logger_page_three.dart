import 'package:flutter/material.dart';
import 'custom_logger.dart';

class LoggerPageThree extends StatefulWidget {
  const LoggerPageThree(this.title, {super.key});

  final String title;

  @override
  State<LoggerPageThree> createState() => _LoggerPageThreeState();
}

class _LoggerPageThreeState extends State<LoggerPageThree> {
  final log = logger(LoggerPageThree);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Click one by one to show logs in console'),
              const SizedBox(height: 24),
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
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  log.d('Debug log');
                },
                child: Text('Debug'),
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      backgroundColor: MaterialStatePropertyAll(Colors.black),
                    ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  log.i('Info log');
                },
                child: Text('Info'),
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blueAccent),
                    ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  log.w('Warning log');
                },
                child: Text('Warning'),
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                    ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  log.e('Error log');
                },
                child: Text('Error'),
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                    ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  log.wtf('What a terrible failure log');
                },
                child: Text('WTF'),
                style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                      backgroundColor: MaterialStatePropertyAll(Colors.purple),
                    ),
              ),
            ],
          ),
        ),
      );
}
