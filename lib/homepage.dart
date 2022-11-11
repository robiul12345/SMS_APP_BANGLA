import 'package:flutter/material.dart';
import 'package:mim_sms_app/model/smsmodel.dart';
import 'package:mim_sms_app/smstype/birthdaysms.dart';
import 'package:mim_sms_app/smstype/bokabananosms.dart';
import 'package:mim_sms_app/smstype/kostosms.dart';
import 'package:mim_sms_app/smstype/monyporarsms.dart';
import 'package:mim_sms_app/smstype/romantece.dart';
import 'package:mim_sms_app/smstype/valovasa.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final main_sms = SMS.sms();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MIM APUR SMS"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: ListView.builder(
            itemCount: main_sms.length,
            itemBuilder: (context, index) {
              var sms = main_sms[index].txt;
              return InkWell(
                onTap: () {
                  setState(() {
                    if (index == 0) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => VALOVASA()));
                    } else if (index == 1) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Romantece()));
                    } else if (index == 2) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BokabanoSMS()));
                    } else if (index == 3) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => KostoSMS()));
                    } else if (index == 4) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MonyePorar()));
                    } else if (index == 5) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BirthdaySMS()));
                    }
                  });
                },
                child: Card(
                  elevation: 12,
                  child: Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.orange, width: 3)),
                    child: Text(
                      "$sms",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
