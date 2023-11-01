import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasii/repo/kisilerdao_repository.dart';

class KisiKayitCubit extends Cubit<void>{

  KisiKayitCubit() : super(0);

  var krepo = KisilerdaoRepository();

  Future<void> kayit (String kisi_ad, String kisi_tel) async{
    await krepo.kisiKayit(kisi_ad, kisi_tel);
  }

}