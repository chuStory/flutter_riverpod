// 주의사항!!!
// 얕은 복사에서 객체, 또는 배열의 새로운 인스턴스를 생성하거나 참조를 변경하는 것은
// 얕은 복사로는 원본 객체에 영향을 미치지 않습니다.
void main() {
  List<int> originArr = [1,2,3];
  modifyArrayRef(originArr);

  print(originArr);
}

void modifyArrayRef(List<int> arr) {
  arr = [100, 200, 300];
}