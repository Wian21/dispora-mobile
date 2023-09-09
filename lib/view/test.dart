import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbum() async {
  final String token =
      "Bearer 1|zieoP30NpGAOxzstUiRuFVSo2e4cuZ8v84AepWZR"; // Gantilah YOUR_TOKEN_HERE dengan token Anda

  final response = await http.get(
    Uri.parse('https://diasporacirebonkab.online/api/pegawai/4'),
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

void main() => runApp(const Test());

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late Future<List<Album>> futureAlbums; // Perbarui tipe data

  @override
  void initState() {
    super.initState();
    futureAlbums = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<List<Album>>(
            future: futureAlbums,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Menampilkan loading spinner selama data sedang diambil.
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                // Menampilkan pesan kesalahan jika terjadi kesalahan.
                return Text('Error: ${snapshot.error}');
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                // Menampilkan pesan jika data kosong.
                return Text('Tidak ada data.');
              } else {
                // Menampilkan daftar album.
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final album = snapshot.data![index];
                    return ListTile(
                      title: Text(album.nama),
                      subtitle: Text(album.jabatan),
                      // Tambahkan tampilan lain sesuai kebutuhan.
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
