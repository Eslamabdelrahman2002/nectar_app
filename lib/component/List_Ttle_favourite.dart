import 'package:flutter/material.dart';

import 'icon_back.dart';

class ListTileFavourite extends StatelessWidget {
  const ListTileFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        "asset/cola.png",
        height: 54.9,
        width: 30.91,
      ),
      title: Text('Sprite Can'),
      subtitle: Text('325ml, Price'),
      trailing: SizedBox(
        width: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("\$1.50"),
            IconBack(),
          ],
        ),
      ),
      isThreeLine: true,
    );
  }
}
