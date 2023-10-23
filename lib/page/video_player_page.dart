import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({Key? key,}) : super(key: key);
  // final String videoUrl;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  // VideoPlayerController _controller = VideoPlayerController.network('');
  ValueNotifier<Future<void>?> videoFuture = ValueNotifier(null);
  late YoutubePlayerController _controller;
  late String videoId;
  late Future<void> _initialize;
  late ChewieController _chewieController;


  List<String> video = [
    'https://www.youtube.com/watch?v=0hPRfqPFtt8',
    'https://www.youtube.com/watch?v=YPBtl_hQUYo',
    'https://www.youtube.com/watch?v=vuszIgMQNCM',
    'https://www.youtube.com/watch?v=TKfOTe0o6Bc',
    'https://www.youtube.com/watch?v=-m4vaVraaUs',
    'https://www.youtube.com/watch?v=j-j48wndgss'
    // 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    // 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    // 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
  ];


  Future<void> play(String id) async {
    if (id.isEmpty) {
      return;
    }
    videoId = YoutubePlayer.convertUrlToId(id)!;
    _controller = YoutubePlayerController(
    initialVideoId: videoId,
    flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    ),

);
    //========================================================================================

    // if (_controller.value.isInitialized) {
    //   await _controller.dispose();
    // }
    // _controller = VideoPlayerController.network(id);
    // _controller.initialize();
    // _chewieController = ChewieController(
    //   videoPlayerController: _controller,
    //   autoPlay: true,
    //   looping: true,
    // );


  }

  @override
  void initState() {
        play('https://www.youtube.com/watch?v=0hPRfqPFtt8');
    // _initPlayer();
    // _controller = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    //   _initialize = _controller.initialize().then((_) {
    //     _controller.play();
    //     _controller.setLooping(true);
    //     // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //     setState(() {});
    //   });
      super.initState();
  }

  // void _initPlayer() {
  //   _controller = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
  //   _initialize = _controller.initialize();
  //   _chewieController = ChewieController(
  //     videoPlayerController: _controller,
  //     autoPlay: true,
  //     looping: true,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back, size: 24, color: Colors.black,),),
          backgroundColor: Colors.white,
          toolbarHeight: 60,
          elevation: 0,
          leadingWidth: 50,
          title: const Text('Video Materi', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),

      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child: ValueListenableBuilder(valueListenable: videoFuture, builder: (context, value, child) {
                  return AspectRatio(aspectRatio: 16 / 9,
                  child: value == null ? Container() : FutureBuilder(
                    future: videoFuture.value,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return YoutubePlayer(
                          controller: _controller,
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(isExpanded: true),
                          ],
                      );
                          // Chewie(controller: _chewieController);
                      } else {
                        return const CircularProgressIndicator();
                      }
                    }
                  ),
                  );
                }),
              ),
            const SizedBox(height: 16,),
            const Text("Pecahan Dasar", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            const SizedBox(height: 6,),
            const Text("Matematika Dasar", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),),
            const SizedBox(height: 3,),
            const Text("6 Videos", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black45),),
            const SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF007bff)
              ),
              child: const Center(child: Text("Daftar Video", style: TextStyle(fontSize: 20, color: Colors.white),)),
            ),
            const SizedBox(height: 30,),
            Expanded(
              child: ListView.builder(
                itemCount: video.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      videoFuture.value = play(video[index]);
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 20,),
                            const Icon(Icons.play_circle_fill, size: 45, color: Color(0xFF007bff),),
                            const SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Sample Video Pembelajaran", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),),
                                SizedBox(height: 3,),
                                Text("4 min 30 sec", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black45),),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  );
                },
              ),
            ),

          ],
        )),
      )
    );

    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body:Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                child:
                ValueListenableBuilder(valueListenable: videoFuture, builder: (context, value, child) {
                  return AspectRatio(aspectRatio: 16 / 9,
                  child: value == null ? Container() : FutureBuilder(
                    future: videoFuture.value,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Chewie(controller: _chewieController);
                      } else {
                        return const CircularProgressIndicator();
                      }
                    }
                  ),
                  );
                })
                ),
            Expanded(
              child: ListView.builder(
                itemCount: video.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Video ${index + 1}'),
                    onTap: () {
                      videoFuture.value = play(video[index]);
                    },
                  );
                },
              ),
            )
          ],
        ),
        // FutureBuilder(
        //   future: _initialize,
        //   builder: (context, snapshot) {
        //     return snapshot.connectionState == ConnectionState.done
        //         ? AspectRatio(
        //             aspectRatio: _controller.value.aspectRatio,
        //             child: VideoPlayer(_controller)
        //           )
        //         : Container();
        //   }
        // ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
