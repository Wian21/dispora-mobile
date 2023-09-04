import 'package:dispora_mobile_new/view/tentangdisporabaru.dart';
import 'package:flutter/material.dart';

class ProfileKepalaDispora extends StatefulWidget {
  const ProfileKepalaDispora({super.key});

  @override
  State<ProfileKepalaDispora> createState() => _ProfileKepalaDisporaState();
}

class _ProfileKepalaDisporaState extends State<ProfileKepalaDispora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
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
        height: 10,
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/image/Group 125.png',
                width: 300,
                height: 300,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
          child: Row(children: [
        SizedBox(
          width: 25,
        ),
        Center(
          child: Container(
            width: 310,
            height: 245,
            decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: Colors.white, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: const Offset(3.0, 5.0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  )
                ]),
            child: Container(
                margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 10,
                  bottom: 10,
                ),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/image/ig.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/image/fb.png',
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [Image.asset('assets/image/tw.png')],
                          )
                        ],
                      )
                    ],
                  )
                ])),
          ),
        )
      ]))
    ]));
  }
}
