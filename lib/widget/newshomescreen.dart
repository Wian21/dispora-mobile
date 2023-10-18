import 'dart:ffi';

import 'package:dispora_mobile_new/widget/Newsmodel2.dart';
import 'package:dispora_mobile_new/widget/custom_tag.dart';
import 'package:dispora_mobile_new/widget/image_container.dart';
import 'package:flutter/material.dart';
import 'package:dispora_mobile_new/widget/news_model.dart';
import 'package:dispora_mobile_new/widget/details_screen.dart';

class NewsList extends StatefulWidget {
  NewsList(this.data, {Key? key}) : super(key: key);
  NewsData1 data;
  @override
  State<NewsList> createState() => _NewsList();
}

class _NewsList extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(widget.data),
            ));
      },
        child: Row(
                          children: [
                            ImageContainer(
                              width: 80,
                              height: 80,
                              margin: const EdgeInsets.all(10.0),
                              borderRadius: 5,
                              imageUrl: widget.data.foto_berita,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.data.judul_berita,
                                    maxLines: 2,
                                    overflow: TextOverflow.clip,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.schedule,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '${widget.data.created_at} hours ago',
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(width: 20),
                                      const Icon(
                                        Icons.visibility,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '${widget.data.views} views',
                                        style: const TextStyle(fontSize: 12),
                                      ),])]))])
      // child: Container(
      //   width: double.infinity,
      //   margin: EdgeInsets.only(bottom: 20.0),
      //   padding: EdgeInsets.all(12.0),
      //   height: 130,
      //   decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(15),
      //       border: Border.all(width: 1.2, color: Colors.deepPurple)),
      //   child: Row(
      //     children: [
      //       Flexible(
      //         flex: 3,
      //         child: Hero(
      //           tag: "${widget.data.title}",
      //           child: Container(
      //             height: 100.0,
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(8.0),
      //               image: DecorationImage(
      //                 image: NetworkImage(widget.data.urlToImage),
      //                 fit: BoxFit.fitHeight,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: 10.0,
      //       ),
      //       Flexible(
      //           flex: 5,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //             children: [
      //               Text(
      //                 widget.data.title,
      //                 style: TextStyle(
      //                     color: Colors.black, fontWeight: FontWeight.bold),
      //               ),
      //               SizedBox(
      //                 height: 15,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.start,
      //                 children: [
      //                   const Icon(
      //                     Icons.timer,
      //                     color: Colors.grey,
      //                   ),
      //                   Text(
      //                     '${DateTime.now().difference(widget.data.ceratedAt).inHours}h',
      //                     style: Theme.of(context).textTheme.bodySmall,
      //                   ),
      //                   SizedBox(
      //                     width: 10,
      //                   ),
      //                   const Icon(
      //                     Icons.remove_red_eye,
      //                     color: Colors.grey,
      //                   ),
      //                   Text(
      //                     '${widget.data.pengunjung}',
      //                     style: Theme.of(context).textTheme.bodySmall,
      //                   ),
      //                 ],
      //               ),
      //               // Text(widget.data.content,
      //               //     overflow: TextOverflow.ellipsis,
      //               //     style: TextStyle(
      //               //       color: Colors.black54,
      //               //     ))
      //             ],
      //           ))
      //     ],
      //   ),
      // ),
    );
  }
}
