import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homeCarousel.dart';
import 'photoViewer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          height: 46,
          width: 126,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.fromLTRB(22, 22, 0, 22),
          // padding: EdgeInsets.all(10),
          // padding: EdgeInsets.all(10),
          child: ClipRRect(
            child: Image.asset(
              'assets/images/profile.png',
              fit: BoxFit.none,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        actions: [
          Container(
            // height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffFAFAFA),
            ),
            width: 45,
            child: SvgPicture.asset(
              'assets/icons/Setting_alt_fill.svg',
              fit: BoxFit.none,
            ),
            margin: EdgeInsets.fromLTRB(0, 22, 22, 22),
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.fromLTRB(30, 5, 55, 10),
          child: Text(
            'Your Journals',
            style: GoogleFonts.poppins(
              height: 0.9,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.065,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
              child: Center(
            child: HomeCarousel(),
          )),
        ),
      ]),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(42, 30, 42, 23),
        height: MediaQuery.of(context).size.height * 0.15,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: BottomAppBar(
                color: Colors.grey[200],
                elevation: 2,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.10,
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text(
                              'Download Unavailable',
                            ),
                            content: const Text('I won\'t spam your storage'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                        icon: SvgPicture.asset(
                          'assets/icons/Arhive_load_fill.svg',
                          fit: BoxFit.none,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return PhotoViewer();
                            }),
                          );
                        },
                        icon: SvgPicture.asset(
                          'assets/icons/Img_box_fill.svg',
                          fit: BoxFit.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width * 0.18,
              child: FloatingActionButton(
                onPressed: () => null,
                child: const Icon(
                  Icons.add,
                  size: 40,
                ),
                backgroundColor: Colors.grey[900],
                elevation: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
