import 'package:flutter/material.dart';
import 'package:mim_sms_app/widget/listitemwidget.dart';

import '../model/itemsms.dart';

class KostoSMS extends StatefulWidget {
  const KostoSMS({Key? key}) : super(key: key);

  @override
  State<KostoSMS> createState() => _KostoSMSState();
}

class _KostoSMSState extends State<KostoSMS> {
  final kosto = SMSDeteils.kosto();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("কষ্টের  এসএমএস"),),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListItemWidget(sms: kosto,),
        ),
      ),
    );
  }
}
