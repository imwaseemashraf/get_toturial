import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get X Tutorial"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get X SnackBar',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            Text(
              'Get X SnackBar Position top,bottom ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            Text(
              'Get X SnackBar duration ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'waseem ashraf',
            "subscribe to y youtube channel",
            duration: Duration(seconds: 2),
            borderRadius: 12,
            margin: EdgeInsets.only(bottom: 100, left: 20, right: 20),
            backgroundColor: Colors.grey,
            snackPosition: SnackPosition.BOTTOM,
            padding: EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
            icon: Icon(Icons.person),
          );
        },
        child: Text("click"),
      ),
    );
  }
}
