import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitify/history_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
               onPressed: () {
                 Get.to(() => const HomePage());

    },child: Text("Home page"),),
              OutlinedButton(
                onPressed: () {
                  Get.to(() => const HistoryPage());

                },child: Text("History page"),),
            ],
          ),
        ),
      ),
    );
  }
}


