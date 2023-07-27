import 'package:acesso_api_mvc/controllers/stores/setor_store.dart';
import 'package:acesso_api_mvc/repositories/i_setor_repository.dart';
import 'package:acesso_api_mvc/repositories/setor_repository_impl.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SetorBinding implements Bindings {
  @override
  void dependencies() {
    final dio = Dio();
    final setorRepository = SetorRepositoryImpl(dio);
    Get.put<ISetorRepository>(setorRepository);
    Get.put<SetorStore>(SetorStore(setorRepository));
  }
}