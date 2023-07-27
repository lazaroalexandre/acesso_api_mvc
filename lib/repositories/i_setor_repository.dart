import 'package:acesso_api_mvc/models/setor.dart';

abstract class ISetorRepository {
  Future<List<Setor>> findAllSetor();
  Future<void> createSetor(Setor setor);
  Future<void> updateSetor(Setor setor);
}