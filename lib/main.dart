import 'package:flutter/material.dart';
import 'package:my_first_flutter/TestPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = "Even";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = "Even";
      } else {
        _type = "odd";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [Icon(Icons.account_balance), Text("my first flutter")],
          ),
        ),
        drawer: Drawer(
          child: Center(
            child: Text("Drawer"),
          ),
        ),
        body: Column(
          children: [
            Text("hello world"),
            Text("$_counter"),
            TextButton(
                onPressed: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TestPage();
                      }))
                    },
                child: Text("go to page 1")),
            Text(
              _type,
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                  size: 24.0,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.orange,
                  size: 24.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 24.0,
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter, child: Icon(Icons.add)));
  }
}
