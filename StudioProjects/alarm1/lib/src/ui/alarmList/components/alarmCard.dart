import 'package:alarm1/src/ui/alarmList/components/textCard.dart';
import 'package:flutter/material.dart';

import '../../alarmDetail/alarmDetail.dart';
import '../../widgets/switchByPlatform.dart';

class AlarmCard extends StatelessWidget {
  AlarmCard({required this.index});

  List<bool> isSwitched = [
    false,
    false,
    false,
    true,
    false,
    true,
    true,
    false,
    false,
    true
  ];

  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AlarmDetailPage()),
          );
        },
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
                child: Row(
              children: [
                Expanded(child: TextCard()),
                SwitchByPlatForm(isSwitched: isSwitched[index])
              ],
            ))));
  }
}
