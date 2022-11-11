import 'package:flutter/material.dart';
import 'package:mim_sms_app/model/itemsms.dart';
import 'package:mim_sms_app/widget/listitemwidget.dart';

class BirthdaySMS extends StatefulWidget {
  const BirthdaySMS({Key? key}) : super(key: key);

  @override
  State<BirthdaySMS> createState() => _BirthdaySMSState();
}

class _BirthdaySMSState extends State<BirthdaySMS> {
  final birthday = SMSDeteils.biethdaysms();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("জন্মদিনের  এসএমএস"),),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListItemWidget(sms: birthday,),
        ),
      ),
    );
  }
}
