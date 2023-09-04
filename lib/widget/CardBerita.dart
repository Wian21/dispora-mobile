import 'package:flutter/material.dart';

class CardBerita extends StatelessWidget {
  const CardBerita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 7, top: 5),
                    child: Text(
                      '''Seorang anak
menemukan mteor ''',
                      style: TextStyle(
                        fontSize: 23,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Color.fromARGB(255, 84, 41, 255)),
                        child: Text(
                          'Berita',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "1 jam yang lalu",
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent,
                ),
              )
            ],
          )),
    );
  }
}

class WidgetBerita extends StatefulWidget {
  const WidgetBerita({super.key});

  @override
  State<WidgetBerita> createState() => _WidgetBeritaState();
}

class _WidgetBeritaState extends State<WidgetBerita> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
