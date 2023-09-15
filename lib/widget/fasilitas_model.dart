import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<Fasilitas_model>> fetchAlbum() async {
  final String token = "Bearer 1|zieoP30NpGAOxzstUiRuFVSo2e4cuZ8v84AepWZR";

  final response = await http.get(
    Uri.parse('https://diasporacirebonkab.online/api/fasilitas'),
    headers: {
      'Authorization': token,
    },
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = jsonDecode(response.body);

    if (responseData.containsKey("data") &&
        responseData["data"] is List<dynamic>) {
      final List<dynamic> data = responseData["data"];
      final List<Fasilitas_model> fasilitas_model =
          data.map((json) => Fasilitas_model.fromJson(json)).toList();
      return fasilitas_model;
    } else {
      throw Exception('Data format from API is not as expected');
    }
  } else {
    throw Exception('Failed to load album');
  }
}

class Fasilitas_model {
  final int id;
  final String judul_fasilitas;
  final String deskripsi;
  final String gambar;
  final String lokasi;
  final String link_map;
  static List<Fasilitas_model> fasilitas_model = [];

  const Fasilitas_model({
    required this.id,
    required this.judul_fasilitas,
    required this.deskripsi,
    required this.gambar,
    required this.lokasi,
    required this.link_map,
  });
  factory Fasilitas_model.fromJson(Map<String, dynamic> json) {
    final fasilitas = Fasilitas_model(
      id: json['id'],
      judul_fasilitas: json['judul_fasilitas'],
      deskripsi: json['deskripsi'],
      gambar: "https://diasporacirebonkab.online/core/public/gambarfasilitas/" +
          json['gambar'],
      lokasi: json['lokasi'],
      link_map: json['link_map'],
    );

    fasilitas_model.add(fasilitas); // Menambahkan fasilitas ke dalam list

    return fasilitas;
  }
}
