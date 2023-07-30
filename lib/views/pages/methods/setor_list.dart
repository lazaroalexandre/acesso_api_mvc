import 'package:acesso_api_mvc/controllers/stores/setor_store.dart';
import 'package:acesso_api_mvc/models/setor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SetorList extends GetView<SetorStore> {
  const SetorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: controller.obx(
        (state) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.length,
            itemBuilder: (_, index) {
              final Setor item = state[index];
              return ListTile(
                title: Text(item.nome),
                subtitle: Text('Quantidade de types: ${state.length}'),
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
    );
  }
}
