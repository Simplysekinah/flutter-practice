import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ManyVideo extends StatefulWidget {
  const ManyVideo({super.key});

  @override
  State<ManyVideo> createState() => _ManyVideoState();
}

class _ManyVideoState extends State<ManyVideo> {
  late VideoPlayerController _controller;
  late VideoPlayerController _controller1;
  late VideoPlayerController _controller2;
  int _currentIndex = 0;
  late List<VideoPlayerController> videos; // Initialize as a list

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://videos.pexels.com/video-files/3629511/3629511-hd_720_900_24fps.mp4'),
    )..initialize().then((_) => setState(() {}));

    _controller1 = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://videos.pexels.com/video-files/26595798/11968864_2560_1440_60fps.mp4'),
    )..initialize().then((_) => setState(() {}));

    _controller2 = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://videos.pexels.com/video-files/17997315/17997315-uhd_1440_2560_30fps.mp4'),
    )..initialize().then((_) => setState(() {}));

    // Assign initialized controllers to the list
    videos = [_controller, _controller1, _controller2];
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  List<Widget> get _screens => [
        ShownVideo(videos: videos),
        ListView(
          children: [
            MovieCard(cards: mycard, index: 0),
            MovieCard(cards: mycard, index: 1),
          ],
        ),
        const Center(
          child: Text(
            'data',
            style: TextStyle(fontSize: 11),
          ),
        )
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.navigate_next))
        ],
      ),
      body: _screens[_currentIndex], // Display selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class ShownVideo extends StatefulWidget {
  final List<VideoPlayerController> videos; // Receive controllers

  const ShownVideo({super.key, required this.videos});

  @override
  State<ShownVideo> createState() => _ShownVideoState();
}

class _ShownVideoState extends State<ShownVideo> {
  @override
  Widget build(BuildContext context) {
    Map? item = ModalRoute.of(context)?.settings.arguments as Map?;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          if (item != null &&
              item.containsKey('item') &&
              item['item'] < widget.videos.length)
            widget.videos[item['item']].value.isInitialized
                ? AspectRatio(
                    aspectRatio: widget.videos[item['item']].value.aspectRatio,
                    child: VideoPlayer(widget.videos[item['item']]),
                  )
                : const Center(child: CircularProgressIndicator())
          else
            const Center(child: Text("No video selected.")), // Fallback UI

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  if (item != null &&
                      item.containsKey('item') &&
                      item['item'] < widget.videos.length) {
                    widget.videos[item['item']].play();
                  }
                },
                icon: const Icon(Icons.play_arrow),
              ),
              IconButton(
                onPressed: () {
                  if (item != null &&
                      item.containsKey('item') &&
                      item['item'] < widget.videos.length) {
                    widget.videos[item['item']].pause();
                  }
                },
                icon: const Icon(Icons.pause),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final List mycard = [
  {
    "moviecategory": "indian",
    "movies": [
      {
        "movieurl":
            "https://images.pexels.com/photos/6235464/pexels-photo-6235464.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "show",
        "ratings": 2.0
      },
      {
        "movieurl":
            "https://images.pexels.com/photos/6235464/pexels-photo-6235464.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "show",
        "ratings": 2.0
      },
      {
        "movieurl":
            "https://images.pexels.com/photos/6235464/pexels-photo-6235464.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "show",
        "ratings": 2.0
      },
      {
        "movieurl":
            "https://images.pexels.com/photos/6235464/pexels-photo-6235464.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "show",
        "ratings": 2.0
      },
      {
        "movieurl":
            "https://images.pexels.com/photos/6235464/pexels-photo-6235464.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "show",
        "ratings": 2.0
      }
    ],
  },
  {
    "moviecategory": "youth",
    "movies": [
      {
        "movieurl":
            "https://images.pexels.com/photos/4473634/pexels-photo-4473634.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "children",
        "ratings": 4.0
      },
      {
        "movieurl":
            "https://images.pexels.com/photos/4473634/pexels-photo-4473634.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "children",
        "ratings": 4.0
      },
      {
        "movieurl":
            "https://images.pexels.com/photos/4473634/pexels-photo-4473634.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "children",
        "ratings": 4.0
      },
      {
        "movieurl":
            "https://images.pexels.com/photos/4473634/pexels-photo-4473634.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "children",
        "ratings": 4.0
      },
      {
        "movieurl":
            "https://images.pexels.com/photos/4473634/pexels-photo-4473634.jpeg?auto=compress&cs=tinysrgb&w=600",
        "title": "children",
        "ratings": 4.0
      }
    ],
  }
];

class ShownMovies extends StatelessWidget {
  final String movieurl;
  final String title;
  final String ratings;
  const ShownMovies({
    super.key,
    required this.movieurl,
    required this.title,
    required this.ratings,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 150,
          child: Card(
            child: Column(
              children: [
                ClipRRect(
                  child: Image.network(
                    movieurl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text(title),
                      Row(
                        children: [Text(ratings.toString())],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(child: SizedBox())
      ],
    );
  }
}

class MovieCard extends StatelessWidget {
  final int index;
  final List cards;
  const MovieCard({
    super.key,
    required this.cards,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(cards[index]["moviecategory"]),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ...cards[index]["movies"].map((con) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: ShownMovies(
                        movieurl: con["movieurl"],
                        title: con["title"],
                        ratings: con["ratings"].toString()),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
