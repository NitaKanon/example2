import 'package:example2/screen/about_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = "Bundit nuntates";
  int age = 35;
  bool lookingGood = true;

  List<String> myDognames = ["loongtoo", "Paveena", "mike", "Pravit"];

  Map<String, dynamic> user = {
    "id": 1,
    "name": "john Doe",
    "sex": "male",
    "married": false
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("สวัสดีฉันชื่อ $name"),
            Text("ฉันอายุ $age"),
            Text(
                "ฉันหล่อมากนั้นเป็นเรื่อง ${lookingGood ? "จริง" : "ไม่จริง"}"),
            Text(
                "หมาฉันชื่อ ${myDognames[0]},${myDognames[1]},${myDognames[2]},${myDognames[3]}"),
            //...myDognames.map((item) => Text(item)).toList(),
            Text("เพื่อนของฉันชื่อ: ${user["name"]}"),
            Text(
                "เเล้วเขาก็: ${user["married"] ? "เเต่งงานเเล้ว" : "ยังไม่ได้เเต่งงาน"}"),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutScreen();
                    },
                  ),
                )
              },
              child: Text("Go to about screen"),
            ),
          ],
        ),
      ),
    );
  }
}
