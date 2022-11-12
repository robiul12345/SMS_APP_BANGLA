import 'package:flutter/material.dart';
import 'package:mim_sms_app/model/itemsms.dart';
import 'package:mim_sms_app/widget/listitemwidget.dart';

class BokabanoSMS extends StatefulWidget {
  const BokabanoSMS({Key? key}) : super(key: key);

  @override
  State<BokabanoSMS> createState() => _BokabanoSMSState();
}

class _BokabanoSMSState extends State<BokabanoSMS> {
  final boka = SMSDeteils.bokasms();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("  এসএমএস"),),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListItemWidget(sms: boka,),
        ),
      ),
    );
  }
}
