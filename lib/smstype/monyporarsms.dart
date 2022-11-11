import 'package:flutter/material.dart';
import 'package:mim_sms_app/model/itemsms.dart';
import 'package:mim_sms_app/widget/listitemwidget.dart';

class MonyePorar extends StatefulWidget {
  const MonyePorar({Key? key}) : super(key: key);

  @override
  State<MonyePorar> createState() => _MonyePorarState();
}

class _MonyePorarState extends State<MonyePorar> {
  final monye = SMSDeteils.kosto();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("মনে পরার   এসএমএস "),),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListItemWidget(sms: monye,),
        ),
      ),
    );
  }
}
