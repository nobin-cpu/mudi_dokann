import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mudi_dokann/orderpage.dart';
import 'package:mudi_dokann/tallypage.dart';
import 'tallypage.dart';
import 'cashbox.dart';

class inbox extends StatelessWidget {
  const inbox({Key? key}) : super(key: key);

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
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(children: [
                Center(
                    child: Text(
                  "কোনো বার্তা নেই ",
                  style: TextStyle(fontSize: 25),
                ))
              ]),
            ),
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
                  icon: Icon(
                    Icons.sms_outlined,
                  ),
                  label: "ইনবক্স ",
                  backgroundColor: Colors.white),
            ]),
      ),
    );
  }
}
