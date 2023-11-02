import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v1/views/todo_page.dart';

// 3. 범위 지정해 주기 - 앱 루트 위젯트리부터 구역을 지정한다.
void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TodoPage(),
      ),
    );
  }
}

