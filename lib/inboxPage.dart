
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';


class inboxPage extends StatelessWidget {
  const inboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.grey[350]
        ),
        backgroundColor: Colors.grey[350],
        elevation: 0,
        toolbarHeight: 300,
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: CircleAvatar(backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/AEdFTp7HB1ZjlorTV0wExaxhYEFjVlpn5ODkxRXx6aSHnw=s288-p-rw-no'),radius: 30,)),
          SizedBox(width: 240),
          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black, size: 30,)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: Badge(position: BadgePosition.topEnd(top: 35, end: 10),badgeContent: null,child: IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month, color: Colors.black, size: 30,))),
          ),
          
        ],      
      ),
      body: Column(children: [
        Text("Inbox"),
      ]),
    );
  }
}