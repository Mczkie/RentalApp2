import 'package:flutter/material.dart';
import 'package:soft_eng/components/features/listcar.dart';

class MyAboutUs extends StatelessWidget {
  const MyAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 36.0,
              onPressed: () {
                Navigator.of((context))
                    .push(MaterialPageRoute(builder: ((context) => MyList())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
