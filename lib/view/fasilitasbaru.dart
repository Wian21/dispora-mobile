import 'package:dispora_mobile_new/view/beranda.dart';
import 'package:dispora_mobile_new/widget/fasilitas_item.dart';
import 'package:dispora_mobile_new/widget/fasilitas_model.dart';
import 'package:flutter/material.dart';

import '../widget/fasilitas_screen.dart';

class fasilitasku extends StatelessWidget {
  const fasilitasku({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Fasilitas_model>>(
      future: fetchAllData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Tampilkan indikator loading jika data belum tersedia.
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final List<Fasilitas_model> fasilitasModels = snapshot.data!;

          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 120,
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Beranda(),
                        ));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  )),
              flexibleSpace: ClipPath(
                clipper: _CustomClipper(),
                child: Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFCBCCE8),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Container(
                        child: Text(
                          'Fasilitas',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            extendBodyBehindAppBar: true,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline6,
                        children: [
                          TextSpan(
                            text: 'Featured',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(text: 'Fasilitasion'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 70),
                    for (final fasilitasModel in fasilitasModels)
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FasilitasScreen(
                                  fasilitas_model:
                                      fasilitasModel), // Ganti nama variabel
                            ),
                          );
                        },
                        child: FasilitasListItem(
                          imageUrl:
                              fasilitasModel.gambar, // Ganti nama variabel
                          name: fasilitasModel
                              .judul_fasilitas, // Ganti nama variabel
                          information:
                              '${fasilitasModel.lokasi}', //| ${Fasilitas_model.keterangan}',
                        ),
                      ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();

    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
