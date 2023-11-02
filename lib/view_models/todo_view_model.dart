import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_v1/models/todo.dart';

class TodoViewModel extends StateNotifier<Todo>{
  // 데이터 + 행위
  // final Todo todo;

  // TodoViewModel({required this.todo});
  TodoViewModel() : super(Todo(false, 'MVVM학습'));

  // 행위
  void toggleCompleted() {
    // StateNotifier -> state 를 멤버로 가지고 있다.
    state = Todo(!state.isCompleted, state.description);
    // 상태를 변경하려면 깊은 복사 처리 해줘야 한다.
    // 얕은 복사, 깊은 복사
    // state.description = "a";
    // state.isCompleted = false;
  }
}

// 2. Provider 생성
// 최초 생성시에 상태값을 가지게 된다. 해당 상태값을 View에 연겨래두면, View는 해당 상태값을 통해 그림을 그린다.
// 하지만 현재 학습하고 있는 Provider는 이후에 상태값이 변경이 되더라도 상태는 변경이 되지만 그림은 다시 그려주지 않는다.
// final todoProvider = Provider<Todo>((ref) {
//   return Todo(true, "공부하기");
// });

// 상태는 변경 가능하지만 렌더링을 다시 시킬 수 없는 창고 관리자
// final todoViewModelProvider = Provider<TodoViewModel>((ref) {
//   return TodoViewModel(todo: Todo(false, "MVVM 학습"));
// });

// 상태 변경 및 UI를 다시 빌드하려면 StateNotifierProvider를 사용해야 한다.
// StateNotifierProvider를 -> (전제 조건) 객체에 확장을 StateNotifier 사용해야 한다.

final todoViewModelProvider = StateNotifierProvider<TodoViewModel, Todo>((ref) {
  return TodoViewModel();
});