import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homify_app/ui/widgets/button_cta.dart';
import '../../shared/theme.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 530,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'house_splash.png',
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 30,
                        ),
                        width: 148,
                        height: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('logo.png'),
                        )),
                      ),
                      Text(
                        'Penginapan Nyaman untuk Vacation',
                        style: titleBlue.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                        style: GoogleFonts.poppins(
                          color: secondaryBlue,
                          fontWeight: light,
                          fontSize: 16,
                        ),
                      ),
                      ButtonCTA(
                        textButton: 'Jelajahi Sekarang',
                        widthButton: 210,
                        warna: primaryBlue,
                        text: yellowText,
                        onClick: () {
                          Navigator.pushNamed(context, '/home-page');
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
