import 'dart:async';
import 'dart:ui';
// 검색할 때 한 글자만 쳐도 그걸 인식하고 검색한다
class Debounce {
  final int milliseconds;
  Timer? _timer;

  Debounce({required this.milliseconds});

  run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
