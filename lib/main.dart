import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasii/cubit/anasayfa_cubit.dart';
import 'package:kisiler_uygulamasii/cubit/kisi_detay_cubit.dart';
import 'package:kisiler_uygulamasii/cubit/kisi_kayit_cubit.dart';
import 'package:kisiler_uygulamasii/views/anasayfa.dart';
import 'package:kisiler_uygulamasii/views/kisi_detay_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> KisiKayitCubit()),
        BlocProvider(create: (context)=> KisiDetayCubit()),
        BlocProvider(create: (context)=> AnasayfaCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Anasayfa(),
      ),
    );
  }
}

