import 'package:flutter/material.dart';
import 'package:intel/design_test_screen.dart';
import 'package:intel/home_screen.dart';
import 'drawer_screen.dart';
import'userregistration.dart';

class DesignLayoutScreen extends StatefulWidget {

  @override
  _DesignLayoutScreenState createState() => _DesignLayoutScreenState();
}

class _DesignLayoutScreenState extends State<DesignLayoutScreen> with SingleTickerProviderStateMixin {
//  @override
// _LayoutScreenState createState() => _LayoutScreenState();
  AnimationController _controller;
  final Duration duration =Duration(milliseconds: 300);
  @override
  void initState() {
    _controller = AnimationController(
        duration:duration,
        vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inter intel'),
      ),
      body: Stack(
                children: [
                  DrawerScreen(controller:_controller ),
          DesignScreen(controller: _controller, duration: duration,),



        ],),
    );
  }
}




