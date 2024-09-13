import 'package:flutter/material.dart';
import 'package:flutter_default/colors.dart';

class DollarPage extends StatelessWidget {
  const DollarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Text(
          'Dollar Page',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: mainFontColor,
          ),
        ),
      ),
    );
  }
}
