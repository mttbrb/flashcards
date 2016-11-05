import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    _words.shuffle();
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
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Sight Words'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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

  void _soundOutWord() {
    SystemSound.play(SystemSoundType.click);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
           child: new Scaffold(
                  appBar: new AppBar(title: new Text(config.title)),
                  body: new Center(child: new Text('${_words[_counter]}', style: new TextStyle(fontSize: 150.0))),
                  floatingActionButton: new FloatingActionButton(
                                        onPressed: _soundOutWord,
                                        tooltip: 'Increment',
                                        child: new Icon(Icons.speaker),
                                        )), // This trailing comma tells the Dart formatter to use
           onTap: _incrementCounter);
  }
}
