// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';

class inboxPage extends StatefulWidget {
  @override
  State<inboxPage> createState() => _inboxPageState();
}

class _inboxPageState extends State<inboxPage> {
  var size, height, width;

  var selectedfolder = 'Inbox';

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 239, 239),
      // appBar: AppBar(
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //     statusBarIconBrightness: Brightness.dark,
      //     statusBarColor: Colors.grey[350]
      //   ),
      //   backgroundColor: Colors.grey[350],
      //   elevation: 0,
      //   toolbarHeight: 300,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 200),
      //       child: CircleAvatar(backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/AEdFTp7HB1ZjlorTV0wExaxhYEFjVlpn5ODkxRXx6aSHnw=s288-p-rw-no'),radius: 30,)),
      //     SizedBox(width: 240),
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 200),
      //       child: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black, size: 30,)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(bottom: 200),
      //       child: Badge(position: BadgePosition.topEnd(top: 35, end: 10),badgeContent: null,child: IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month, color: Colors.black, size: 30,))),
      //     ),

      //   ],
      // ),
      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     SizedBox(height: height/18),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: [
      //         SizedBox(width: width/18),
      //         CircleAvatar(backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a/AEdFTp7HB1ZjlorTV0wExaxhYEFjVlpn5ODkxRXx6aSHnw=s288-p-rw-no'),radius: 30, backgroundColor: Color.fromARGB(255,239,239,239), child: IconButton(icon: Icon(color: Colors.transparent, Icons.person), onPressed: (){},)),
      //         SizedBox(width: width/2,),
      //         IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black, size: 30,), splashRadius: 25),
      //         Badge(position: BadgePosition.topEnd(top: 10, end: 10),badgeContent: Icon(Icons.circle ,color: Color.fromARGB(255,212,64,64), size: 2,),child: IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month, color: Colors.black, size: 30,), splashRadius: 25)),
      //       ],
      //     ),
      //     SizedBox(height: height/10),
      //     DropdownButton(items: null, onChanged: null, hint: Text("Inbox", style: TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold)),),

      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height / 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width / 18),
                // ignore: prefer_const_constructors
                CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://lh3.googleusercontent.com/a/AEdFTp7HB1ZjlorTV0wExaxhYEFjVlpn5ODkxRXx6aSHnw=s288-p-rw-no'),
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 239, 239, 239),
                    child: IconButton(
                      icon: Icon(color: Colors.transparent, Icons.person),
                      onPressed: () {},
                    )),
                SizedBox(
                  width: width / 2,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    splashRadius: 25),
                Badge(
                    position: BadgePosition.topEnd(top: 10, end: 10),
                    badgeContent: Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 212, 64, 64),
                      size: 2,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                          size: 30,
                        ),
                        splashRadius: 25)),
              ],
            ),
            SizedBox(
              height: height / 64,
            ),
            Container(
              padding: EdgeInsets.only(
                left: width / 24,
              ),
              child: DropdownButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 30,
                ),
                items: const ["Inbox", "Drafts", "Trash", "Sent"]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selectedfolder = val.toString();
                  });
                },
                onTap: null,
                hint: Text(
                  'Inbox',
                  style: TextStyle(
                      fontFamily: "Cabin-Bold.tff",
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      backgroundColor: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width / 24,
              ),
              child: Text("Unread Messages Counter : "),
            ),
            SizedBox(
              height: height / 64,
            ),
            Padding(
              padding: EdgeInsets.only(left: width / 12),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: IconButton(
                        icon: Icon(Icons.drafts),
                        onPressed: () {},
                        iconSize: 40,
                      )),
                  SizedBox(
                    width: width / 64,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: IconButton(
                        icon: Icon(Icons.folder),
                        onPressed: () {},
                        iconSize: 40,
                      )),
                  SizedBox(
                    width: width / 64,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: IconButton(
                        icon: Icon(Icons.folder_delete),
                        onPressed: () {},
                        iconSize: 40,
                      )),
                  SizedBox(
                    width: width / 64,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: IconButton(
                        icon: Icon(Icons.folder_special),
                        onPressed: () {},
                        iconSize: 40,
                      )),
                  SizedBox(
                    width: width / 64,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {},
                        iconSize: 40,
                      )),
                  //CircleAvatar(backgroundColor: Colors.white,radius: 30,child: TextButton(,onPressed: (){}, child: IconButton(icon: Icon(Icons.person), onPressed: (){}, iconSize: 40,)))
                ],
              ),
            ),
            SizedBox(
              height: height / 32,
            ),
            //hena el item builder
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Bassel',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Hazem',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Abdo',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Azzam',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Biso',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Hazem',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send_rounded),
          onPressed: null,
          backgroundColor: Colors.black),
    );
  }
}
