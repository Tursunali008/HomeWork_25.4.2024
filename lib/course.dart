import 'package:flutter/material.dart';
import 'package:thirdlesson/helper_to_course.dart';
import 'package:thirdlesson/musicsTheme.dart';
class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});
  
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/boy.jpg",
                fit: BoxFit.cover,
              ),
              style: IconButton.styleFrom(backgroundColor: Colors.grey),
            ),
            title: const Text("Hi, John Smith "),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainBody()));
                  },
                  icon: const Icon(Icons.notification_important))
            ],
          ),
          body: MainBody(),
        ));
  }
}

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: const Color.fromARGB(255, 243, 229, 216)),
            padding: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Discover How\nTo Be Creative",
                  style: TextStyle(color: Color.fromARGB(255, 226, 134, 14), fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 40,
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset(
                    "assets/icons/rocket.png",
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "  Instructor",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "See All",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 226, 134, 14)),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 105,
                width: 70,
                // padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.asset("assets/images/akmal.png", width: 100,),
                    const Text("Akmal"),
                  ],
                ),
              ),
              Container(
                height: 95,
                width: 70,
                // padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.asset("assets/images/man.webp"),
                    const Text(
                      "Tursunali",
                    ),
                  ],
                ),
              ),
              Container(
                height: 95,
                width: 70,
                // padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    SizedBox(height: 70, width: 70, child: Image.asset("assets/images/shomurod.webp")),
                    const Text("Shomurod"),
                  ],
                ),
              ),
              Container(
                height: 95,
                width: 70,
                // padding: EdgeInsets.all(4),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Image.asset("assets/images/doc.png"),
                    const Text("Jayc"),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Course",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(" All "),
              Text(" Design "),
              Text(" Programming "),
              Text(" Gaming "),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: <Widget>[
              Divider(
                color: Colors.grey.shade300,
                thickness: 2,
              ),
              const Divider(
                color: Colors.orangeAccent,
                thickness: 4,
                indent: 10,
                endIndent: 310,
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
                      },
                      icon: Course(image: "assets/images/web.png", title: "Lerning Web Devolopmend", lessons: "24 Lesson", duration: "2Hr 30 Min"),),
                  const SizedBox(
                    height: 20,
                  ),
                  
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
                      },
                      icon: Course(image: "assets/images/ui.png", title: "Lerning UI/UX Designer", lessons: "25 Lesson", duration: "2Hr 45 Min")),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
                      },
                      icon: Course(image: "assets/icons/rocket.png", title: "Lerning Web Devolopmend", lessons: "1 Lesson", duration: "9Hr 10 Min")),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
                      },
                      icon: Course(image: "assets/icons/rocket.png", title: "Lerning Web Devolopmend", lessons: "13 Lesson", duration: "7Hr 15 Min")),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
                      },
                      icon: Course(image: "assets/icons/rocket.png", title: "Lerning Web Devolopmend", lessons: "20 Lesson", duration: "3Hr 50 Min")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

