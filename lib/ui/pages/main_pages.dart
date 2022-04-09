import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homify_app/cubit/pages_cubit.dart';
import 'package:homify_app/ui/pages/favorite_page.dart';
import 'package:homify_app/ui/pages/home.dart';
import 'package:homify_app/ui/pages/messages_page.dart';
import 'package:homify_app/ui/pages/notification_page.dart';

import '../../shared/theme.dart';
import '../widgets/bottom_nav.dart';

class MainPages extends StatelessWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return MessagesPage();
        case 2:
          return NotificationPage();
        case 3:
          return FavoritePages();
        default:
          return HomePage();
      }
    }

    Widget navigasiBottom() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          margin: EdgeInsets.only(
            bottom: 30,
            // bottom: 30,
          ),
          height: 65,
          width: 327,
          decoration: BoxDecoration(
            color: primaryBlue,
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavIcon(
                index: 0,
                imgUrl: 'home',
              ),
              BottomNavIcon(
                index: 1,
                imgUrl: 'pesan',
              ),
              BottomNavIcon(
                index: 2,
                imgUrl: 'card',
              ),
              BottomNavIcon(
                index: 3,
                imgUrl: 'like',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PagesCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              navigasiBottom(),
            ],
          ),
        );
      },
    );
  }
}
