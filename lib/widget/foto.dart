import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class GalleryPage extends StatefulWidget {
//   @override
//   _GalleryPageState createState() => _GalleryPageState();
// }

// class _GalleryPageState extends State<GalleryPage> {
//   List<String> imageList = [
//     'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
//     'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
//     'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
//     'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
//     'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
//     'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',

//     // tambahkan gambar-gambar lainnya sesuai kebutuhan
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: StaggeredGridView.countBuilder(
//           crossAxisCount: 2, // jumlah kolom dalam grid
//           itemCount: imageList.length,
//           itemBuilder: (BuildContext context, int index) => Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8.0),
//               image: DecorationImage(
//                 // image: NetworkImage('${imageList[index]}'),
//                 image: NetworkImage(imageList[index]),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
//           mainAxisSpacing: 8.0,
//           crossAxisSpacing: 8.0,
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final List<String> listOfImageUrls = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Logo_Kemnaker.png/599px-Logo_Kemnaker.png'
    // 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clean-live-news-broadcast-youtube-thumbnail-design-template-5e199441ba704f9ad6f8f83fe571c4ea_screen.jpg?ts=1602538923',
    // 'https://c0.piktochart.com/v2/themes/3022-news-youtube-thumbnail/snapshot/large.jpg',
    // 'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/world-news-video-thumbnail-design-template-53991b1123cd5af44548f50d467dbdef_screen.jpg?ts=1634990244',
    // 'https://cdn-image.hipwee.com/wp-content/uploads/2019/05/hipwee-headline-news-baper-2-750x422.jpg',
    // 'https://gdb.voanews.com/0f8ecaea-4d18-419d-a857-b99d7e593ae2_tv_w1080_h608.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: listOfImageUrls.map((imageUrl) {
        return Image.network(imageUrl);
      }).toList(),
    );
  }
}
