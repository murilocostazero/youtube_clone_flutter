import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'Home.dart';

void main() {
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => MaterialApp(
  //       locale: DevicePreview.locale(context), // Add the locale here
  //       builder: DevicePreview.appBuilder, // Add the builder here
  //       home: Home(),
  //     ),
  //   ),
  // );

  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}
