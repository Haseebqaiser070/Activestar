import 'package:activestar/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/appcontroller.dart';

void main() {
  Get.put(
    AppController(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activstar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
