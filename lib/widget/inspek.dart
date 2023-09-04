import 'package:flutter/material.dart';

class Inspek extends StatefulWidget {
  const Inspek({super.key});

  @override
  State<Inspek> createState() => _InspekState();
}

List<String> listImage = [
  'assets/image/logo.png',
  'assets/image/bola.jpg',
  'assets/image/kursiroda.jpg',
  'assets/image/lapangan.jpg',
  'assets/image/paskibra.jpg'
];

class _InspekState extends State<Inspek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 400,
          // color: Colors.amberAccent,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(listImage[0]))),
        ),
      ),
    );
  }
}

// class Inspex extends StatefulWidget {
//   const Inspex({super.key});

//   @override
//   State<Inspex> createState() => _InspexState();
// }

// class _InspexState extends State<Inspex> {
//   List<String> listImage = [
//     'assets/image/logo.png',
//     'assets/image/bola.jpg',
//     'assets/image/kursiroda.jpg',
//     'assets/image/lapangan.jpg',
//     'assets/image/paskibra.jpg'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         contai
//       ),
//     );
//   }
// }
