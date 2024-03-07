import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green.withOpacity(0.3),
        child: Center(
          child: Text(
            'Fifth Screen',
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

class FifthScreen_Previews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FifthScreen(),
      ),
    );
  }
}
