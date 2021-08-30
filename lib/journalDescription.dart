import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JournalDescription extends StatelessWidget {
  const JournalDescription({Key? key, required this.title}) : super(key: key);

  final String title;
  final String description =
      '      Tokyo is the most well-known city in Asia, and one of the biggest cities in the world. Clocking in at over 13 million people, this Japanese district is an icon in both history and pop culture. Its a popular vacation spot for Westerners, but some Westerners go further than that. With Japan ranking the third biggest economy in the world, Tokyo is a commercial metropolis, and the number of immigrants and foreigners living there continues to go\n\n     For what garbage there is, people recycle. Most public trash bin areas are divided into cans, plastics, non-combustibles and combustibles, and recycling becomes easy even for the lazy. If you live in Japan, you will also be required to recycle, and must keep an eye on the garbage collection schedule - combustibles on Tuesdays and Fridays, maybe, PET bottles on Wednesday, and so on. Trying to figure out what bin your old toothbrush or used can of hairspray goes in can be a pain, but you will feel much better about your waste when you take the step to be greener.\n\n     Even in busy Tokyo, there are shrines and temples everywhere. The religious spots of Shinto and Buddhism, and they are best suited in secluded nature areas. Its amazing what you can find down a small alleyway in the middle of big city areas. One famous shrine, Meiji-Jingu, is in the heart of noise Harajuku, but once you take a walk in the forested park to get there, you might think you were in the middle of the country. Tiny shrines can also be found next to convenience stores, hidden between apartment buildings, almost anywhere.\n\n       Can\'t speak Japanese? You\'re probably fine! Tokyo signs generally use English and Japanese both, a mark of an increasingly international and globalized city. Of course, if you are planning on living in Japan, I strongly recommend studying the language, but I have known people who have lived there for a decade or more and cannot say much more than "konnichi wa."';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2A2F3D),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 40,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(this.title,
            style: GoogleFonts.poppins(
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text(
            this.description,
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.height * 0.025),
          ),
        ),
      ),
    );
  }
}
