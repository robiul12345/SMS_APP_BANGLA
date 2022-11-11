import 'package:flutter/material.dart';
import 'package:mim_sms_app/model/itemsms.dart';
import 'package:mim_sms_app/widget/listitemwidget.dart';

class VALOVASA extends StatefulWidget {
  @override
  State<VALOVASA> createState() => _VALOVASAState();
}

class _VALOVASAState extends State<VALOVASA> {
  final valobasa = SMSDeteils.valobasa();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("ভালোবাসার এসএমএস"),),
        body: Container(
          height: double.infinity,
          width: double.infinity,
         child: ListItemWidget(sms: valobasa,),
        ),
      ),
    );
  }
}
