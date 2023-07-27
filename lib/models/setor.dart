// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Setor {
  int id;
  String nome;
  List<dynamic> criado; // Alterado para 'String'
  List<dynamic>? alterado; // Alterado para 'String'
  bool excluido;
  List<dynamic>? leitos;
  Setor({
    required this.id,
    required this.nome,
    required this.criado,
    this.alterado,
    required this.excluido,
    this.leitos,
  });

  Setor copyWith({
    int? id,
    String? nome,
    List<dynamic>? criado,
    List<dynamic>? alterado,
    bool? excluido,
    List<dynamic>? leitos,
  }) {
    return Setor(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      criado: criado ?? this.criado,
      alterado: alterado ?? this.alterado,
      excluido: excluido ?? this.excluido,
      leitos: leitos ?? this.leitos,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'criado': criado,
      'alterado': alterado,
      'excluido': excluido,
      'leitos': leitos,
    };
  }

  factory Setor.fromMap(Map<String, dynamic> map) {
    return Setor(
      id: map['id'] as int,
      nome: map['nome'] as String,
      criado: List<dynamic>.from((map['criado'] as List<dynamic>)),
      alterado: map['alterado'] != null
          ? List<dynamic>.from((map['alterado'] as List<dynamic>))
          : null,
      excluido: map['excluido'] as bool,
      leitos: map['leitos'] != null
          ? List<dynamic>.from((map['leitos'] as List<dynamic>))
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Setor.fromJson(String source) =>
      Setor.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Setor(id: $id, nome: $nome, criado: $criado, alterado: $alterado, excluido: $excluido, leitos: $leitos)';
  }

  @override
  bool operator ==(covariant Setor other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.nome == nome &&
        listEquals(other.criado, criado) &&
        listEquals(other.alterado, alterado) &&
        other.excluido == excluido &&
        listEquals(other.leitos, leitos);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        criado.hashCode ^
        alterado.hashCode ^
        excluido.hashCode ^
        leitos.hashCode;
  }
}
