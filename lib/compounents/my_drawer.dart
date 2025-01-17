import 'package:flutter/material.dart';
import 'package:untitled1/screen/setting_page.dart';
import 'package:untitled1/screen/homepage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //logo
          DrawerHeader(
            child: Center(
              child: Icon(Icons.music_note,
              size: 40,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
                          //home title
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 25),
            child: ListTile(
              title:const Text("H O M E"),
              leading: const Icon(Icons.home),
              onTap: ()=> Navigator.pop(context),
            ),
          ),
                           //setting title
          Padding(
            padding: const EdgeInsets.only(left: 25,top: 10),
            child: ListTile(
              title:const Text("S E T T I N G"),
              leading: const Icon(Icons.settings),
              onTap: (){
                Navigator.pop(context);
                
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>SettingPage(),
                    ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
