import 'package:flutter/material.dart';
import 'package:presensi_app/page/video_player_page.dart';

class MapelPage extends StatelessWidget {
  const MapelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> mapel = [
      "Matematika", "Fisika", "IPA", "Bahasa Inggris", "Bahasa Indonesia", "PPKN"
    ];

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
          title: const Text('Mata Pelajaran', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),)),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(mapel.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const VideoPlayerWidget()));
                  },
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 2,
                    color: const Color(0xFF17a2b8),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.ondemand_video_outlined, size: 50, color: Colors.white,),
                          const SizedBox(height: 14,),
                          Text(
                            mapel[index],
                            style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold,),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8,),
                          const Text(
                            "6 videos",
                            style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400,),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            })),
        ),
      ),
    );
  }
}
