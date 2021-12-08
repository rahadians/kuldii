import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ItemView extends GetView {
  ItemView(this.data);
  final data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(data.name.toString()),
      subtitle: Text(data.createAt.toString()),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () {},
      ),
    );
  }
}
