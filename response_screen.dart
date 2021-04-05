import 'package:flutter/material.dart';
import 'package:intel/response_json_fetch.dart';
import'userregistration.dart';

class ResponseScreen extends StatefulWidget {
  final AnimationController controller;
  final Duration duration;

  const ResponseScreen({
    Key key, this.controller, this.duration})
      : super(key: key);
  @override
  _ResponseScreenState createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {

  bool menuOpen = false;
  Animation<double> _scaleAnimation;
  @override
  Widget build(BuildContext context) {
    if (_scaleAnimation == null){
      _scaleAnimation = Tween<double>(
          begin: 1,
          end:0.8).animate(widget.controller);
    }
    var size = MediaQuery.of(context).size;
    return AnimatedPositioned(
      duration: widget.duration,
      top:0,
      bottom: 0,
      left: menuOpen ? 0.6* size.width: 0,
      right: menuOpen ? -0.4* size.width: 0,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          decoration:BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(30)) ,
          //color: Colors.white,

          child: Column(


            children:<Widget> [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  !menuOpen ? IconButton(
                    icon:Icon(Icons.menu) ,
                    onPressed: (){
                      setState(() {
                        widget.controller.forward();
                        menuOpen = true;
                      });
                    },
                    color: Colors.blueAccent,):IconButton(
                    icon:Icon(Icons.arrow_back_ios) ,
                    onPressed: (){
                      setState(() {
                        widget.controller.reverse();
                        menuOpen = false;
                      });
                    },
                    color: Colors.blueAccent,),
                  IconButton(
                      icon:Icon(Icons.notifications_active),
                      onPressed: null,
                      color: Colors.blueAccent)
                ],),




              ResponseFetch(),
            ],
          ),


        ),
      ),
    );
  }
}
