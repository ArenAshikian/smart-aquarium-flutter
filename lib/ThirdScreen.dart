import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.red],
            begin: Alignment.topCenter,
            end: Alignment.center,
          ),
        ),
        child: Center(
          child: Text(
            'Third Screen',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}

class ThirdScreen_Previews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ThirdScreen(),
      ),
    );
  }
}
