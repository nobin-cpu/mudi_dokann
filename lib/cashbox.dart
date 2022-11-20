import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mudi_dokann/orderpage.dart';
import 'package:mudi_dokann/tallypage.dart';
import 'tallypage.dart';
import 'inbox.dart';

class cashbox extends StatelessWidget {
  const cashbox({Key? key}) : super(key: key);

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
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                primary: Color.fromARGB(255, 14, 0, 46),
                                shadowColor: Color.fromARGB(255, 61, 0, 41)),
                            onPressed: () {},
                            child: Text(
                              "রিপোর্ট  ",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                  ),
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                primary: Color.fromARGB(255, 14, 0, 46),
                                shadowColor: Color.fromARGB(255, 43, 0, 0)),
                            onPressed: () {},
                            child: Text("ক্যাশবাক্স চেক করুন ",
                                style: TextStyle(
                                  color: Colors.white,
                                ))),
                      ),
                    ),
                  ])
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Card(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(13),
                              child: Text("আজকের বাকি আদায় :"),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                "৫,০০০/- ",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 108, 255, 113)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    // elevation: 4,
                    child: Stack(children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 81, 238, 121),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('বিক্রয়  '),
                      ),
                      Positioned(
                        left: 310,
                        top: 15,
                        child: SizedBox(
                          height: 10,
                          width: 20,
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260,
                        top: 16,
                        child: SizedBox(
                            height: 30,
                            width: 45,
                            child: Text(
                              "৫০০/-",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 81, 238, 121)),
                            )),
                      ),
                    ]),
                  ),
                  Card(
                    color: Colors.white,
                    // elevation: 4,
                    child: Stack(children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 255, 6, 6),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('ক্রয়  '),
                      ),
                      Positioned(
                        left: 310,
                        top: 15,
                        child: SizedBox(
                          height: 10,
                          width: 20,
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 240,
                        top: 16,
                        child: SizedBox(
                            height: 30,
                            width: 75,
                            child: Text(
                              "৫০,০০০/-",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 255, 20, 20)),
                            )),
                      ),
                    ]),
                  ),
                  Card(
                    color: Colors.white,
                    // elevation: 4,
                    child: Stack(children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 81, 238, 121),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('বিক্রয়  '),
                      ),
                      Positioned(
                        left: 310,
                        top: 15,
                        child: SizedBox(
                          height: 10,
                          width: 20,
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260,
                        top: 16,
                        child: SizedBox(
                            height: 30,
                            width: 45,
                            child: Text(
                              "৫০০/-",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 81, 238, 121)),
                            )),
                      ),
                    ]),
                  ),
                  Card(
                    color: Colors.white,
                    // elevation: 4,
                    child: Stack(children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 255, 6, 6),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('ক্রয়  '),
                      ),
                      Positioned(
                        left: 310,
                        top: 15,
                        child: SizedBox(
                          height: 10,
                          width: 20,
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 240,
                        top: 16,
                        child: SizedBox(
                            height: 30,
                            width: 75,
                            child: Text(
                              "৪০,০০০/-",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 250, 0, 0)),
                            )),
                      ),
                    ]),
                  ),
                  Card(
                    color: Colors.white,
                    // elevation: 4,
                    child: Stack(children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 255, 6, 6),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('মালিকের খরচ  '),
                      ),
                      Positioned(
                        left: 310,
                        top: 15,
                        child: SizedBox(
                          height: 10,
                          width: 20,
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260,
                        top: 16,
                        child: SizedBox(
                            height: 30,
                            width: 45,
                            child: Text(
                              "৫০০/-",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 255, 0, 0)),
                            )),
                      ),
                    ]),
                  ),
                  Card(
                    color: Colors.white,
                    // elevation: 4,
                    child: Stack(children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 81, 238, 121),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                          ),
                        ),
                        title: Text('বিক্রয়  '),
                      ),
                      Positioned(
                        left: 310,
                        top: 15,
                        child: SizedBox(
                          height: 10,
                          width: 20,
                          child: Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 260,
                        top: 16,
                        child: SizedBox(
                            height: 30,
                            width: 45,
                            child: Text(
                              "৫০০/-",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 81, 238, 121)),
                            )),
                      ),
                    ]),
                  ),
                ]),
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
