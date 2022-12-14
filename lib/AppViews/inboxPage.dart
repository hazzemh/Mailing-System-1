
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';


class inboxPage extends StatelessWidget {
  var size,height,width;
  


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      
      backgroundColor: Color.fromARGB(255,239,239,239),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height/18),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: width/18),
              CircleAvatar(backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/AEdFTp7HB1ZjlorTV0wExaxhYEFjVlpn5ODkxRXx6aSHnw=s288-p-rw-no'),radius: 30, backgroundColor: Color.fromARGB(255,239,239,239), child: IconButton(icon: Icon(color: Colors.transparent, Icons.person), onPressed: (){},)),
              SizedBox(width: width/2,),
              IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black, size: 30,), splashRadius: 25),  
              Badge(position: BadgePosition.topEnd(top: 10, end: 10),badgeContent: Icon(Icons.circle ,color: Color.fromARGB(255,212,64,64), size: 2,),child: IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month, color: Colors.black, size: 30,), splashRadius: 25)),
            ],
          ),
          SizedBox(height: height/10),
          DropdownButton(items: null, onChanged: null, hint: Text("Inbox", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold)),),
          
        ],  
      ),
      body: Column(children: [
        const Text("Inbox"),
      ]),
    );
  }
}

//Azzaaam