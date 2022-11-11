import 'package:flutter/material.dart';
import 'package:mim_sms_app/model/itemsms.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter/services.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({
    Key? key,
    required this.sms,
  }) : super(key: key);

  final List<SMSDeteils> sms;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: sms.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Card(
              elevation: 8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  // gradient: LinearGradient(colors: [
                  //   // Colors.blue,
                  //   // Colors.purple,
                  //   // Colors.blueGrey
                  // ])
                ),
                padding: EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Text(
                      "${sms[index].message}",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 6),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                            },
                            icon: Icon(
                              Icons.share,
                              size: 26,
                            ),
                          ),
                          
                          IconButton(
                            onPressed: () async{
                              Clipboard.setData(ClipboardData(text: "$sms",));
                            },
                            icon: Icon(
                              Icons.copy,
                              size: 26,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
