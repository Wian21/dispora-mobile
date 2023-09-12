// import 'package:dispora_mobile/widget/inspek.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'inspek.dart';

class TabDua extends StatefulWidget {
  const TabDua({super.key});

  @override
  State<TabDua> createState() => _TabDuaState();
}

class _TabDuaState extends State<TabDua> {
  List<String> imageList = [
    'assets/image/logo.png',
    'assets/image/bola.jpg',
    'assets/image/kursiroda.jpg',
    'assets/image/lapangan.jpg',
    'assets/image/paskibra.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 250, 250, 250),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(1),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover, image: AssetImage(
                      // 'https://img.gesuri.id/img/content/2023/01/06/138980/puan-maharani-serahkan-diari-politik-ke-megawati-z0uRii3cob.jpg'
                      imageList[index]))),
              child: MaterialButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Inspek())));
              }),
            );
          },
          itemCount: imageList.length,
        ));
  }
}
