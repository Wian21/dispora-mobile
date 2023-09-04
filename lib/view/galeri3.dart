// import 'package:dispora_mobile/view/beranda.dart';
// import 'package:dispora_mobile/widget/foto.dart';
// import 'package:dispora_mobile/widget/semua.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
import '../widget/fotogalery.dart';
import '../widget/semua.dart';
import '../widget/video.dart';
import 'beranda.dart';

class GaleryTiga extends StatefulWidget {
  const GaleryTiga({super.key});

  @override
  State<GaleryTiga> createState() => _GaleryTigaState();
}

class _GaleryTigaState extends State<GaleryTiga> {
  List<String> imageList = [
    'assets/image/logo.png',
    'assets/image/bola.jpg',
    'assets/image/kursiroda.jpg',
    'assets/image/lapangan.jpg',
    'assets/image/paskibra.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Color.fromARGB(255, 84, 41, 255),
            tabs: [
              Tab(
                text: 'SEMUA',
              ),
              Tab(
                text: "FOTO",
              ),
              Tab(
                text: "VIDEO",
              ),
            ],
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Beranda(),
                    ));
              },
              icon: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              )),
          // leading: IconButton(i,
          title: Text(
            'Galeri',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            // Container(
            //   color: Colors.blue,
            //   child: TabBar(
            //     isScrollable: true,
            //     indicatorColor: Colors.white,
            //     // indicatorWeight: 3,
            //     labelStyle: TextStyle(
            //       fontSize: 16, fontWeight: FontWeight.bold,

            //     ),
            //     tabs: [

            //     ],
            //   ),
            // )
            Flexible(
              flex: 1,
              child: TabBarView(children: [TabDua(), Status(), Video()]),
            )
          ],
        ),
      ),
    );
  }
}
