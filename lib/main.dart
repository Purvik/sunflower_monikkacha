import 'package:flutter/material.dart';
import 'package:sunflower/pages/dashboard/dashboard.dart';
import 'package:sunflower/pages/home/home_page.dart';
import 'package:sunflower/services/api_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  init () {
    ApiService.init();
  }

  @override
  Widget build(BuildContext context) {
    init();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(),
    );
  }
}

