import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

List<String> _words = [
  "at", "am", "a", "it",
  "an", "in", "I", "on",
  "go", "our", "do", "so",
  "said", "and", "no", "see",
  "look", "the", "is", "has",
  "to", "can", "we", "not",
  "me", "she", "he", "big",
  "you", "my", "yes", "by",
  "little", "for", "here", "did",
  "but", "they", "have", "play",
  "this", "be", "who", "make",
  "away", "what", "get", "will",
  "went", "into", "jump", "saw",
  "that", "as", "up", "like",
  "too", "are", "was", "with",
  "well", "or", "his", "her",
  "dad", "mom", "if"
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sight Words',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting
        // the app, try changing the primarySwatch below to Colors.green
        // and press "r" in the console where you ran "flutter run".
        // We call this a "hot reload". Notice that the counter didn't
        // reset back to zero -- the application is not restarted.
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: 'Sight Words'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful,
  // meaning that it has a State object (defined below) that contains
  // fields that affect how it looks.

  // This class is the configuration for the state. It holds the
  // values (in this case the title) provided by the parent (in this
  // case the App widget) and used by the build method of the State.
  // Fields in a Widget subclass are always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter >= _words.length) _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that
        // was created by the App.build method, and use it to set
        // our appbar title.
        title: new Text(config.title),
      ),
      body: new Center(
        child: new Text('${_words[_counter]}', style: new TextStyle(fontSize: 200.0)),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma tells the Dart formatter to use
      // a style that looks nicer for build methods.
    );
  }
}
