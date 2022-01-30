import 'package:flutter/material.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _pagenateText = "Tap to back!";
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () => {Navigator.of(context).pop()},
              child: Text(
                _pagenateText,
                style: TextStyle(fontSize: 32),
              ))
        ]),
      ),
    );
  }
}
