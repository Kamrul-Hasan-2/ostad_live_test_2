import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  mySnackBar(context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Styling App',
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Experiment with text styles',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                mySnackBar(context, 'Click Me');
              },
              child: Text('Click Me'),
            ),
            SizedBox(
              height: 20, // Add some spacing between the button and the rich text
            ),
            Text.rich(
              TextSpan(
                text: 'Welcome to ', // Default text style
                children: <TextSpan>[
                  TextSpan(
                    text: 'Flutter!',
                    style: TextStyle(
                      color: Colors.blue, // Blue color for "Flutter!"
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              style: TextStyle(fontSize: 18), // Base text style
            ),
          ],
        ),
      ),
    );
  }
}