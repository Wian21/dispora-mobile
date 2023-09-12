import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbum() async {
  final String token =
      "Bearer 1|zieoP30NpGAOxzstUiRuFVSo2e4cuZ8v84AepWZR"; // Gantilah YOUR_TOKEN_HERE dengan token Anda

  final response = await http.get(
    Uri.parse('https://diasporacirebonkab.online/api/galeri'),
    headers: {
      'Authorization': token,
    },
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    final List<dynamic> data = jsonDecode(response.body);
    final List<Album> albums =
        data.map((json) => Album.fromJson(json)).toList();
    return albums;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int id;
  final String nama;
  final String jabatan;

  const Album({
    required this.id,
    required this.nama,
    required this.jabatan,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      nama: json['nama'],
      jabatan: json['jabatan'],
    );
  }
}

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 250, 250, 250),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(1),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg",
                      ))),
            );
          },
          itemCount: 2,
        ));
  }
}
