import 'package:dispora_mobile_new/view/tentangdisporabaru.dart';
import 'package:flutter/material.dart';

class VisiMisi extends StatelessWidget {
  const VisiMisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
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
                  //mainAxisAlignment: MainAxisAlignment.center,
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
                      'Visi dan Misi',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
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
                    'Visi',
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
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "visi misinya ialah memajukan dinas keolahragaan cirebon menjadi wadah bagiseluruhmasyarakatcirebon agar nantinya bisa menjadi kota yang besar dan hebat dengan adanya sebuah keolahragaan ini",
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 40),
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
                    'Misi',
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
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "visi misinya ialah memajukan dinas keolahragaan cirebon menjadi wadah bagiseluruhmasyarakatcirebon agar nantinya bisa menjadi kota yang besar dan hebat dengan adanya sebuah keolahragaan ini",
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
