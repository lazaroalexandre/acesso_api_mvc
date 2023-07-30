import 'package:acesso_api_mvc/views/pages/methods/setor_list.dart';
import 'package:flutter/material.dart';

class SetorPage extends StatelessWidget {
  const SetorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setor List'),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.black,
            width: 300,
          ),
          Expanded(
            child: ListView(
              children: [
                SetorList(),
                Container(
                  color: Colors.black,
                  height: 300,
                ),
                SetorList(),
                Container(
                  color: Colors.black,
                  height: 300,
                ),
                SetorList(),
                Container(
                  color: Colors.black,
                  height: 300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
