import 'package:flutter/material.dart';

class APIScreen extends StatefulWidget {
  const APIScreen({Key? key}) : super(key: key);

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {


  
  List<String> thaiFood = [
    "Somtum",
    "Khaosoi",
    "Kaiyang",
    "Tomyakung",
    "Padped",
    "KraPao moo",
    "Musamun",
    "Moo yoe"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thai Food"),
      ),
      body: ListView.builder(
        itemCount: thaiFood.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                thaiFood[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
