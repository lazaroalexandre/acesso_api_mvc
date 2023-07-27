// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:acesso_api_mvc/controllers/routes/api_routes.dart';
import 'package:dio/dio.dart';

import 'package:acesso_api_mvc/models/setor.dart';
import 'package:acesso_api_mvc/repositories/i_setor_repository.dart';

class SetorRepositoryImpl implements ISetorRepository {
  final Dio _dio;
  SetorRepositoryImpl(
    this._dio,
  );
  
  @override
  Future<void> createSetor(Setor setor) async{
    try {
      final response = await _dio.post(
          "${ApiRoutes.baseURL + ApiRoutes.setorCreate}",
          data: setor.toMap());
      print(response.data);
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<List<Setor>> findAllSetor() async{
    try {
      final response =
          await _dio.get<List>("${ApiRoutes.baseURL + ApiRoutes.setorList}");
      print(response.data);
      return response.data!.map((e) => Setor.fromMap(e)).toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<void> updateSetor(Setor setor) async {
    try {
      final response = await _dio.patch(
          "${ApiRoutes.baseURL + ApiRoutes.setorUpdate}/${setor.id}",
          data: setor.toMap());
      print(response.data);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
  
}
