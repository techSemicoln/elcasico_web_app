import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      "assets/gifs/homePage.mp4",
    );
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.setVolume(0.0);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: size.height,
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(_controller),
                Container(
                  height: size.height,
                  color: Colors.black.withOpacity(0.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("ELCLASICO TURFS",
                              style: TextStyle(
                                  fontSize: 36,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Online Booking Platform",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: size.width / 6,
                              decoration: BoxDecoration(
                                color: Colors.green[600],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.all(20),
                              child: const Center(
                                  child: Text(
                                'BOOK',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          GestureDetector(
                            child: Container(
                              width: size.width / 6,
                              decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.all(20),
                              child: const Center(
                                  child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: size.width > 600 ? size.height / 5 : 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Our Venues"),
        ),
        SizedBox(
          height: size.height / 4,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                3,
                (index) => Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        color: Colors.blue,
                        height: 100,
                        width: 100,
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
