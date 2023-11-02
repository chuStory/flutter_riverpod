import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v1/models/todo.dart';
import 'package:flutter_riverpod_v1/view_models/todo_view_model.dart';

// 4. 소비자 위젯 선언하기
class TodoPage extends ConsumerWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 데이터 -> viewModel로 분리
    // 화면에서는 viewModel만 바라보자
    // final viewModel = ref.read(todoViewModelProvider);
    // 2. 주의 -> watch를 하게 되면 관리하고 있는 상태가 넘어온다.
    final todo = ref.watch(todoViewModelProvider);
    return Center(
      child: InkWell(
        onTap: () {
          // 변수에 접근해서 처리 중
          // ref.read(todoViewModelProvider.notifier).state = Todo(false, '운동하기');
          ref.read(todoViewModelProvider.notifier).toggleCompleted();
        },
        child: Text(
          '해야 할 일 : ${todo.isCompleted}, ${todo.description}',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}