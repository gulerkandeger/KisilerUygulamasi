import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasii/cubit/kisi_kayit_cubit.dart';

class KisiKayitSayfa extends StatefulWidget {
  const KisiKayitSayfa({super.key});

  @override
  State<KisiKayitSayfa> createState() => _KisiKayitSayfaState();
}

class _KisiKayitSayfaState extends State<KisiKayitSayfa> {
  
  var tfKisiAd = TextEditingController();
  var tfKisiTel = TextEditingController();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kişi Kayıt"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 50, left: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAd, decoration: InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfKisiTel, decoration: InputDecoration(hintText: "Kişi Ad"),),
              ElevatedButton(
                child: const Text("KAYDET"),
                onPressed: (){
                  context.read<KisiKayitCubit>().kayit(tfKisiAd.text, tfKisiTel.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}