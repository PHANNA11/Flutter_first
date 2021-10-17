import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/listModel.dart';

import 'CustomIcon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amberAccent,
                backgroundImage: NetworkImage(
                    'https://z-p3-scontent.fpnh5-3.fna.fbcdn.net/v/t1.6435-9/190913267_1032442307285324_4199774651634338693_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEyHb-pUsAvPjnmOu8nVmH88brdTUWhSgzxut1NRaFKDOuLHhpPC4O1InDLYx-IoK0NAs3Btn4mR8Z6XEZ7fc4-&_nc_ohc=aMx-ZJ6uzCwAX8CZPxh&_nc_ht=z-p3-scontent.fpnh5-3.fna&oh=62e4f5bf9d905c405cad926bd4ff43b4&oe=6184E7E8'),
              ),
              accountName: Text('Alton Kh'),
              accountEmail: Text('Helloworld55@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text(
                'Inbox',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text(
                'Starred',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text(
                'Send mail',
                style: TextStyle(fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text(
                'Drafts',
                style: TextStyle(fontSize: 15),
              ),
            ),
            CustomListIcon(Icons.info, "All mail"),
            SizedBox(height: 15),
            CustomListIcon(Icons.info, "Trash "),
            SizedBox(height: 15),
            CustomListIcon(Icons.info, "Spam"),
            SizedBox(height: 15),
            CustomListIcon(Icons.info, "Follow up"),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Farm Villa"),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.tune), color: Colors.black),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 50,
              //color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    offset: Offset(0, 1),
                    color: Colors.grey,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  hintText: "Search Village",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ),
            ListModel(),
          ],
        ),
      ),
    );
  }
}
