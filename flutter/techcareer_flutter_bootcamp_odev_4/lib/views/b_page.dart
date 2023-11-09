import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_4/views/y_page.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE B'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageY()));
              },
              child: Text('Go to the Y Page'),
            ),
          ],
        ),
      ),
    );
  }
}
