import 'package:firstproject/Views/doublevideo.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SimplyVideo extends StatefulWidget {
  const SimplyVideo({super.key});

  @override
  State<SimplyVideo> createState() => _SimplyVideoState();
}

class _SimplyVideoState extends State<SimplyVideo> {
  late VideoPlayerController _controller;
  int _currentIndex = 0; // To track which screen to show

  final TextEditingController fNAME = TextEditingController();
  final TextEditingController lNAME = TextEditingController();
  final TextEditingController phoneN = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://videos.pexels.com/video-files/3629511/3629511-hd_720_900_24fps.mp4'),
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Define the screens to navigate between
  List<Widget> get _screens => [
        Center(
            child: Text("Home Screen", style: TextStyle(fontSize: 24))), // Home
        Forminput(fNAME: fNAME, lNAME: lNAME, phoneN: phoneN), // Chat Form
        VideoPlayerScreen(controller: _controller), // Video Player
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Dynamic Screen Navigation"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ManyVideo()));
              },
              icon: Icon(Icons.notification_add))
        ],
      ),
      body: _screens[_currentIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Highlight the selected button
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the screen index
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill),
            label: "Video",
          ),
        ],
      ),
    );
  }
}

class Forminput extends StatelessWidget {
  final TextEditingController fNAME;
  final TextEditingController lNAME;
  final TextEditingController phoneN;

  const Forminput({
    super.key,
    required this.fNAME,
    required this.lNAME,
    required this.phoneN,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Text('FirstName:'),
          title: TextField(
            controller: fNAME,
            decoration: const InputDecoration(labelText: 'FirstName'),
          ),
        ),
        ListTile(
          leading: const Text('LastName:'),
          title: TextField(
            controller: lNAME,
            decoration: const InputDecoration(labelText: 'LastName'),
          ),
        ),
        ListTile(
          leading: const Text('Phone Number:'),
          title: TextField(
            controller: phoneN,
            decoration: const InputDecoration(labelText: 'Phone Number'),
          ),
        ),
      ],
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (controller.value.isInitialized)
          AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: VideoPlayer(controller),
          )
        else
          const Center(
              child:
                  CircularProgressIndicator()), // Loader while video initializes
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                controller.play();
              },
              icon: const Icon(Icons.play_arrow),
            ),
            IconButton(
              onPressed: () {
                controller.pause();
              },
              icon: const Icon(Icons.pause),
            ),
          ],
        ),
      ],
    );
  }
}
