import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class panduanOrder extends StatelessWidget {
  final String judul;
  final String date;
  final String imgUrl;
  const panduanOrder({
    Key? key,
    required this.judul,
    required this.date,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      imgUrl,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul,
                    style: yellowText.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Updated ',
                      style: grayText.copyWith(fontSize: 14),
                      children: [
                        TextSpan(
                          text: date,
                          style: titleBlue.copyWith(
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
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'arrow.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
