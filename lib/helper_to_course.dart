
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Course extends StatelessWidget {
  String image;
  String title;
  String lessons;
  String duration;
  Course({super.key, required this.image, required this.title, required this.lessons, required this.duration});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(255, 209, 209, 209), blurRadius: 5, spreadRadius: 5),
          ],
          color: const Color.fromARGB(255, 243, 229, 216)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.note_add_sharp,
                      color: Color.fromARGB(255, 123, 142, 248),
                    ),
                    Text(lessons),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.play_arrow,
                      color: Colors.orangeAccent,
                    ),
                    Text(duration)
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}