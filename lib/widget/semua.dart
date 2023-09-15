import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'inspek.dart';

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

class TabDua extends StatefulWidget {
  const TabDua({Key? key});

  @override
  State<TabDua> createState() => _TabDuaState();
}

class _TabDuaState extends State<TabDua> {
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
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (!snapshot.hasData) {
          return Text('No data available');
        }

        final List<dynamic> albumList = snapshot.data!;
        return Container(
          color: Color.fromARGB(255, 250, 250, 250),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final album = albumList[index];
              final id = album['id'];
              final gambar = album['gambar'] as String;
              return Container(
                margin: EdgeInsets.all(1),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://diasporacirebonkab.online/core/public/fotogaleri/$gambar",
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ImageDialog(
                          imageUrl:
                              "https://diasporacirebonkab.online/core/public/fotogaleri/$gambar",
                        );
                      },
                    );
                  },
                ),
              );
            },
            itemCount: albumList.length,
          ),
        );
      },
    );
  }
}
