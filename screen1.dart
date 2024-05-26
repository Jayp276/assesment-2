import 'package:flutter/material.dart';
import 'package:note_app/checkbox.dart';
import 'package:note_app/micpage.dart';
import 'package:note_app/more_horiz.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  List datalist = [screen1(),micpage(), checkbox(), more() ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notebook"),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 20),
          Icon(
            Icons.add,
            color: Colors.black,
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Jay Patel",
                  style: TextStyle(fontSize: 18),
                ),

                accountEmail: Text("jaypofficial99@gmail.com"),
                currentAccountPictureSize: Size.square(40),
                currentAccountPicture: CircleAvatar(
                  //radius: 30,
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  backgroundImage: AssetImage("assets/images/mypic1.png"),
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    body: 
      
      Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 180,
              width: 180,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/bicycle.jpg")),
            ),
            Container(
              height: 180,
              width: 180,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/img13.jpg")),
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 80,
              ),
              Text(
                "Travel",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                "Idea",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 180,
              width: 180,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/img6.jpg")),
            ),
            Container(
              height: 180,
              width: 180,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/img13.jpg")),
            )
          ]),
          SizedBox(
            height: 20,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 80,
              ),
              Text(
                "Books",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 130,
              ),
              Text(
                "Recepies",
                style: TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.blue,
        backgroundColor: Colors.green,
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        selectedLabelStyle: TextStyle(color: Colors.brown),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.edit)),
          BottomNavigationBarItem(icon: Icon(Icons.mic)),
          BottomNavigationBarItem(icon: Icon(Icons.camera)),
          BottomNavigationBarItem(icon: Icon(Icons.check_box)),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz))
        ],
      ),
    );
  }
}
