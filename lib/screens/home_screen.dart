import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text('Bloc Counter App', style: TextStyle(fontWeight: .bold)),
        centerTitle: true,
      ),
    );
  }
}
