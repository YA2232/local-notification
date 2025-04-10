import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String paylod;
  const DetailsScreen({required this.paylod, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              paylod,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          paylod == "CBUM"
              ? Image.asset("assets/images/true.gif")
              : Image.asset("assets/images/false.gif")
        ],
      ),
    );
  }
}
