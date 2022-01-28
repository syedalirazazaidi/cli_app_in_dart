// import 'dart:io';

// Future getPizzaOrder() async {
//   String pizza = 'No Pizza Yet';
//   print(pizza);
//   Duration waitTime = Duration(seconds: 4);
//   await Future.delayed(waitTime, () {
//     pizza = 'carniv';
//     print('delivering $pizza');
//   });
//   return pizza;
// }

// void goEatPizza() {
//   getPizzaOrder().then((value) => null);
// }

// void main(List<String> args) {
//   goEatPizza();
//   // var list = [2, 4, 5, 7];

//   // try {
//   //   print(list[1]);
//   // } catch (e) {
//   //   print(e);
//   // } finally {
//   //   print('Done');
//   // }
// }
// class Arithmatic {
//   void divide(int a, int b) {
//     try {
//       print(a ~/ b);
//       print('All is well');
//     } catch (e) {
//       throw Exception('division cannot be done');
//       // print('can not be divide by zero');
//     } finally {
//       print('finally---');
//     }
//   }
// }

// void main(List<String> args) {
//   try {
//     Arithmatic art = Arithmatic();
//     art.divide(10, 0);
//   } catch (e) {
//     print('errorsss $e');
//   }
// }
import 'dart:io';
import 'dart:math';

Future<int> randomNumber() {
  return Future.delayed(Duration(seconds: 1), () => Random().nextInt(20));
}

void main(List<String> args) async {
  try {
    print('Download Starting ...');
    int totalSum = 0;
    stdout.write('[');
    while (totalSum < 100) {
      int value = await randomNumber();
      stdout.write('*' * value);
      totalSum += value;
    }
    print(']');
    print('Download completed ...');
  } catch (e) {
    print(e);
  }
}
