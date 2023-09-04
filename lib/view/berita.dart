import 'package:dispora_mobile_new/view/menu.dart';
import 'package:flutter/material.dart';
import '../widget/CardBerita.dart';

class MediaBerita extends StatefulWidget {
  const MediaBerita({super.key});

  @override
  State<MediaBerita> createState() => _MediaBeritaState();
}

class _MediaBeritaState extends State<MediaBerita> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Pilihan(),
                        ));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Berita dan Media',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 84, 41, 255)),
                        child: Text(
                          "Berita",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 5,
                        color: Color.fromARGB(255, 84, 41, 255),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    width: 150,
                    height: 200,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png'))),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 84, 41, 255)),
                    child: Text(
                      'Rekomendasi',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 5,
                    color: Color.fromARGB(255, 84, 41, 255),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CardBerita(),
            CardBerita(),
            CardBerita(),
            CardBerita(),
          ],
        )),
      ),
    );
  }
}
