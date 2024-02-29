import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Home Page',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Screen',
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
