import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class PopularCard extends StatelessWidget {
  final String namaKota;
  final String urlImage;
  const PopularCard({
    Key? key,
    required this.namaKota,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
        bottom: 11,
        right: 20,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 120,
            height: 150,
            decoration: BoxDecoration(
              color: primaryBlue,
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(urlImage),
              ),
            ),
          ),
          Container(
            height: 47,
            width: 120,
            decoration: BoxDecoration(
                color: primaryBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                )),
            child: Center(
              child: Text(
                namaKota,
                style: yellowText.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
