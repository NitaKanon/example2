import 'package:card_swiper/card_swiper.dart';
import 'package:example2/interface/my_slider.dart';
import 'package:example2/screen/about_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MySlider> banner = [
    MySlider(
      id: 1,
      title: "heelo",
      image:
          "https://www.cmru.ac.th/assets/images/articles/05-08-2022/220ec03c7ee5db298d36308a38f41101cd49fedd.jpg",
      link: "http//google.com",
    ),
    MySlider(
      id: 2,
      title: "covid19",
      image:
          "https://s.isanook.com/ga/0/rp/rc/w728h437/yatxacm1w0/aHR0cHM6Ly9zLmlzYW5vb2suY29tL2dhLzAvdWQvMjMwLzExNTEzNDUveXVnaW9oLWNyb3NzLWR1ZWwoMSkuanBn.webp",
      link: "http//facebook.com",
    ),
    MySlider(
      id: 3,
      title: "วันเเม่",
      image: "https://www.bloggang.com/data/i/iamzeon/picture/1540128880.jpg",
      link: "http//google.com",
    )
  ];

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
            Container(
              height: 200,
              color: Colors.red,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Image.network(
                    banner[index].image,
                    fit: BoxFit.fill,
                  );
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                itemCount: banner.length,
                pagination:
                    const SwiperPagination(alignment: Alignment.bottomCenter),
                control: const SwiperControl(),
              ),
            ),
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
