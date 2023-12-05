import 'package:flutter/material.dart';
import 'package:soft_eng/components/features/carcomponents.dart';

class MySettings extends StatelessWidget {
  const MySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 36.0,
                  onPressed: () {
                    Navigator.of(context).pop(
                      MaterialPageRoute(
                        builder: ((context) => MyListCar()),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Settings',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
