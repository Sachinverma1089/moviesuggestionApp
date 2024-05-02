import 'dart:html';

import 'package:flutter/material.dart';
import 'package:movieapp/pages/errorhandling.dart';
import 'package:movieapp/utils/text.dart';

class Description extends StatelessWidget {
  final String? name, description, bannerurl, posterurl, vote, launch_on;
  const Description(
      {Key? key,
      this.name,
      this.description,
      this.bannerurl,
      this.posterurl,
      this.vote,
      this.launch_on})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                      child: Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: bannerurl != null
                              ? Image.network(
                                  bannerurl!,
                                  fit: BoxFit.cover,
                                )
                              : ErrorHandling())),
                  Positioned(
                      bottom: 10,
                      child: modified_text(
                        text: vote != null
                            ? ' ⭐ Average Rating - ' + vote!
                            : 'Loading',
                        size: 18,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: modified_text(
                text: name != null ? name : "Not Loaded",
                size: 24,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: modified_text(
                text: launch_on != null
                    ? 'Releasing On - ' + launch_on!
                    : "Loading",
                size: 14,
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: 200,
                  width: 100,
                  child: posterurl != null
                      ? Image.network(posterurl!)
                      : ErrorHandling(),
                ),
                Flexible(
                  child: Container(
                    child: modified_text(
                      text: description != null ? description : "Loading",
                      size: 18,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
