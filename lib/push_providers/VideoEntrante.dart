import 'package:flutter/material.dart';

class VideoEntrante extends StatefulWidget {
  VideoEntrante({Key key}) : super(key: key);

  @override
  _VideoEntranteState createState() => _VideoEntranteState();
}

class _VideoEntranteState extends State<VideoEntrante> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('VodeoEntrante'),
      ),
    );
  }
}
