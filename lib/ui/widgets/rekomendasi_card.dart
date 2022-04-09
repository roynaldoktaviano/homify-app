import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ReccomendationCard extends StatelessWidget {
  final String urlImage;
  final String nama;
  final String harga;
  final String kota;
  final String negara;
  final int skor;

  const ReccomendationCard({
    Key? key,
    required this.urlImage,
    required this.nama,
    required this.harga,
    required this.kota,
    required this.negara,
    required this.skor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detail-page');
        },
        child: Row(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: 130,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      image: AssetImage(urlImage),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 30,
                  decoration: BoxDecoration(
                    color: primaryBlue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('star.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            '$skor',
                            style: yellowText.copyWith(
                              fontSize: 13,
                              color: white,
                            ),
                          ),
                          Text(
                            '/ 5',
                            style: yellowText.copyWith(
                              fontSize: 13,
                              color: white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: titleBlue.copyWith(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text.rich(
                  TextSpan(
                    text: 'IDR ',
                    style: yellowText.copyWith(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: harga,
                        style: grayText.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: ' / day',
                        style: grayText.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                    text: kota,
                    style: grayText.copyWith(fontSize: 14),
                    children: [
                      TextSpan(
                        text: ' , ',
                        style: grayText.copyWith(fontSize: 14),
                      ),
                      TextSpan(
                        text: negara,
                        style: grayText.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
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
