import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudi_dokann/tallypage.dart';
import 'motpabo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 7, 0, 44),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 40, right: 250),
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 130,
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 90,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "মুদি দোকান ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 110),
                child: Text(
                  "ব্যবহার শুরু করুন ",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "ব্যবহার শুরু করতে বা লগইন করতে মোবাইল নম্বর দিন   ",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 60,
                width: 320,
                child: Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: 'ফোন নম্বর ',
                      hintText: '+088 ',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(Jk());
                    },
                    child: const Text(
                      "পরবর্তী ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 7, 0, 44),
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 70, left: 15, right: 10),
                child: Text(
                  "পরবর্তীতে যাওয়ার নির্দেশ এর মাধ্যমে আপনি মুদি দোকান এর  শর্তাবলীতে সম্মতি প্রকাশ করছেন   ",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
