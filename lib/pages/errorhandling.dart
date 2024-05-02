import 'package:flutter/material.dart';

class ErrorHandling extends StatelessWidget {
  const ErrorHandling({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
      body: Center(child: Text("Sorry! We're unable to fetch that item")),
    );
  }
}
