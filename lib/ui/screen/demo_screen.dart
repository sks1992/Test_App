import 'package:demo_app/ui/screen/person_page.dart';
import 'package:demo_app/ui/screen/search_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'message_page.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({Key? key}) : super(key: key);

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  int currentIndex = 0;
  List pages = const [HomePage(), SearchPage(), MessagePage(), PersonPage()];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(const Radius.circular(30)),
              child: BottomNavigationBar(
                backgroundColor: Colors.yellow,
                onTap: onTap,
                currentIndex: currentIndex,
                selectedItemColor: Colors.blue,
                unselectedItemColor: Colors.black.withOpacity(0.4),
                elevation: 0,
                items: const [
                  BottomNavigationBarItem(
                      label: "Home", icon: Icon(Icons.home)),
                  BottomNavigationBarItem(
                      label: "Search", icon: Icon(Icons.search)),
                  BottomNavigationBarItem(
                      label: "Message", icon: Icon(Icons.mail_rounded)),
                  BottomNavigationBarItem(
                      label: "Person", icon: Icon(Icons.person))
                ],
              ),
            )) /*BottomNavigationBar(
          backgroundColor: Colors.yellow,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black.withOpacity(0.4),
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: "Message", icon: Icon(Icons.mail_rounded)),
            BottomNavigationBarItem(label: "Person", icon: Icon(Icons.person))
          ],
        ),*/
        ,
        body: Center(
          child: pages[currentIndex],
        ),
      ),
    );
  }
}
