import 'package:flutter/material.dart';

class ComposeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context){
		return Scaffold(
			backgroundColor: Colors.white,
			appBar: AppBar(
				leading: GestureDetector(
					onTap: (){
						Navigator.pop(context);
					},
					child: Padding(
						padding: EdgeInsets.all(8),
						child: Icon(Icons.arrow_back, color: Colors.grey[600]),
					),
				),
				title: Text("Compose", style: TextStyle(color: Colors.grey[800]),),
				actions: <Widget>[
					Padding(
						padding: const EdgeInsets.only(right: 20.0),
						child: Icon(Icons.attachment, color: Colors.grey[700],),
					),
					Padding(
						padding: const EdgeInsets.only(right: 10.0),
						child: Icon(Icons.send, color: Colors.grey[700],),
					),
					Padding(
						padding: const EdgeInsets.only(right: 20.0),
						child: Icon(Icons.more_vert, color: Colors.grey[700],),
					)
				],
				backgroundColor: Colors.white,
				elevation: 0,
			),
			body: ListView(
				children: <Widget> [
					Container(
						padding: EdgeInsets.all(20),
						decoration: BoxDecoration(
							color: Colors.white
						),
						child: Column(
							children: <Widget> [
								Container(
									decoration: BoxDecoration(
										border: Border(
											bottom: BorderSide(
												width: 1,
												color: Colors.grey[300]
											)
										)
									),
									padding: EdgeInsets.only(top:0, left: 5, right: 5, bottom:20),
									child: Row(
										children: <Widget>[
											Expanded(
												flex: 2,
												child: Text("From")
											),
											Expanded(
												flex: 8,
												child: Text("badAss@iitbhu.ac.in")
											)
										],
									)
								),
								Container(
									decoration: BoxDecoration(
										border: Border(
											bottom: BorderSide(
												width: 1,
												color: Colors.grey[300]
											)
										)
									),
									padding: EdgeInsets.only(top:5, left: 5, right: 5, bottom:5),
									child: Row(
										children: <Widget>[
											Expanded(
												flex: 2,
												child: Text("To")
											),
											Expanded(
												flex: 8,
												child: TextField(
													style: TextStyle(fontSize: 14),
													decoration: InputDecoration(
														border: InputBorder.none,
													),
												)
											)
										],
									)
								),
								Container(
									decoration: BoxDecoration(
										border: Border(
											bottom: BorderSide(
												width: 1,
												color: Colors.grey[300]
											)
										)
									),
									padding: EdgeInsets.only(top:5, left: 5, right: 5, bottom:5),
									child: Row(
										children: <Widget>[
											Expanded(
												flex: 10,
												child: Padding(
												padding: const EdgeInsets.only(left: 8.0, right: 8.0),
												child: TextField(
													style: TextStyle(fontSize: 14),
													decoration: InputDecoration(
														border: InputBorder.none,
															hintText: "Subject"
													),
												),
												)
											)
										],
									)
								),
								Padding(
									padding: const EdgeInsets.only(left: 14.0, right: 8.0),
									child: TextField(
										keyboardType: TextInputType.multiline,
										maxLines: null,
										style: TextStyle(fontSize: 14),
										decoration: InputDecoration(
											border: InputBorder.none,
												hintText: "Compose email",
												hintStyle: TextStyle(
													fontSize: 14
												)
										),
									),
								)
							]
						)
			      	),
				]
			)
		);
	}
}
