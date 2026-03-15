void main() {
  // 변수 선언
  var a = 'a';           // 타입 추론 변수
  final b = 'B';         // 수정 불가능한 상수
  int score = 50;        // 타입 지정
  dynamic any = 1;       // 모든 타입 허용 (Kotlin의 Any와 유사)
  any = 'a';


  // 삼항 연산자
  score == 50 ? print('결과: 50점') : print("결과: 아님");


  // 람다식
  var lambdaAdd = (int a, int b) => a + b;
  print('${lambdaAdd(6,5)}');


  // for문
  for (int i = 0; i < 10; i++) {
    score++;
  }


  // while 및 break
  while(true) {
    score++;

    if(score <= 70) break; // score가 70 이상이면 while 탈출
  }


  // switch문
  switch (score) {
    case >= 50:
      print('상태: 50점 이상');
      break;
    case < 50:
      print('상태: 50점 미만');
      break;
    default:
      print('상태: 점수 모름');
  }



  // List<value>
  List<String> list = [];
  var list2 = [];


  // map<key, value>
  var map = <String, dynamic>{
    'a': 'A',
    'b': 'B'
  };

  // map의 value값이 dynamic타입이므로 아래처럼 String에서 int형으로 변경 가능
  map = {
    'name': '대림대',
    'score': score
  };


  print('최종 점수: $score'); // 최종 점수: 70
  print('map 데이터: $map'); // map 데이터: {name: 대림대, score: 70}
}