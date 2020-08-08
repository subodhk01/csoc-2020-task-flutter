import 'package:flutter/material.dart';
import './appbar.dart';
import './email_list.dart';
import './compose.dart';
import './misc.dart';

void main() => runApp(
    MaterialApp(
        title: "Smail App",
        //home: SmailApp(),
        initialRoute: "/",
        routes: {
            '/': (context) => SmailApp(),
            '/details': (context) => DetailScreen(),
            '/compose': (context) => ComposeScreen(),
        },
    )  
);

class DetailScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
                onTap: (){
                    Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back, color: Colors.grey[700]),
                )
            ),
            actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.archive, color: Colors.grey[800],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.delete, color: Colors.grey[800],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.mail, color: Colors.grey[800],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(Icons.more_vert, color: Colors.grey[800],),
                )
            ],
            backgroundColor: Colors.white,
            elevation: 0,   
        ),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.white,
            ),
            padding: EdgeInsets.all(10),
            child: Column(
                children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                            children: <Widget>[
                                Flexible(
                                    child: Text('Lets "Learn a Language" this lockdown | Language learning groups', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400), softWrap: true, overflow: TextOverflow.fade,)
                                ),
                                Icon(Icons.star_border, size: 20,)
                            ],
                        ),
                    ),
                    ListTile(
                        contentPadding: EdgeInsets.only(top: 15, left: 5, right: 5),
                        leading: Container(
                            decoration: BoxDecoration(
                                color: getRandomElement(colorList),
                                shape: BoxShape.circle
                            ),
                            child: Padding(
                                padding: const EdgeInsets.only(top: 12, bottom: 10, left: 20, right: 20),
                                child: Text("S", style: TextStyle(color: Colors.white, fontSize: 20),),
                            ),
                        ),
                        title: Text("Student Counselling Services", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),overflow: TextOverflow.ellipsis),
                        subtitle: Row(
                          children: <Widget>[
                            Text("to students.all", style:TextStyle(fontSize: 12), overflow: TextOverflow.ellipsis),
                            Padding(
                                padding: const EdgeInsets.only(left: 2.0),
                                child: Icon(Icons.expand_more, size: 19, color: Colors.grey[800],),
                            ),
                          ],
                        ),
                        trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                                Icon(Icons.reply),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Icon(Icons.more_vert),
                                ),
                            ]
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left:8.0, right:8.0),
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey[300],
                                ),
                                borderRadius: const BorderRadius.all(Radius.circular(7)),
                                boxShadow: [BoxShadow(color: Colors.grey[300], blurRadius: 1.0)  ,]
                            ),
                            child: Table(
                                columnWidths: {
                                    0: FlexColumnWidth(1),
                                    1: FlexColumnWidth(5)
                                },
                                children: [
                                    TableRow(
                                        children:[
                                            TableCell(
                                                child: Padding(
                                                padding: const EdgeInsets.only(top:5.0, bottom: 5.0),
                                                child: Text("From"),
                                                )
                                            ),
                                            TableCell(
                                                child: Padding(
                                                padding: const EdgeInsets.only(top:5.0, bottom: 5.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text(
                                                            "Student Counselling Services IIT(BHU) Varanasi", 
                                                            style:TextStyle(fontSize: 12, color: Colors.grey[700])
                                                        ),
                                                        Text(
                                                            "sakha.scs@iitbhu.ac.in" ,
                                                            style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                                                        )
                                                    ]
                                                ),
                                                )
                                            )
                                        ]
                                    ),
                                    TableRow(
                                        children:[
                                            TableCell(
                                                child: Padding(
                                                padding: const EdgeInsets.only(top:5.0, bottom: 5.0),
                                                child: Text("To"),
                                                )
                                            ),
                                            TableCell(
                                                child: Padding(
                                                padding: const EdgeInsets.only(top:5.0, bottom: 5.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text(
                                                            "students.all", 
                                                            style:TextStyle(fontSize: 12, color: Colors.grey[600])
                                                        ),
                                                    ]
                                                ),
                                                )
                                            )
                                        ]
                                    ),
                                    TableRow(
                                        children:[
                                            TableCell(
                                                child: Padding(
                                                padding: const EdgeInsets.only(top:5.0, bottom: 5.0),
                                                child: Text("Date"),
                                                )
                                            ),
                                            TableCell(
                                                child: Padding(
                                                padding: const EdgeInsets.only(top:5.0, bottom: 5.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text(
                                                            "May 2nd, 2020, 10:40 PM", 
                                                            style:TextStyle(fontSize: 12, color: Colors.grey[700])
                                                        ),
                                                    ]
                                                ),
                                                )
                                            )
                                        ]
                                    ),
                                    TableRow(
                                        children:[
                                            TableCell(
                                                child: Padding(
                                                    padding: const EdgeInsets.only(top:5.0, bottom: 5.0),
                                                    child: Container(
                                                        padding: EdgeInsets.only(right:30),
                                                        child: Icon(Icons.lock, size: 15,)
                                                    ),
                                                )
                                            ),
                                            TableCell(
                                                child: Padding(
                                                padding: const EdgeInsets.only(top:5.0, bottom: 5.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text(
                                                            "Standard encryption (TSL)", 
                                                            style:TextStyle(fontSize: 12, color: Colors.grey[700])
                                                        ),
                                                        Text(
                                                            "View Security Details" ,
                                                            style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                                                        )
                                                    ]
                                                ),
                                                )
                                            )
                                        ]
                                    ),
                                ],
                            ),
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.all(15),
                        child: Flexible(
                            child: Text(
                                "It contains an email list screen as the home screen. On clicking on any email, the full description opens on another page. A button on the home screen allows the user to create and send a new email. After sending the email, the home screen opens automatically and the new list now contains sent email at the top. The home screen also has a search bar to search for any email in the list. On searching, only relevant emails should show up on the screen. The user can also delete any email. (Home screen should update the list instantly after deleting)",
                                style: TextStyle(fontSize: 14)
                            )
                        )
                    )
                ],
            )
        ),
        );
    }
}

class SmailApp extends StatelessWidget{

    @override
    Widget build(BuildContext context){
        return Scaffold(
            //appBar: appbar,
            body: Stack(
                children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 65, left: 8, right: 8, bottom: 0),
                        child: EmailList(context)
                    ),         
                    new Positioned(
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: appbar
                    )
                ],
            ),
            floatingActionButton: floatingButton(context)             
        );
    }
}