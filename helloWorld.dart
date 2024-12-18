// 1. In ra số từ 1 to 10
void main(List<String> args) {
  List<int> numbers = List.generate(10,(i) => (i) +1);
  for(var item in numbers){
    print(item);
  }
}