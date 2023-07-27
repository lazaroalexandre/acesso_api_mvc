import 'package:acesso_api_mvc/controllers/stores/setor_store.dart';
import 'package:acesso_api_mvc/models/setor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetorPage extends GetView<SetorStore> {
   
   const SetorPage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Setor Page'),),
           body: controller.obx(
        (state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final Setor item = state[index];
              return ListTile(
                title: Text(item.nome),
                subtitle: Text('Quantidade de types: ${item.leitos!.length}'),
              );
            },
          );
        },
        onError: (error) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error!),
                TextButton(
                  onPressed: () => controller.getSetor(),
                  child: Text('Tentar novamente'),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navegar para a página de criação de setor (SetorCreate)
          Get.toNamed('/create');
        },
        child: Icon(Icons.add),
      ),
    );

  }
}