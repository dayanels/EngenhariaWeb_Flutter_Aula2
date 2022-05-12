// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:aula2/store/meu_drawer_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class MeuDrawer extends StatelessWidget {
  MeuDrawer({Key? key}) : super(key: key);

  MeuDrawerStore store = MeuDrawerStore();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(top: 8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_CQ3IrjZcisW-FO12jxRtSA9shZYuykqA2w&usqp=CAU"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem Y",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Text(
                        "loremY@gmail.com",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          Observer(
            builder: (context) => ListTile(
              title: Text(
                'Pag 1',
                style: TextStyle(
                    color: (store.selected == 1) ? Colors.red : Colors.black),
              ),
              onTap: () {
                store.setSelected(1);
              },
            ),
          ),
          Observer(builder: (_) {
            return ListTile(
              title: Text(
                'Pag 2',
                style: TextStyle(
                    color: (store.selected == 2) ? Colors.red : Colors.black),
              ),
              onTap: () {
                store.setSelected(2);
              },
            );
          }),
          ListTile(
            title: Text('Pag 3'),
            onTap: () {
              store.setSelected(3);
            },
          ),
          ListTile(
            title: Text('Pag 4'),
            onTap: () {
              store.setSelected(store.selected - 1);
            },
          ),
        ],
      ),
    );
  }
}
