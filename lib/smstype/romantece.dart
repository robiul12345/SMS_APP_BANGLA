import 'package:flutter/material.dart';
import 'package:mim_sms_app/model/itemsms.dart';

import '../widget/listitemwidget.dart';

class Romantece extends StatefulWidget {
  const Romantece({Key? key}) : super(key: key);

  @override
  State<Romantece> createState() => _RomanteceState();
}

class _RomanteceState extends State<Romantece> {
  final romantic = SMSDeteils.romantic();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("রাতের রোমান্টিক এসএমএস"),),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListItemWidget(sms: romantic),
        ),
      ),
    );
  }
}
