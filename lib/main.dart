import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:get/get.dart';

import 'lighdark.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: lightDarkThem(),
    );
  }
}
