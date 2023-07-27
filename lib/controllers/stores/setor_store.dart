// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:acesso_api_mvc/models/setor.dart';
import 'package:get/get.dart';

import 'package:acesso_api_mvc/repositories/i_setor_repository.dart';

class SetorStore extends GetxController with StateMixin{
  final ISetorRepository _iSetorRepository;
  SetorStore(
    this._iSetorRepository,
  );

  @override
  void onInit() {
    super.onInit();
    getSetor();
    
  }

  Future<void> getSetor() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _iSetorRepository.findAllSetor();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }

  Future<void> patchSetor(Setor setor) async {
    try {
      change([], status: RxStatus.loading());
      await _iSetorRepository.updateSetor(setor);
      getSetor();
      change([], status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao atualizar setor'));
    }
  }

  Future<void> postSetor(Setor setor) async {
    try {
      change([], status: RxStatus.loading());
      await _iSetorRepository.createSetor(setor);
      getSetor();
      change([], status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao criar setor'));
    }
  }
}
