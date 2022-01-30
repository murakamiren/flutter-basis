import 'package:flutter/material.dart';

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () => {Navigator.of(context).pop()},
              child: Text(
                "back",
                style: TextStyle(fontSize: 32),
              ))
        ]),
      ),
    );
  }
}
