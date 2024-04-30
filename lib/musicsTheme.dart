import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Course Details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            onPressed: () {
              // Action for back button
            },
            icon: Image.asset("assets/icons/back_icon.png"),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Action for like button
              },
              icon: Image.asset("assets/icons/like.png"),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: const MainBody(),
      ),
    );
  }
}

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset("assets/images/samsung.jpg"),
          ),
          const SizedBox(height: 20),
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey.shade200,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.indigo.shade200,
                  ),
                  child: const Text("Playlist", style: TextStyle(fontSize: 18)),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text("Descriptions",
                      style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Musics("Introduction", "2 min 33 sec"),
                  const SizedBox(height: 20),
                  Musics("How to start design?", "2 min 43 sec"),
                  const SizedBox(height: 20),
                  Musics("What Is UI/UX Design?", "2 min 43 sec"),
                  const SizedBox(height: 20),
                  Musics("User Experience Design", "2 min 43 sec"),
                  const SizedBox(height: 20),
                  Musics("Learning Python", "2 min 43 sec"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Musics extends StatelessWidget {
  final String name;
  final String duration;
  final AudioPlayer audioPlayer = AudioPlayer();

  Musics(this.name, this.duration);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 5, color: Colors.grey.shade400, spreadRadius: 5),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  audioPlayer.play("audio_file_path.mp3"
                      as Source); // Replace with actual audio file path
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.orangeAccent,
                  size: 40,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(duration),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 143, 160, 255),
            ),
            child: const Icon(
              Icons.lock,
              color: Color.fromARGB(255, 16, 52, 255),
            ),
          ),
        ],
      ),
    );
  }
}
