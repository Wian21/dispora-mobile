import 'package:dispora_mobile_new/view/tentangdisporabaru.dart';
import 'package:flutter/material.dart';

class profilekepalabaru extends StatelessWidget {
  const profilekepalabaru({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tentangdispora(),
                            ));
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 10,
                    ),
                    Text(
                      'Profil Kepala',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/image/kepala_dispora.png',
                    width: 250,
                    height: 350,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Positioned(
                  bottom: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Biografi Kepala Dispora',
                          style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'halo ini dengan wianur intiya angesti asal sekolh sman 1 kandanghaur hai anak anak semuanya yang nanti kan melihat tulisan ini percayalahkalian itu hebat bisa diandalkan dan kalian sudh melakukan hal luar biasa jangan takut untuk menjadi diri sendiri karena jadi diri sendiri itu sangat luar biasa hai kalian semua pasti bisa lakukan ini semua dan pasti bisa menjalani ini semua semnagat semuanya.',
                          maxLines: 10,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(height: 1.75, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
