import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

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

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _TestState();
}

class _TestState extends State<ProfileScreen> {
  late Future<List<Album>> futureAlbums; // Perbarui tipe data

  @override
  void initState() {
    super.initState();
    futureAlbums = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCBCCE8),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user.JPG'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name', 'Ahad Hashmi', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '03107085816', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile(
                'Address', 'abc address, xyz city', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile('Email', 'WIanur Intiya Angesti', CupertinoIcons.mail),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Edit Profile')),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
