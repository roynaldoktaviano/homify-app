import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class Fasilitas extends StatelessWidget {
  final int jumlah;
  final String fitur;
  const Fasilitas({
    Key? key,
    required this.jumlah,
    this.fitur = 'dapur',
  }) : super(key: key);

  BoxDecoration imageFacility() {
    switch (fitur) {
      case 'dapur':
        return BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'dapur.png',
            ),
          ),
        );
        break;
      case 'kasur':
        return BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'kasur.png',
            ),
          ),
        );
      case 'lemari':
        return BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'lemari.png',
            ),
          ),
        );
      default:
        return BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'dapur.png',
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 32,
              height: 32,
              margin: EdgeInsets.only(
                bottom: 8,
              ),
              decoration: imageFacility(),
            ),
            Text.rich(
              TextSpan(
                text: '${jumlah}',
                style: yellowText.copyWith(
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: ' ${fitur}',
                    style: grayText.copyWith(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
