import 'package:dispora_mobile_new/view/tentangdisporabaru.dart';
import 'package:flutter/material.dart';

class Tupoksi extends StatelessWidget {
  const Tupoksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFCBCCE8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
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
                    Text(
                      'Tupoksi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
            width: 50,
          ),
          Container(
            child: Row(children: [
              SizedBox(
                width: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(255, 84, 41, 255),
                ),
                child: Text(
                  'Tugas Pokok',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 5,
                width: 175,
                color: Color.fromARGB(255, 84, 41, 255),
              ),
            ]),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Container(
                width: 310,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFCBCCE8)),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Tupoksi dari radar cirebon ialah memajukan kualitas hidup mmanusia di cirebon contohnya seperti lucky karena dia sangat mempesona dan sangat baik halnya dengan baekhytun dan chanyeolm  yangt selalu ada dalam setiap mimpi mimpi ku dan juga setiap hari ada dalam bayangan tidurku  terimakasih untuk semua di dalam cerita penuh kegembiraan ini aku sangat menyayangi kalian semua dsn aku sangat menjunjung tinggi kualitas hidup sesama manusia',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromARGB(255, 84, 41, 255),
                  ),
                  child: Text(
                    'Fungsi',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 5,
                  width: 175,
                  color: Color.fromARGB(255, 84, 41, 255),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                width: 310,
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFCBCCE8)),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'FUngsi dari ini adalah mencerminkan nilai nilai baik daari setiap elemen yang dengan mewujudkan sistem yang kompatibel dalam menunjang keberlangsungannnnn keamanan dari dunia ini hahahahah apakabar kalian apakah sudah mendapatkan ketenangan dalam menunjanng aktifitas selama ini salam sehat dari saya selaku penyekenggara kebersihan lingkungan ini ',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
