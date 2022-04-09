import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:homify_app/ui/widgets/button_cta.dart';
import 'package:homify_app/ui/widgets/fasilitas.dart';
import 'package:homify_app/ui/widgets/foto.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../shared/theme.dart';

class detailPage extends StatelessWidget {
  const detailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        throw (url);
      }
    }

    Widget locationDetail() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: yellowText.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jln. Sukses Bersama No. 48',
                      style: grayText.copyWith(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Surabaya',
                      style: grayText.copyWith(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    launchUrl('https://www.google.com/maps/?hl=id');
                  },
                  child: Container(
                    padding: EdgeInsets.all(9),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: primaryYellow,
                    ),
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'location.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget photosFacilities() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photos',
              style: yellowText.copyWith(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  fotoFasilitas(namafile: 'foto1'),
                  fotoFasilitas(namafile: 'foto2'),
                  fotoFasilitas(namafile: 'foto3'),
                  fotoFasilitas(namafile: 'foto1'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'larriat.png',
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 24,
                    left: 24,
                    top: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back Button
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/home-page');
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: primaryYellow,
                            borderRadius: BorderRadius.circular(1000),
                          ),
                          child: Center(
                            child: Image.asset(
                              'back_arrow.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                      // Like Button
                      Container(
                        padding: EdgeInsets.all(12),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: primaryBlue,
                          borderRadius: BorderRadius.circular(1000),
                        ),
                        child: Center(
                          child: Image.asset(
                            'like_outline.png',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 258,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 30,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                            color: primaryBlue,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'J.A Larriat',
                                        style: titleBlue.copyWith(
                                          fontSize: 22,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          text: 'IDR 1.000.000',
                                          style: yellowText.copyWith(
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: ' / day',
                                              style: grayText.copyWith(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 108,
                                    height: 20,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          'star.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Image.asset(
                                          'star.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Image.asset(
                                          'star.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Image.asset(
                                          'star.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Image.asset(
                                          'star-gray.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  top: 30,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fasilitas',
                                      style: yellowText.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Fasilitas(
                                          jumlah: 2,
                                          fitur: 'dapur',
                                        ),
                                        Fasilitas(
                                          jumlah: 3,
                                          fitur: 'kasur',
                                        ),
                                        Fasilitas(
                                          jumlah: 2,
                                          fitur: 'lemari',
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              photosFacilities(),
                              locationDetail(),
                              ButtonCTA(
                                textButton: 'Hubungi Pemilik',
                                widthButton: 327,
                                warna: primaryYellow,
                                text: titleBlue,
                                onClick: () {
                                  launchUrl('tel://+628993994131');
                                },
                              ),
                              SizedBox(
                                height: 40,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
