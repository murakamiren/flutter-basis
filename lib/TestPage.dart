import 'package:flutter/material.dart';
import 'package:my_first_flutter/TestPage2.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _pagenateText = "Tap to next page!";
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: TextButton(
            onPressed: () => {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return TestPage2();
                  }))
                },
            child: Text(
              _pagenateText,
              style: TextStyle(fontSize: 32),
            )),
      ),
    );
  }
}
