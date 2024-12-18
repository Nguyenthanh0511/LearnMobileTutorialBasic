Future<String> getData(String text, int timeSecond) async{
  print('Loading...'+text);
  await Future.delayed(Duration(seconds:timeSecond));
  
  // DateTime lossTime = runtimeByComplie
  // print('Task 1 running by: $lossTime second time');
  final number = await Future<int>.sync(() => 12);
  print('Number: $number');
  return text;
}

void main(List<String> args) async {
  // Cach viet thu nhat:
  await getData("Thanh",4).then(
    ((value) => print(value))
  ).catchError((e)=>print('error: $e'));
  // Cach viet thu hai:
  // try{
  //   var result = await getData();
  //   print(result);
  // }catch(e){
  //   print('error: $e.');
  // }
  await getData("Trung",1).then((value) => print(value),).catchError((e)=>print('error : $e'));
}