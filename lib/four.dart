import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mudi_dokann/tallypage.dart';

class ed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 65,
                  width: double.infinity,
                  color: Color.fromARGB(255, 16, 0, 53),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            Get.to(Jk());
                          },
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 245, 0, 131),
                            child: Text(
                              "ক",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              textAlign: TextAlign.center,
                            )),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 20),
                            child: Text(
                              "কার্তিক বণিক শিশির  ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),   
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 18),
                            child: Text(
                              "বাকী : ৫০,০0/-",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 59, 59),
                                  fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 30),
                            child: Text(
                              "শেষ ক্রয় ১৮/০৭/২০২২ ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 60,
                        width: 160,
                        child: Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'মোট বিক্রি ',
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 60,
                          width: 160,
                          child: Padding(
                            padding: EdgeInsets.only(top: 15, left: 25),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 15),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                labelText: 'নগদ ',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                width: 340,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: 'বিবরণ  ',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280),
                child: SizedBox(
                  width: 320,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "পরবর্তী ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 19, 0, 71)))),
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 7, 0, 44),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
