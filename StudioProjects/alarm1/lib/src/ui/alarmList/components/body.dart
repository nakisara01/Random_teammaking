import 'package:alarm1/src/ui/alarmList/components/textCard.dart';
import 'package:flutter/material.dart';

import '../../alarmDetail/alarmDetail.dart';
import '../../widgets/switchByPlatform.dart';
import 'alarmCard.dart';

class AlarmListBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 11,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '알람',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ));
        } else {
          return AlarmCard(index: index-1);
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
