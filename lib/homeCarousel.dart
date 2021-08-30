// ignore: import_of_legacy_library_into_null_safe
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_journal/journalDetail.dart';
import 'ImageDetail.dart';
import 'journalDetail.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCarousel extends StatelessWidget {
  HomeCarousel({Key? key}) : super(key: key);

  final List<ImageDetail> imageList = [
    ImageDetail('assets/images/bg1.png', 'Trip to Tokyo', 'March 21, 2019',
        'Tokyo life comes at night. Life at Tokyo is heaven which has to experienced once...'),
    ImageDetail(
        'assets/images/bg3.jpeg',
        'Trip to maldives',
        'October 15, 2021',
        'Tokyo life comes at night. Life at Tokyo is heaven which has to experienced once...'),
    ImageDetail('assets/images/bg2.png', 'Trip to Kabul', 'August 14, 2018',
        'Tokyo life comes at night. Life at Tokyo is heaven which has to experienced once...'),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        height: MediaQuery.of(context).size.height,
        // aspectRatio: 2 / 3,
        viewportFraction: 0.6,
      ),
      items: imageList
          .map(
            (e) => ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return JournalDetail(
                              image: e.image,
                              title: e.title,
                              date: e.date,
                              description: e.description);
                        }),
                      );
                    },
                    child: Image.asset(
                      e.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.title,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.04,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(e.date,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 3, 3, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () => null,
                              icon: SvgPicture.asset(
                                'assets/icons/Favorite_fill.svg',
                                fit: BoxFit.none,
                              ))
                        ],
                      ))
                ],
              ),
            ),
          )
          .toList(),
    ));
  }
}

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
