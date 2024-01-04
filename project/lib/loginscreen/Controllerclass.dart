// Controllerclass.dart 파일에 해당 함수를 작성합니다.

String? validateEmail(String value) {
  // 이메일 유효성을 검사할 정규식 패턴
  RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  if (value.isEmpty) {
    return '이메일을 입력하세요.';
  } else if (!regex.hasMatch(value)) {
    return '유효한 이메일 주소를 입력하세요.';
  }

  return null;
}
