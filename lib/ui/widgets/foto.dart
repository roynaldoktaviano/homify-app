import 'package:flutter/material.dart';

class fotoFasilitas extends StatelessWidget {
  final String namafile;
  const fotoFasilitas({
    Key? key,
    required this.namafile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 18,
      ),
      width: 110,
      height: 88,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/${namafile}.png'),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
    );
  }
}
