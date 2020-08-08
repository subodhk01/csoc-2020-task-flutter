import 'package:flutter/material.dart';
import 'dart:ui' as ui;

var appbar = new AppBar(
        title: Container (
            child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        icon: Icon(Icons.menu, color: Colors.grey[800],),
                        border: InputBorder.none,
                        hintText: "Search in emails",  
                        hintStyle: TextStyle(color: Colors.grey[700])
                    ),
                ),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1,
                    color: Colors.grey[300],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 4.0)  ,]
            ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 10.00,
    );

Widget floatingButton(BuildContext context){
    return FloatingActionButton(
        onPressed: (){
            Navigator.pushNamed(context, "/compose");
        },
        child: ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (Rect bounds) {
                return ui.Gradient.linear(
                Offset(4.0, 24.0),
                Offset(24.0, 4.0),
                [
                    Colors.orange,
                    Colors.red,
                ],
                );
            },
            child: Icon(Icons.add, size: 43,)
        ),
        backgroundColor: Colors.white,
        elevation: 6,
        foregroundColor: Colors.red,
    );
}