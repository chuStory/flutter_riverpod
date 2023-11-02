
// 얕은 복사
// 얕은 복사는 복사된 객체가 원본 객체의 참조를 공유하는 방법이다.
// 따라서 어떤 변경 사항이 복사본에 영향을 미친다.

// 깊은 복사

void main() {

  List<int> originList = [1,2,3];
  List<int> shallowCopy = originList;

  // 변경 사항이 얕은 복사에 영향을 미칩니다.
  shallowCopy[0] = 10;

  print(originList);
  print(shallowCopy);

}