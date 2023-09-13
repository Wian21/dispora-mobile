import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchAlbum() async {
  final String token = "Bearer 1|zieoP30NpGAOxzstUiRuFVSo2e4cuZ8v84AepWZR";

  final response = await http.get(
    Uri.parse('https://diasporacirebonkab.online/api/galeri/foto/'),
    headers: {
      'Authorization': token,
    },
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
    final List<dynamic> albums = data['data'];
    return albums;
  } else {
    throw Exception('Failed to load album');
  }
}

class Status extends StatefulWidget {
  const Status({Key? key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  late Future<List<dynamic>> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: futureAlbum,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<dynamic> albumList = snapshot.data!;
          return GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final album = albumList[index];
              final gambar = album['gambar'] as String;
              final judul = album['judul'] as String;
              return Container(
                margin: EdgeInsets.all(1),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://diasporacirebonkab.online/core/public/fotogaleri/" +
                            gambar),
                  ),
                ),
                child: Center(
                  child: Text(judul,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                ),
              );
            },
            itemCount: albumList.length,
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
