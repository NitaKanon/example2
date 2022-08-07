import 'package:flutter/material.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int number = 0;

  String name = "Kantinun Tantiwattanapol";

  TextEditingController namecontroller = TextEditingController();

  void increments() {
    setState(() {
      number += 1;
    });
  }

  void decrements() {
    setState(() {
      number -= 1;
    });
  }

  void changeName() {
    setState(() {
      name = namecontroller.text;
      namecontroller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("PlayScreen")),
        body: Container(
            child: Column(
          children: [
            Text("ชื่อ:${name}"),
            Text("ค่าปัจจุบัน:${number}"),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintText: "ชื่อ-สกุล",
                      label: Text(
                        "ชื่่อ-สกุล",
                      ),
                    ),
                  ),
                ],
              )),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: increments,
                  child: Text("เพิ่มค่า"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  onPressed: decrements,
                  child: Text("ลดค่า"),
                ),
                ElevatedButton(
                  onPressed: changeName,
                  child: Text("เปลี่ยนชื่อ"),
                ),
              ],
            ),
          ],
        )));
  }
}