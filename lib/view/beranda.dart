import 'package:dispora_mobile_new/view/login.dart';
import 'package:dispora_mobile_new/widget/breaking_news_card.dart';
import 'package:dispora_mobile_new/widget/news_list_tile.dart';
import 'package:dispora_mobile_new/widget/news_model.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'menu.dart';
import 'package:url_launcher/url_launcher.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  List<String> imageList = [
    'assets/image/logo.png',
    'assets/image/bola.jpg',
    'assets/image/kursiroda.jpg',
    'assets/image/lapangan.jpg',
    'assets/image/paskibra.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.white, //deepPurple[400],
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pilihan()));
                          },
                          icon: Icon(
                            Icons.dashboard,
                            size: 30,
                          )),
                      Container(
                        child: Row(
                          children: [
                            CustomPaint(
                              size: Size(
                                  32,
                                  (32 * 1.03125)
                                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                              painter: RPSCustomPainter(),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Dispora Cirebon',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      // Container(
                      //   width: 40,
                      //   height: 40,
                      //   child: IconButton(
                      //       onPressed: () {
                      //         Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => SignIn()));
                      //       },
                      //       icon: Icon(
                      //         Icons.login_rounded,
                      //         size: 30,
                      //       )),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  child: TextFormField(
                      decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 84, 41, 255),
                        ),
                        child: Text(
                          'Pelayanan',
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        // color: Colors.white,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Colors.deepPurple),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: MaterialButton(
                          onPressed: () async {
                            final url = Uri.parse(
                                'https://diasporacirebonkab.online/list-gor');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                              print('clicked');
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/image/lapangan.jpg'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'E-BOOKING',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.deepPurple)),
                        child: MaterialButton(
                          onPressed: () async {
                            final url = Uri.parse(
                                'https://diasporacirebonkab.online/atlet/login');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                              print('clicked');
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/image/icon_atlet.png'),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'ATLET',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(width: 1, color: Colors.deepPurple)),
                        child: MaterialButton(
                          onPressed: () async {
                            final url = Uri.parse(
                                'https://diasporacirebonkab.online/organisasikepemudaan');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                              print('clicked');
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/image/okp.png'),
                              Text(
                                'OKP',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 160, //170
                        height: 35, //40
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 84, 41, 255),
                        ),
                        child: Text(
                          'Berita Terkini',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 5,
                        width: 135,
                        color: Color.fromARGB(255, 84, 41, 255),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: MediaQuery.of(context).size.width
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Breaking News",
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //let's build our caroussel
                        CarouselSlider.builder(
                            itemCount: NewsData.breakingNewsData.length,
                            itemBuilder: (context, index, id) =>
                                BreakingNewsCard(
                                    NewsData.breakingNewsData[index]),
                            options: CarouselOptions(
                              aspectRatio: 16 / 9,
                              enableInfiniteScroll: false,
                              enlargeCenterPage: true,
                            )),
                        SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          "Recent News",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        //now let's create the cards for the recent news
                        Column(
                          children: NewsData.recentNewsData
                              .map((e) => NewsListTile(e))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 30,
                // ),
                // Container(
                //   alignment: Alignment.center,
                //   width: MediaQuery.of(context).size.width,
                //   height: 470,
                //   color: Colors.white,
                //   child: Expanded(
                //     child: ListView.builder(
                //       itemCount: 5,
                //       itemBuilder: (context, index) {
                //         return Container(
                //             width: 300,
                //             height: 150,
                //             margin: EdgeInsets.all(2),
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(15),
                //                 image: DecorationImage(
                //                     fit: BoxFit.cover,
                //                     image: NetworkImage(
                //                         'https://blog.logrocket.com/wp-content/uploads/2022/08/newscard.jpg'))));
                //       },
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 84, 41, 255),
                        ),
                        child: Text(
                          'Event',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
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
                SizedBox(
                  height: 10,
                ),
                Card(
                    elevation: 1,
                    child: CarouselSlider(
                      options: CarouselOptions(height: 60, autoPlay: true),
                      items: [
                        'assets/image/event1.png',
                        'assets/image/event2.png',
                        'assets/image/event3.png',
                      ].map((i) {
                        return Container(
                          margin: EdgeInsets.only(left: 30, right: 30),
                          width: 300,
                          height: 60,
                          // color: Colors.white,
                          // child: Image.asset(e)
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(i)),
                              color: Colors.white),
                        );
                      }).toList(),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, size.height * 0.6711242);
    path_0.cubicTo(
        size.width * 0.4025375,
        size.height * 0.6711242,
        size.width * 0.3235281,
        size.height * 0.5945091,
        size.width * 0.3235281,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.3235281,
        size.height * 0.4054909,
        size.width * 0.4025375,
        size.height * 0.3288788,
        size.width * 0.5000000,
        size.height * 0.3288788);
    path_0.cubicTo(
        size.width * 0.5974594,
        size.height * 0.3288788,
        size.width * 0.6764687,
        size.height * 0.4054909,
        size.width * 0.6764687,
        size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.6764687,
        size.height * 0.5945091,
        size.width * 0.5974594,
        size.height * 0.6711242,
        size.width * 0.5000000,
        size.height * 0.6711242);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffAE9AFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1595444, size.height * 0.5691545);
    path_1.cubicTo(
        size.width * 0.1089616,
        size.height * 0.5776455,
        size.width * 0.07428938,
        size.height * 0.6241606,
        size.width * 0.09370656,
        size.height * 0.6694303);
    path_1.cubicTo(
        size.width * 0.1208153,
        size.height * 0.7326273,
        size.width * 0.1640638,
        size.height * 0.7889364,
        size.width * 0.2201322,
        size.height * 0.8329364);
    path_1.cubicTo(
        size.width * 0.3003059,
        size.height * 0.8958515,
        size.width * 0.4014281,
        size.height * 0.9294697,
        size.width * 0.5053156,
        size.height * 0.9277424);
    path_1.cubicTo(
        size.width * 0.6092000,
        size.height * 0.9260182,
        size.width * 0.7090313,
        size.height * 0.8890606,
        size.width * 0.7868500,
        size.height * 0.8235182);
    path_1.cubicTo(
        size.width * 0.8412688,
        size.height * 0.7776848,
        size.width * 0.8824281,
        size.height * 0.7199727,
        size.width * 0.9072062,
        size.height * 0.6559121);
    path_1.cubicTo(
        size.width * 0.9249500,
        size.height * 0.6100242,
        size.width * 0.8885937,
        size.height * 0.5646909,
        size.width * 0.8377281,
        size.height * 0.5578848);
    path_1.cubicTo(
        size.width * 0.7868688,
        size.height * 0.5510818,
        size.width * 0.7412000,
        size.height * 0.5863242,
        size.width * 0.7160781,
        size.height * 0.6289727);
    path_1.cubicTo(
        size.width * 0.7024594,
        size.height * 0.6520909,
        size.width * 0.6847813,
        size.height * 0.6730636,
        size.width * 0.6636000,
        size.height * 0.6909000);
    path_1.cubicTo(
        size.width * 0.6189531,
        size.height * 0.7285061,
        size.width * 0.5616719,
        size.height * 0.7497091,
        size.width * 0.5020719,
        size.height * 0.7507030);
    path_1.cubicTo(
        size.width * 0.4424656,
        size.height * 0.7516909,
        size.width * 0.3844437,
        size.height * 0.7324030,
        size.width * 0.3384437,
        size.height * 0.6963030);
    path_1.cubicTo(
        size.width * 0.3166219,
        size.height * 0.6791818,
        size.width * 0.2981881,
        size.height * 0.6588091,
        size.width * 0.2837300,
        size.height * 0.6361576);
    path_1.cubicTo(
        size.width * 0.2570594,
        size.height * 0.5943697,
        size.width * 0.2101272,
        size.height * 0.5606636,
        size.width * 0.1595444,
        size.height * 0.5691545);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffAE9AFF).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9377625, size.height * 0.5425667);
    path_2.cubicTo(
        size.width * 0.9400156,
        size.height * 0.5254485,
        size.width * 0.9411750,
        size.height * 0.5080121,
        size.width * 0.9411750,
        size.height * 0.4903152);
    path_2.cubicTo(
        size.width * 0.9411750,
        size.height * 0.2593921,
        size.width * 0.7436563,
        size.height * 0.07219152,
        size.width * 0.5000000,
        size.height * 0.07219152);
    path_2.cubicTo(
        size.width * 0.2563441,
        size.height * 0.07219152,
        size.width * 0.05882250,
        size.height * 0.2593921,
        size.width * 0.05882250,
        size.height * 0.4903152);
    path_2.cubicTo(
        size.width * 0.05882250,
        size.height * 0.5130242,
        size.width * 0.06073281,
        size.height * 0.5353121,
        size.width * 0.06440969,
        size.height * 0.5570394);
    path_2.cubicTo(
        size.width * 0.08467375,
        size.height * 0.5307485,
        size.width * 0.1163009,
        size.height * 0.5119788,
        size.width * 0.1504625,
        size.height * 0.5062727);
    path_2.cubicTo(
        size.width * 0.1874241,
        size.height * 0.5000939,
        size.width * 0.2210162,
        size.height * 0.5085909,
        size.width * 0.2494187,
        size.height * 0.5244697);
    path_2.cubicTo(
        size.width * 0.2477409,
        size.height * 0.5133152,
        size.width * 0.2468725,
        size.height * 0.5019121,
        size.width * 0.2468725,
        size.height * 0.4903152);
    path_2.cubicTo(
        size.width * 0.2468725,
        size.height * 0.3578242,
        size.width * 0.3602031,
        size.height * 0.2504158,
        size.width * 0.5000000,
        size.height * 0.2504158);
    path_2.cubicTo(
        size.width * 0.6397969,
        size.height * 0.2504158,
        size.width * 0.7531250,
        size.height * 0.3578242,
        size.width * 0.7531250,
        size.height * 0.4903152);
    path_2.cubicTo(
        size.width * 0.7531250,
        size.height * 0.4990515,
        size.width * 0.7526312,
        size.height * 0.5076788,
        size.width * 0.7516719,
        size.height * 0.5161727);
    path_2.cubicTo(
        size.width * 0.7794750,
        size.height * 0.4993545,
        size.width * 0.8127406,
        size.height * 0.4897485,
        size.width * 0.8499125,
        size.height * 0.4947000);
    path_2.cubicTo(
        size.width * 0.8842562,
        size.height * 0.4992758,
        size.width * 0.9165437,
        size.height * 0.5169758,
        size.width * 0.9377625,
        size.height * 0.5425667);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff5429FF).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

// class ItemCard extends StatelessWidget {
//   // final String title;

//   // const ItemCard({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.8,
//       height: MediaQuery.of(context).size.height * 0.6,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
//         boxShadow: [
//           BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 2),
//         ],
//       ),
//       child: Center(
//         child: Text('title'),
//       ),
//     );
//   }
// }
