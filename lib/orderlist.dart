import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mudi_dokann/inbox.dart';
import 'package:mudi_dokann/orderpage.dart';
import 'package:mudi_dokann/tallypage.dart';
import 'tallypage.dart';
import 'cashbox.dart';
import 'orderpage.dart';
import 'inbox.dart';

class Ol extends StatelessWidget {
  const Ol({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                        child: Text(
                      "লাবিব শেখ ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    )),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 23),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'মিনিকেট চাল ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90, top: 30),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '৫০ কেজি  ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 23),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'ডাল  ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 30),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '৫ কেজি  ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 23),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'চিনি  ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 30),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '৫ কেজি  ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 23),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'আটা  ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 160, top: 30),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '৫ কেজি  ',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 10,
              ),
            ],
          ),
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
