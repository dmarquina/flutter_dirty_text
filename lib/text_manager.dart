import 'package:flutter/material.dart';
import './text_output.dart';

class TextManager extends StatefulWidget {
  final String initialText;

  TextManager(this.initialText);

  @override
  _TextManagerState createState() => _TextManagerState();
}

class _TextManagerState extends State<TextManager> {
  String _sexyTexty = 'Dirty Sexy Texty';

  void _dirtyText() {
    setState(() {
      _sexyTexty = 'Really ' + _sexyTexty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter 1st Assessment'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextOutput(_sexyTexty),
            ],
          )),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _dirtyText(),
            tooltip: 'Dirty Text',
            child: Icon(Icons.blur_on),
          ),
        );
  }
}
