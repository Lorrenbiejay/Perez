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
      backgroundColor: Colors.black,
      ),
      home: const MyHomePage(title: 'LABORATORY 2'),
      debugShowCheckedModeBanner: false,
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title,),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0), // Add padding to the container
          color: Colors.black, // Set container color to grey
          height: 1000, // Set container height
          width: 1000, // Set container width
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_counter > 0)
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 500,
                          color: Colors.amber,
                          child: Center(child: Icon(Icons.code)), // Icon representing mail
                        ),
                        SizedBox(height: 3),
                        Container(
                          height: 100,
                          color: Colors.amber,
                          child: Center(child: Text('Code')), // Text in the lower part of the column
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 500,
                          color: Colors.green,
                          child: Center(child: Icon(Icons.abc)), // Icon representing time
                        ),
                        SizedBox(height: 3),
                        Container(
                          height: 100,
                          color: Colors.green,
                          child: Center(child: Text('abc')), // Text in the lower part of the column
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 500,
                          color: Colors.blue,
                          child: Center(child: Icon(Icons.email_rounded)), // Icon representing calendar
                        ),
                        SizedBox(height: 3),
                        Container(
                          height: 100,
                          color: Colors.blue,
                          child: Center(child: Text('email')), // Text in the lower part of the column
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}