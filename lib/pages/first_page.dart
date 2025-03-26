import 'package:flutter/material.dart';
import 'package:helloworld/pages/home_page.dart';
import 'package:helloworld/pages/profile_page.dart';
import 'package:helloworld/pages/settings_page.dart';



class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex =0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List _pages =[
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("this is first page buddy")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            DrawerHeader(
                child:  Icon(Icons.favorite,
              size: 48,),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, "/homepage");
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settingspage");
              },
            ),
          ],
        ),
      ),
      body:_pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,
        items:[
            BottomNavigationBarItem(icon:
            Icon(Icons.home),
            label: "Home",
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",

            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),

        ]
      ),
    );
  }
}