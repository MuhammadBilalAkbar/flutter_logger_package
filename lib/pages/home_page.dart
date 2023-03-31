import 'package:flutter/material.dart';
import 'package:flutter_logger_package/pages/logger_page_two.dart';
import '/pages/logger_page_one.dart';
import '/pages/logger_page_three.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoggerPageOne(title: 'Simple Loggers')),
                ),
                child: Text('Logger Page One'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoggerPageTwo(title: 'Customized Loggers 1')),
                ),
                child: Text('Logger Page Two'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoggerPageThree('Customized Loggers 2')),
                ),
                child: Text('Logger Page Three'),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      );
}
