import 'dart:developer';

import 'package:e_commerce_app/core/networks/local/local_network.dart';
import 'package:e_commerce_app/core/utils/constant.dart';
import 'package:e_commerce_app/core/utils/simple_bloc_observer.dart';
import 'package:e_commerce_app/view_models/auth_cubit/auth_cubit.dart';
import 'package:e_commerce_app/view_models/layout_cubit/layout_cubit.dart';
import 'package:e_commerce_app/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await CacheNetwork.cacheInitialization();
  kToken = CacheNetwork().getFromCache(key: 'token');
  log('$kToken');
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => LayoutCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            // fontFamily: kSecondaryFont,
            ),
        title: 'E Commerce App',
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
