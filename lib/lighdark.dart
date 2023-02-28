import 'package:flutter/material.dart';
import 'package:get/get.dart';

class lightDarkThem extends StatelessWidget {
  const lightDarkThem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog tutorial'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text('Dialog box'),
                subtitle: Text('subscribe to my channel'),
                onTap: () {
                  Get.defaultDialog(
                      title: 'AlertDialog',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      titlePadding: EdgeInsets.symmetric(vertical: 20),
                      middleText: 'are sure to learn the get x ',
                      confirm: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('ok')),
                      confirmTextColor: Colors.white,
                      textCancel: 'cancel');
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text('Bottom sheet '),
                subtitle: Text('subscribe to my channel'),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text('Light them mode '),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.light_mode),
                            title: Text('dark theme mode '),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
