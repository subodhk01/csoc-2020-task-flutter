import 'package:flutter/material.dart';
import './misc.dart';

Widget EmailList(BuildContext context){
    final mails = [
        ["Rahul Parmar","Hello Bro Whats up", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Suryansh Tomar", "What is uppp", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","0"],
        ["Aryaman Kutta", "Aur Rotlu whats up", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Sorab Nanwi", "PUBG pero", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Varshit Modi", "Heckar boii", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","0"],
        ["Rahul Parmar","Hello Bro Whats up", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Suryansh Tomar", "What is uppp", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Aryaman Kutta", "Aur Rotlu whats up", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","0"],
        ["Sorab Nanwi", "PUBG pero", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Varshit Modi", "Heckar boii", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","0"],
        ["Rahul Parmar","Hello Bro Whats up", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","0"],
        ["Suryansh Tomar", "What is uppp", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Aryaman Kutta", "Aur Rotlu whats up", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Sorab Nanwi", "PUBG pero", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","0"],
        ["Varshit Modi", "Heckar boii", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Rahul Parmar","Hello Bro Whats up", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","0"],
        ["Suryansh Tomar", "What is uppp", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Aryaman Kutta", "Aur Rotlu whats up", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","0"],
        ["Sorab Nanwi", "PUBG pero", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
        ["Varshit Modi", "Heckar boii", "Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up Aur Rotlu whats up","1"],
    ];
    
    return ListView.builder(
        itemCount: mails.length + 1,
        itemBuilder: (context, index){
            if (index==0){
                return Padding(
                    padding: EdgeInsets.only(left: 10, top: 3),
                    child: Text("SENT", style: TextStyle(fontSize: 11, letterSpacing: 1)),
                );
            }
            var starColor, starIcon;
            if(mails[index-1][3] == "1"){
                starIcon = Icons.star;
                starColor = Colors.yellow;
            } else {
                starIcon = Icons.star_border;
                starColor = Colors.grey;
            }
            return ListTile(
                onTap: (){Navigator.pushNamed(context, '/details');},
                leading: Container(
                    decoration: BoxDecoration(
                        color: getRandomElement(colorList),
                        shape: BoxShape.circle
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 10, left: 15, right: 15),
                        child: Text(mails[index-1][0][0], style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                ),
                title: Padding(
                    padding: EdgeInsets.only(top:12, bottom:12),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Text("To: " + mails[index-1][0], style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                            Text(mails[index-1][1], style: TextStyle(fontSize: 11, color: Colors.grey[800]), overflow: TextOverflow.ellipsis,),
                            Text(mails[index-1][2], style: TextStyle(fontSize: 11, color: Colors.grey[700]), overflow: TextOverflow.ellipsis,)
                        ]
                    )                  
                ),
                trailing: Column(
                    children: <Widget> [
                        Text("24 April" ,style: TextStyle(fontSize: 11)),
                        Padding(
                            padding: EdgeInsets.only(top:10),
                            child: Icon(
                                starIcon, 
                                color: starColor, 
                                size: 20
                            ), 
                        )

                    ]
                ),
            );
        }
    );
}