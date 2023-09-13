//now let's for the details screen

import 'package:dispora_mobile_new/widget/custom_tag.dart';
import 'package:flutter/material.dart';
import 'package:dispora_mobile_new/widget/news_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Text(
                    widget.data.title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTag(
                        backgroundColor: Colors.black,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundImage: NetworkImage(
                              widget.data.urlToImage,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            widget.data.author,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      CustomTag(
                        backgroundColor: Colors.grey.shade200,
                        children: [
                          const Icon(
                            Icons.timer,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '${DateTime.now().difference(widget.data.ceratedAt).inHours}h',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      CustomTag(
                        backgroundColor: Colors.grey.shade200,
                        children: [
                          const Icon(
                            Icons.remove_red_eye,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            '${widget.data.pengunjung}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Hero(
                    tag: "${widget.data.title}",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.network(widget.data.urlToImage),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.data.content,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       widget.data.title,
              //       style: TextStyle(
              //         fontSize: 26.0,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     SizedBox(
              //       height: 8.0,
              //     ),
              //     Text(
              //       widget.data.author,
              //       style: TextStyle(
              //         color: Colors.black54,
              //       ),
              //       textAlign: TextAlign.center,
              //     ),
              //     SizedBox(
              //       height: 8.0,
              //     ),
                  
              // CustomTag(
              //   backgroundColor: Colors.grey.shade200,
              //   children: [
              //     const Icon(
              //       Icons.timer,
              //       color: Colors.grey,
              //     ),
              //     const SizedBox(width: 10),
              //     Text(
              //       '${DateTime.now().difference(widget.data.ceratedAt).inHours}h',
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     ),
              //   ],
              // ),
              // Text(
              //   widget.data.date!,
              //   style: TextStyle(
              //     color: Colors.black87,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              //       SizedBox(
              //         height: 5.0,
              //       ),
              //       CustomTag(
              //         backgroundColor: Colors.grey.shade200,
              //         children: [
              //           const Icon(
              //             Icons.remove_red_eye,
              //             color: Colors.grey,
              //           ),
              //           const SizedBox(width: 10),
              //           Text(
              //             '${widget.data.pengunjung}',
              //             style: Theme.of(context).textTheme.bodyMedium,
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         height: 9.0,
              //       ),
              //       Hero(
              //         tag: "${widget.data.title}",
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(30.0),
              //           child: Image.network(widget.data.urlToImage),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 30.0,
              //       ),
              //       Text(
              //         widget.data.content,
              //         style: TextStyle(color: Colors.black),
              //         textAlign: TextAlign.justify,
              //       )
              //     ],
              //   ),
              // ),
            ),
          ),
        ));
  }
}
