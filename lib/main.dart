import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homify_app/cubit/pages_cubit.dart';
import 'package:homify_app/ui/pages/detail.dart';
import 'package:homify_app/ui/pages/home.dart';
import 'package:homify_app/ui/pages/main_pages.dart';
import 'package:homify_app/ui/pages/splash_screen.dart';
import 'package:homify_app/ui/pages/start.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PagesCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/start-page': (context) => StartPage(),
          '/home-page': (context) => MainPages(),
          '/detail-page': (context) => detailPage(),
        },
      ),
    );
  }
}
