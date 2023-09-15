import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'fasilitas_model.dart';

class FasilitasScreen extends StatelessWidget {
  final Fasilitas_model fasilitas_model;
  const FasilitasScreen({super.key, required this.fasilitas_model});
  // final link = "https://diasporacirebonkab.online/core/public/gambarfasilitas/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ...[
            Container(
              height: double.maxFinite,
              color: const Color(0xFFCBCCE8),
            ),
            Image.network(
              fasilitas_model.gambar,
              height: MediaQuery.of(context).size.height * 0.5,
              fit: BoxFit.cover,
            ),
            const Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(255, 255, 255, 255)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.4, 0.6],
                  ),
                ),
              ),
            ),
          ],
          _buildFasilitasInformation(context),
          Positioned(
              bottom: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(10),
                        primary: const Color.fromARGB(255, 84, 41, 255),
                        fixedSize:
                            Size(MediaQuery.of(context).size.width * 0.95, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.white),
                          children: [
                            TextSpan(
                              text: 'Lihat Di Maps',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Positioned _buildFasilitasInformation(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height - 460,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              fasilitas_model.judul_fasilitas,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '${fasilitas_model.lokasi}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${fasilitas_model.deskripsi}',
              maxLines: 10,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(height: 1.75, color: Colors.black),
              // 'Halo ini dengan sodara wian dari politenik negeri indramayu syalahir di indramayu 2 juli 2001 saya memiliki 2 orang adik saya masuk polindra padatahun 2021dan bertemu seorang laki laki yang saya cintai lewat PKJTI dia bernama lucky dawamuz dzikri dia sangat lucu tampan dan saya sangat menyukainya.',
              // maxLines: 10,
              // style: Theme.of(context)
              //     .textTheme
              //     .bodySmall!
              //     .copyWith(height: 1.75, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
