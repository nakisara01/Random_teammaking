import 'package:flutter/material.dart';

class Count {
  int num = 0;
}

class CounterText extends StatefulWidget {
  const CounterText({Key? key, required this.title, required this.count}) : super(key: key);

  final String title;
  final Count count;

  @override
  State<CounterText> createState() => CounterTextState();
}

//State는 Stateful의 하위항목==Stateful or Stateless에서
// 새로고침을 시도할 때 State<CounterText>에 데이터가 저장된다
class CounterTextState extends State<CounterText> {
  int counter = 0;

  void _incrementCounter() {

    //setState가 있기 때문에 바로바로 새로고침이 가능하다.
    setState(() {
      counter++;
      widget.count.num++;
      print("CounterText $counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        '${widget.count.num}',
        style: Theme.of(context).textTheme.headline4,
      ),
      OutlinedButton(onPressed: _incrementCounter, child: Text("push it!"))
    ]);
  }
}