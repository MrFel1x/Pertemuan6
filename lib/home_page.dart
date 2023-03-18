import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:pertemuan_ke_4/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Consumer<CounterProvider>(
      builder: (context, value, child) =>
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("${value.counter}",
            style: TextStyle(
              fontSize: 30,
            )),
        ElevatedButton(
          onPressed: () {
            value.increment();
          },
          child: Text("Tambah"),
        )
      ]),
    )));
  }
}
