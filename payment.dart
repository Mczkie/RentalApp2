import 'package:flutter/material.dart';
import 'package:soft_eng/components/features/carcomponents.dart';

class MyPayment extends StatelessWidget {
  const MyPayment({super.key});

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
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyListCar()),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Payment',
                      textAlign: TextAlign.center,
                    ),
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
