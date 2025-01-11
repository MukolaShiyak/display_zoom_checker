import 'package:flutter/material.dart';

import 'package:display_zoom_checker/display_zoom_checker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDisplayZoomed = false;

  @override
  void initState() {
    super.initState();
    _checkZoom();
  }

  void _checkZoom() async {
    _isDisplayZoomed = await DisplayZoomChecker.isDisplayZoomed();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Display Zoom Checker example'),
        ),
        body: Center(
          child: Text('Is Display Zoomed: $_isDisplayZoomed'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _checkZoom,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
