import 'package:codemeapp/ChatPage.dart';
import 'package:codemeapp/CodemeMain.dart';
import 'package:codemeapp/Discover.dart';
import 'package:codemeapp/NavigationBar.dart';
import 'package:codemeapp/ProfilePage.dart';
import 'package:codemeapp/Resources.dart';
import 'package:codemeapp/component7.dart';
import 'package:flutter/material.dart';

class Mainapp extends StatefulWidget {
   Mainapp({super.key});


  @override
  State<Mainapp> createState() => _MainappState();
}

class _MainappState extends State<Mainapp> {
   int selectedIndex=2;

  final List<Widget> screens =[
    Discover(),
    Resources(),
    Codememain(),
    chat(),
    Profilepage()
  ];

   /// Function to return different AppBars for each page
   PreferredSizeWidget? getAppBar() {
     switch (selectedIndex) {
       case 0: // Discover Page
         return AppBar(
           title: const Text("Discover"),

         );
       case 1: // Resources Page
         return AppBar(
           title: const Text("Resources"),
         );
       case 2: // Home Page (CodemeMain)
         return AppBar(
          leading: InkWell(
             onTap: () {
               _scaffoldKey.currentState?.openDrawer();
             },
             child: const Icon(Icons.menu_open_rounded),
           ),
           actions: const [
             CircleAvatar(
               radius: 20,
               backgroundImage: AssetImage("assets/Ellipse 2.png"),
             ),
           ],
         );
       case 3: // Chat Page
         return AppBar(
           title: const Text("Chats"),

         );
       case 4: // Profile Page
         return AppBar(
           title: const Text("Profile"),

         );
       default:
         return null;
     }
   }

   _onItemTapped(int index){
     setState(() {
       selectedIndex=index;
     });
   }
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // appBar: AppBar(
      //   leading: InkWell(
      //     onTap: () {
      //       // Use the key to open the drawer
      //       _scaffoldKey.currentState?.openDrawer();
      //     },
      //     child: Icon(Icons.menu_open_rounded),
      //   ),
      //   actions: [
      //     CircleAvatar(
      //       radius: 20,
      //       backgroundImage: AssetImage("assets/Ellipse 2.png"),
      //     ),
      //
      //   ],
      // ),
      //
      appBar: getAppBar(),
      drawer: menu(),
      // body: screens[selectedIndex],
      // bottomNavigationBar: BottomAppBar(
      //   height: 50,
      //   shape: const CircularNotchedRectangle(), // Space for FAB
      //   notchMargin: 6.0,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       IconButton(
      //         icon: Icon(Icons.explore,
      //             color: selectedIndex == 0 ? Colors.indigo : Colors.grey),
      //         onPressed: () => _onItemTapped(0), // Switch to Menu() (Index 0)
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.folder,
      //             color: selectedIndex == 1 ? Colors.indigo : Colors.grey),
      //         onPressed: () => _onItemTapped(1), // Switch to Discover() (Index 1)
      //       ),
      //       const SizedBox(width: 40), // Space for FAB
      //
      //       IconButton(
      //         icon: Icon(Icons.message,
      //             color: selectedIndex == 2 ? Colors.indigo : Colors.grey),
      //         onPressed: () => _onItemTapped(2), // Switch to LoginPage() (Index 2)
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.person,
      //             color: selectedIndex == 2 ? Colors.indigo : Colors.grey),
      //         onPressed: () => _onItemTapped(2), // Switch to Discover() (Index 3)
      //       ),
      //     ],
      //   ),
      //   // child: customeNavBar(onchange :onchange),
      // ),
      //
      //
      body: Stack(
          children: [
            screens[selectedIndex],
            customeNavBar(onchange: _onItemTapped)

          ]),
    );
  }
}
