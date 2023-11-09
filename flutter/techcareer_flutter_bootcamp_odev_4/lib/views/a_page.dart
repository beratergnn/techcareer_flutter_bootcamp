import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_4/views/b_page.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PAGE A'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageB()));
              },
              child: Text('Go to the B Page'),
            ),
          ],
        ),
      ),
    );
  }
}
