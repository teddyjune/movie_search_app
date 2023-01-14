import 'package:flutter/material.dart';
import 'package:movie_search_app/ui/movie_main/movie_main_screen.dart';
import 'package:video_player/video_player.dart';

class VideoDetailScreen extends StatefulWidget {
  final String videoUrl;

  const VideoDetailScreen({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MovieMainScreen()),
            );
          },
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller)),
                Center(
                  child: IconButton(
                    icon: Icon(
                      _controller.value.isPlaying ? null : Icons.play_circle,
                      color: Colors.white,
                      size: 50,
                    ),
                    onPressed: () {
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                  ),
                ),
                Positioned(
                    left: 7,
                    bottom: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 13, right: 13, top: 5, bottom: 5),
                        child: Row(
                          children: const [
                            Text(
                              "미리보기",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    right: 5,
                    bottom: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Row(
                          children: const [
                            Icon(Icons.volume_mute, color: Colors.white),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "뿅뿅 지구오락실",
                  style: TextStyle(
                      height: 1.4,
                      fontSize: 25,
                      color: Colors.white.withOpacity(0.9)),
                ),
                const SizedBox(height: 10),
                const SizedBox(width: 20),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    const Text(
                      "New",
                      style: TextStyle(
                          height: 1.4, fontSize: 15, color: Colors.green),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "2022",
                      style: TextStyle(
                          height: 1.4,
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.5)),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 6, right: 6, top: 4, bottom: 4),
                        child: Text(
                          "18+",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "시즌 1",
                      style: TextStyle(
                          height: 1.4,
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.5)),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.2))),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 6, right: 6, top: 4, bottom: 4),
                        child: Text(
                          "HD",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Watch Season 1 Now",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  width: size.width,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.play_arrow, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        "이어서 재생",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: size.width,
                  height: 38,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.file_download, color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        "저장",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "뿅뿅 지구오락실 1화 : 아찔한 첫 만남",
                  style: TextStyle(
                      height: 1.4,
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.9)),
                ),
                const SizedBox(height: 8),
                Text(
                  "이영지는 촬영이 아니라 그냥 미팅인 줄 알고 민낯으로 나타났고 이은지는 영지와 초면임에도 텐션 높은 모습을 보여줬다. 이후 미미와 안유진이 도착하자 그야말로 축제 분위기. 안유진이 등장했을 때는 이은지와 미미가 냅다 러브 다이브를 추기도",
                  style: TextStyle(
                      height: 1.4,
                      fontSize: 13,
                      color: Colors.white.withOpacity(0.9)),
                ),
                Row(

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
