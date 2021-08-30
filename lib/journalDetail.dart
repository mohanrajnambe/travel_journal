import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'journalDescription.dart';

class JournalDetail extends StatefulWidget {
  const JournalDetail(
      {Key? key,
      required this.image,
      required this.title,
      required this.date,
      required this.description})
      : super(key: key);

  final String image;
  final String title;
  final String date;
  final String description;

  @override
  _JournalDetailState createState() => _JournalDetailState();
}

class _JournalDetailState extends State<JournalDetail> {
  bool _favourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          height: MediaQuery.of(context).size.height * 0.9,
          padding: EdgeInsets.all(6),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: AssetImage(widget.image),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 3, 3, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () => {
                                  Navigator.pop(context),
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_left,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _favourite = !_favourite;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite,
                                    color: _favourite
                                        ? Color(0xFFFF4F61)
                                        : Colors.white,
                                    size: 30,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                widget.title,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.04,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(widget.date,
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                      fontWeight: FontWeight.w500))
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              GestureDetector(
                onVerticalDragUpdate: (DragUpdateDetails dragUpdateDetails) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return JournalDescription(title: widget.title);
                    }),
                  );
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              'Journal',
                              style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF2A2F3D)),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return JournalDescription(
                                      title: widget.title);
                                }),
                              );
                            },
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.white,
                                ),
                                foregroundColor: MaterialStateProperty.all(
                                  Colors.grey,
                                )),
                            icon: Icon(Icons.keyboard_arrow_up),
                            label: Text(
                              'Swipe up to Read',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.13,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            'Tokyo comes to life at night.. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo. The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo The best places to experience nightlife in Tokyo are Shinjuku, Shibuya, Ginza, Roppongi and Tokyo Tower. In Tokyo',
                            overflow: TextOverflow.ellipsis,
                            maxLines:
                                ((MediaQuery.of(context).size.height * 0.13) /
                                        18.0)
                                    .floor(),
                            style: GoogleFonts.poppins(
                              fontSize:
                                  (MediaQuery.of(context).size.height * 0.02),
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF7984A1),
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(6),
          height: MediaQuery.of(context).size.height * 0.1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: GestureDetector(
              onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    'Access Restricted',
                  ),
                  content: const Text(
                      'You are not authorized to edit this.\nContact Mohan !!!'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: BottomAppBar(
                color: Color(0xFF2A2F3D),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Edit Journal   ',
                      style: GoogleFonts.poppins(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
