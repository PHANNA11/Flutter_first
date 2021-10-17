import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/classModel.dart';

// ignore: unused_import
import 'package:flutter_application_1/Pages/listModel.dart';

class ItemCard extends StatefulWidget {
  final VillaModel list;
  const ItemCard({required this.list});
  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  var name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
        centerTitle: true,
        title: Text("Details Model "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              // flex: 3,
              child: Column(
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(''),
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.blue[500],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Model:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                        Text(" Price\$:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                        Text(" Locatoin :",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                        Text(" Duretion :",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 15),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Container(
            //   height: 180,
            //   width: double.infinity,
            //   color: Colors.red,
            // ),
          ],
        ),
      ),
    );
  }
}
