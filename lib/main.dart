import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Je suis pauvre'),
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
  String _pic = "pauvre.jpg";
  String _title = "Je suis pauvre";
  bool _actif = false;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Column(
            children: [
              Text(_counter.toString() + "€"),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Image.asset(
                'assets/images/' + _pic,
                height: 300,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                style: style,
                onPressed: () {
                  setState(() {
                    _counter++;

                    if (_counter >= 35 && _actif != true) {
                      _pic = "riche.png";
                      _title = "Je suis riche";
                      _actif = true;
                    }
                  });
                },
                child: const Text('Faire un don'),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          alignment: Alignment.center,
        ));
  }
}
