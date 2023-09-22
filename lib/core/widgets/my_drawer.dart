// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/itens_drawer_model.dart';
import '../theme/theme.dart';
import 'drawer_list_tile.dart';

class MyDrawer extends StatelessWidget {
  final List<ItensDrawerModel> itensDrawer;
  final int currentSelected;
  const MyDrawer({
    Key? key,
    required this.itensDrawer,
    required this.currentSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: backgroundColor,
      child: ListView.builder(
        itemCount: itensDrawer.length,
        itemBuilder: (BuildContext context, int index) {
          return DrawerListTile(
            icon: itensDrawer[index].icon,
            onTap: itensDrawer[index].onTap,
            title: itensDrawer[index].title,
            isActive: currentSelected == index,
          );
        },
      ),
    );
  }
}
