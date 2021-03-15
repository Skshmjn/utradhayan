import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:utradhayan/widgets/Home.dart';
import 'package:utradhayan/widgets/aagam.dart';
import 'package:utradhayan/widgets/audiobook.dart';
import 'package:utradhayan/widgets/profile.dart';


class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _currentIndex = 1;

  final tabs = [HomePage(),Aagam(),AudioBook(),Profile()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:tabs[_currentIndex] ,
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        backgroundColor: Theme.of(context).backgroundColor,
        color: Theme.of(context).textTheme.caption.color,
        activeColor:Theme.of(context).textTheme.bodyText1.color ,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.book, title: 'Ebook'),
          TabItem(icon: Icons.audiotrack, title: 'Audiobook'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },

      ),
    );
  }



}
