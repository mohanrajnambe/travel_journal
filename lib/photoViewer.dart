import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoViewer extends StatelessWidget {
  PhotoViewer({Key? key}) : super(key: key);

  final List<String> imageList = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img4.png',
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img4.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 30,
        toolbarHeight: MediaQuery.of(context).size.height * 0.10,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(right: 10, bottom: 12),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.insert_photo_outlined,
                    size: 40,
                    color: Colors.grey[800],
                  )),
            ),
            Text(
              MediaQuery.of(context).size.width > 310 ? 'Photos' : '',
              style: GoogleFonts.poppins(
                  color: Colors.grey[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: false,
        leading: Container(
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 40,
                color: Colors.grey[800],
              )),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle,
                  size: 40,
                  color: Colors.grey[800],
                )),
          )
        ],
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        // Generate 100 widgets that display their index in the List.
        children: imageList
            .map((e) => Container(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        e,
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      )),
                ))
            .toList(),
      ),
    );
  }
}
