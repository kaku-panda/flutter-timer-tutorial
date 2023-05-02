import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class Clock extends StatefulWidget{
  const Clock({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState(){
    return _ClockState();
  }
}

class _ClockState extends State<Clock>{
  String _time = '';

  @override
  void initState(){
    Timer.periodic(const Duration(seconds: 1), _onTimer);
    super.initState();
  }

  void _onTimer(Timer timer){
    var now = DateTime.now();
    var formatter = DateFormat('HH:mm:ss');
    var formattedTime = formatter.format(now);
    setState(() => _time = formattedTime);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _time,
      style: const TextStyle(
        fontSize: 60,
        fontFamily: 'IBMPlexMono',
      ),
    );
  }
}