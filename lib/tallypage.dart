import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudi_dokann/cashbox.dart';
import 'package:mudi_dokann/five.dart';
import 'package:mudi_dokann/four.dart';
import 'package:mudi_dokann/motpabo.dart';
import 'package:mudi_dokann/orderpage.dart';
import 'package:mudi_dokann/six.dart';
import 'package:mudi_dokann/three.dart';
import 'package:mudi_dokann/two.dart';
import 'orderpage.dart';
import 'cashbox.dart';
import 'inbox.dart';

class Jk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("ভাই ভাই স্টোর "),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 16, 0, 53),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 222, 215, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 6,
                        offset: Offset(2, 2), // Shadow position
                      ),
                    ],
                  ),
                  child: Stack(children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30, left: 30),
                        child: Text(
                          'আজকের বিক্রি ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          '২৫,০০০',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30, right: 35),
                        child: Text(
                          'বর্তমান ক্যাশ  ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20, bottom: 18),
                        child: InkWell(
                          child: SizedBox(
                            child: Text(
                              '২,৫০,০০০',
                              // ignore: prefer_const_constructors
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 222, 215, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 3,
                        offset: Offset(1, 1), // Shadow position
                      ),
                    ],
                  ),
                  child: Stack(children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'মোট পাবো  ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 60),
                        child: Text(
                          'মোট দিবো   ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 50),
                        child: Text(
                          '৫,০০০ ',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Text(
                          '২৫,০০০',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 25, right: 30),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'মোট বাকি  ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10, bottom: 20),
                        child: InkWell(
                          child: SizedBox(
                            child: Text(
                              '৪০,০০০',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 115),
                      child: const VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 110),
                        child: const VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 20,
                          endIndent: 10,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 47),
                      child: const Divider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("মোট ক্রেতা :৫০")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                primary: Colors.red,
                                shadowColor: Colors.redAccent),
                            onPressed: () {},
                            child: Text("বাকী পরিশোধের অনুরোধ "))),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (() {
                Get.to(Cd());
              }),
              child: Card(
                color: Colors.white,
                // elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 1, 120),
                    child: Text(
                      "ল ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  title: Text('লাবিব শেখ '),
                  subtitle: Text('টঙ্গীবাড়ী ,১৪৫৮'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(td());
              },
              child: Card(
                color: Colors.white,
                // elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 197, 95, 0),
                    child: Text(
                      "ম ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  title: Text('মারুফ ভাই '),
                  subtitle: Text('মুন্সিগঞ্জ  ,১৪৫৮'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(dd());
              },
              child: Card(
                color: Colors.white,
                // elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 0, 200, 250),
                    child: Text(
                      "স  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  title: Text('সাবিত ভাই  '),
                  subtitle: Text('মুন্সিগঞ্জ ,১৪৫৮'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(ed());
              },
              child: Card(
                color: Colors.white,
                // elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 0, 212),
                    child: Text(
                      "ক  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  title: Text('কার্তিক বণিক শিশির  '),
                  subtitle: Text('সিরাজদিখান  ,১৪৫৮'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(fd());
              },
              child: Card(
                color: Colors.white,
                // elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 0, 108, 197),
                    child: Text(
                      "ম ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  title: Text('মাজহারুল ভাই  '),
                  subtitle: Text('সিপাহীপাড়া ,১৪৫৮'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(gd());
              },
              child: Card(
                color: Colors.white,
                // elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 197, 0, 0),
                    child: Text(
                      "ম ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  title: Text('মৃত্তিকা বণিক  '),
                  subtitle: Text('নারায়ণগঞ্জ ,১৪৫৮'),
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 16, 0, 53),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color.fromARGB(255, 138, 183, 255),
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Get.to(Jk());
                    },
                    child: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                  ),
                  label: "হোম ",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Get.to(cashbox());
                    },
                    child: Icon(
                      Icons.attach_money_outlined,
                    ),
                  ),
                  label: "ক্যাশবাক্স ",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Get.to(op());
                    },
                    child: Icon(
                      Icons.fact_check_outlined,
                    ),
                  ),
                  label: "অর্ডারসমুহ ",
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: InkWell(
                    onTap: () {
                      Get.to(inbox());
                    },
                    child: Icon(
                      Icons.sms_outlined,
                    ),
                  ),
                  label: "ইনবক্স ",
                  backgroundColor: Colors.white),
            ]),
      ),
    );
  }
}
