import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<NewsData1>> fetchAllData() async {
  final String token = "Bearer 1|zieoP30NpGAOxzstUiRuFVSo2e4cuZ8v84AepWZR";
  List<NewsData1> allData = [];

  // Loop untuk mengambil data dari kedua halaman
  for (int page = 1; page <= 2; page++) {
    final response = await http.get(
      Uri.parse('https://diasporacirebonkab.online/api/berita?page=$page'),
      headers: {
        'Authorization': token,
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final List<dynamic> data = responseData['data'];

      final List<NewsData1> newsdata =
          data.map((json) => NewsData1.fromJson(json)).toList();

      allData.addAll(newsdata);
    } else {
      throw Exception('Failed to load data from page $page');
    }
  }

  return allData;
}

class NewsData1 {
  final int id;
  final String judul_berita;
  final String id_kategori_berita;
  final String ringkasan;
  final String isi_berita;
  final String foto_berita;
  final String keterangan_foto;
  final String status_berita;
  final String views;
  final String link_berita;
  final String seo;
  final String id_admin;
  final String author;
  final String created_at;
  final String update_at;

  static List<NewsData1> newsdata = [];

  const NewsData1({
    required this.id,
    required this.judul_berita,
    required this.id_kategori_berita,
    required this.ringkasan,
    required this.isi_berita,
    required this.foto_berita,
    required this.keterangan_foto,
    required this.status_berita,
    required this.views,
    required this.link_berita,
    required this.seo,
    required this.id_admin,
    required this.author,
    required this.created_at,
    required this.update_at,
  });
  factory NewsData1.fromJson(Map<String, dynamic> json) {
    final fasilitas = NewsData1(
    id: json['id'],
    judul_berita: json['judul_berita'],
    id_kategori_berita: json['id_kategori_berita'],
    ringkasan: json['ringkasan'],
    isi_berita: json['isi_berita'],
    foto_berita: json['foto_berita'],
    keterangan_foto: json['keterangan_foto'],
    status_berita:  json['status_berita'],
    views: json['views'],
    link_berita: json['link_berita'],
    seo: json['seo'],
    id_admin: json['id_admin'],
    author: json['author'],
    created_at: json['created_at'],
    update_at: json['update_at'],
      // id: json['id'],
      // judul_berita: json['judul_berita'],
      // id_kategori_berita: json['id_kategori_berita'],
      // foto_berita: "https://diasporacirebonkab.online/core/public/gambarfasilitas/" +
      //     json['gambar'],
      // lokasi: json['lokasi'],
      // link_map: json['link_map'],
    );

    newsdata.add(fasilitas); // Menambahkan fasilitas ke dalam list

    return fasilitas;
  }
}
