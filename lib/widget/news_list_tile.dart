import 'dart:ffi';

import 'package:dispora_mobile_new/widget/Newsmodel2.dart';
import 'package:dispora_mobile_new/widget/custom_tag.dart';
import 'package:flutter/material.dart';
import 'package:dispora_mobile_new/widget/Newsmodel2.dart';
//import 'package:dispora_mobile_new/widget/news_model.dart';
import 'package:dispora_mobile_new/widget/details_screen.dart';

class NewsListTile extends StatefulWidget {
  NewsListTile(this.data, {Key? key}) : super(key: key);
  NewsData1 data;
  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
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
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(12.0),
        height: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1.2, color: Colors.deepPurple)),
        child: Row(
          children: [
            Flexible(
              flex: 3,
              child: Hero(
                tag: "${widget.data.judul_berita}",
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(widget.data.foto_berita),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Flexible(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.data.judul_berita,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.timer,
                          color: Colors.grey,
                        ),
                        Text(
                          '${widget.data.created_at}h',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        Text(
                          '${widget.data.views}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    // Text(widget.data.content,
                    //     overflow: TextOverflow.ellipsis,
                    //     style: TextStyle(
                    //       color: Colors.black54,
                    //     ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
