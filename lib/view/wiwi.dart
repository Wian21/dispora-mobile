import 'package:dispora_mobile_new/view/beranda.dart';
import 'package:dispora_mobile_new/view/tentangdisporabaru.dart';
import 'package:flutter/material.dart';

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

class StrukturOrganisasi extends StatefulWidget {
  const StrukturOrganisasi({super.key});

  @override
  State<StrukturOrganisasi> createState() => _StrukturOrganisasi();
}

class _StrukturOrganisasi extends State<StrukturOrganisasi> {
  TextEditingController fromdate = TextEditingController();
  TextEditingController untildate = TextEditingController();
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
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  BackButton(
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Struktur Organisasi',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 30,
                            horizontal: 25.0,
                          ),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  CustomPaint(
                                    size: Size(
                                        30,
                                        (32 * 1.03125)
                                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                    painter: RPSCustomPainter(),
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    'Dispora Cirebon',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 30),
                                  Container(
                                    height: 2,
                                    width: 310,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFCBCCE8),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Drs. SUTIKNO, Ap., M.si',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('Kepala Dinas')
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Drs. ASEP GANDANA',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text('Sekretaris')
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'MERRY PAULINA S,S.Pd.,MM',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Sub Bagian Umum dan Kepegawaian',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Yeni Ardiyanti Effendi, SE',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Fungsional Perencana Ahli Muda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan perencanaan kepemudaan ',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Agung Kemal Hasan, ST.,MM',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                        'Kepala Bidang Keolahragaan')
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Abdul Sholeh, S.Pd., M.Pd',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                        'Kepala Bidang Kepemudaan')
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Casudi, S.AP',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Fungsional Analis Kebijakan Ahli Muda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Sub Koordinator Olahraga Pendidikan',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Rekreasi',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Eka Madiya, S.Pd',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Fungsional Analis Kebijakan Ahli Muda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Sub Koordinator Olahraga Prestasi',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Ade Suparman, S.Fil.I',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Fungsional Analis Kebijakan Ahli Muda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Sub Koordinator Olahraga Pembinaan',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Pengembangan Organisasi Olahraga',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Nunung Kurniasih, SE',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Fungsional Analis Kebijakan Ahli Muda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Sub Koordinator Pemberdayaan',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Pengembangan Pemuda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Rahardjo, S.Sos., M.Si',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Fungsional Analis Kebijakan Ahli Muda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Sub Koordinator Pemberdayaan',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Pengembangan Organisasi Pemuda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Titin Supriyatin, S.ST',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Fungsional Analis Kebijakan Ahli Muda',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'dan Sub Koordinator Pengembangan',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Kapasitas Kepramukaan',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Iranto Ridarto, S.Kom',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Kepala UPT Pembibitan dan',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Pembibitan Olahraga',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width: 310,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(5),
                                        border: Border.all(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 84, 41, 255))),
                                    child: Container(
                                      child: Column(children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Image.asset(
                                                    'assets/image/p.png'),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      'Dini Novianti, S.Sos',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      'Kasubag TU UPT PPOR',
                                                      style: TextStyle(
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
