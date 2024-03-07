import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.withOpacity(0.5),
        child: Center(
          child: Text(
            'Fourth Screen',
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

class FourthScreen_Previews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FourthScreen(),
      ),
    );
  }
}
