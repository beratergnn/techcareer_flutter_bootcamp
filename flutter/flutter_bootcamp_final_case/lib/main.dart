import 'package:contact_bloc_pattern/ui/cubit/detay_cubit.dart';
import 'package:contact_bloc_pattern/ui/cubit/ana_cubit.dart';
import 'package:contact_bloc_pattern/ui/cubit/sepet_cubit.dart';
import 'package:contact_bloc_pattern/ui/views/ana_sayfa.dart';
import 'package:contact_bloc_pattern/ui/views/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SepetCubit()),
        BlocProvider(create: (context) => DetailPageCubit()),
        BlocProvider(create: (context) => AnaCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BottomNavBar(),
      ),
    );
  }
}
