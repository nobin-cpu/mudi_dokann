import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mudi_dokann/orderlist.dart';
import 'package:mudi_dokann/tallypage.dart';
import 'cashbox.dart';
import 'orderlist.dart';
import 'inbox.dart';

class op extends StatelessWidget {
  const op({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 14, 0, 46),
          title: Text("ভাই ভাই স্টোর "),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "আজকের অর্ডার লিস্ট :",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(Ol());
              },
              child: Card(
                color: Colors.white,
                // elevation: 4,
                child: Stack(children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 230, 1),
                      child: Text(
                        "ল ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    title: Text('লাবিব শেখ '),
                    subtitle: Text('টঙ্গীবাড়ী ,১৪৫৮'),
                  ),
                  Positioned(
                    left: 260,
                    top: 20,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.done_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 300,
                    top: 20,
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.close_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Card(
              color: Colors.white,
              // elevation: 4,
              child: Stack(children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 1, 183, 255),
                    child: Text(
                      "ক",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  title: Text('কার্তিক বণিক শিশির'),
                  subtitle: Text('সিরাজদিখান  ,১৪৫৮'),
                ),
                Positioned(
                  left: 260,
                  top: 20,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.done_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 300,
                  top: 20,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.close_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Card(
              color: Colors.white,
              // elevation: 4,
              child: Stack(children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 1, 120),
                    child: Text(
                      "ম ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  title: Text('মারুফ ভাই '),
                  subtitle: Text('মুন্সিগঞ্জ  ,১৪৫৮'),
                ),
                Positioned(
                  left: 260,
                  top: 20,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.done_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 300,
                  top: 20,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.close_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ],
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
