import 'package:acesso_api_mvc/controllers/bindings/setor_binding.dart';
import 'package:acesso_api_mvc/views/pages/setor_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => const SetorPage(),
          binding: SetorBinding(),
        )
      ],
    );
  }
}
