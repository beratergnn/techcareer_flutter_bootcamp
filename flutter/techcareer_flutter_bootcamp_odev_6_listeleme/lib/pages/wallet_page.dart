import 'package:flutter/material.dart';
import 'package:techcareer_flutter_bootcamp_odev_6_listeleme/constants/colors.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(
          'Cüzdan',
          style: TextStyle(color: textColor),
        ),
        backgroundColor: tabColor,
      ),
      body: Center(),
    );
  }
}
