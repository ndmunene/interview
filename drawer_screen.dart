

import 'package:flutter/material.dart';
import 'package:intel/response_layout_screen.dart';
import 'design_layout_screen.dart';
import 'dictonary_layout_screen.dart';
import 'layouts_screen.dart';

class DrawerScreen extends StatefulWidget {

  final AnimationController controller;

  const DrawerScreen({Key key, this.controller}) : super(key: key);
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final Duration duration =Duration(milliseconds: 300);
  @override
  void initState() {
    _controller = AnimationController(
        duration:duration,
        vsync: this);
    super.initState();
  }
  Animation<double>_scaleAnimation;
  Animation<Offset>_slideAnimation;
  @override
  Widget build(BuildContext context) {
    if (_scaleAnimation == null){
      _scaleAnimation = Tween<double>(begin: 0.6, end: 1).animate(widget.controller);    }
   if (_slideAnimation ==null){_slideAnimation= Tween<Offset>
     (begin: Offset(-1,0), end:Offset(0,0)).animate(widget.controller);}
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
          child: Container(
          color: Colors.deepPurple,
          padding: EdgeInsets.symmetric(horizontal: 14),
              child:ListView(
                  children: <Widget>[

                    ListTile(
                     leading: Icon(Icons.info,),
                      title:  Text('info',
                        style:TextStyle(
                            fontSize: 18, color:
                            Colors.white),),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LayoutScreen()
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.supervised_user_circle_rounded,),
                      title: Text('Design',
                        style:TextStyle(
                            fontSize: 18,
                            color: Colors.white),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>DesignLayoutScreen()
                          ),
                        );
                      },),
                    ListTile(
                      leading: Icon(Icons.restore_outlined,),
                      title: Text('Response',
                        style:TextStyle(
                            fontSize: 18,
                            color: Colors.white),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>ResponseLayoutScreen()
                          ),
                        );
                      },),
                    ListTile(
                      leading: Icon(Icons.book_online,),
                      title: Text('Dictonary',
                        style:TextStyle(
                            fontSize: 18,
                            color: Colors.white),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>DictonaryLayoutScreen()
                          ),
                        );
                      },)

                  ]



      ),


    ),
        ),
    );
  }
}
