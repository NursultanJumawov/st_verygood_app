import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xffFFEBC1),
        appBar: AppBar(title: const Text('           Биринчи бет')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go('/page2'),
                child: const Text('Go to page'),
              ),
            ],
          ),
        ),
      );
}
