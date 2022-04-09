import 'package:flutter/material.dart';
import 'package:homify_app/cubit/pages_cubit.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavIcon extends StatelessWidget {
  final String imgUrl;
  final int index;
  final bool isActive;
  const BottomNavIcon({
    Key? key,
    this.isActive = false,
    required this.imgUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PagesCubit>().setPage(index);
      },
      child: Column(
        children: [
          Spacer(),
          Container(
            width: 26,
            height: 26,
            child: Image.asset(
              '${imgUrl}_off.png',
              color: context.read<PagesCubit>().state == index
                  ? primaryYellow
                  : tersierBlue,
            ),
          ),
          Spacer(),
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              color: context.read<PagesCubit>().state == index
                  ? primaryYellow
                  : transparant,
              borderRadius: BorderRadiusDirectional.circular(1000),
            ),
          )
        ],
      ),
    );
  }
}
