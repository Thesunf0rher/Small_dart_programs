import 'dart:io';

void main() {
  while (true) {
    stdout.write("Введите первое число: ");
    double? num1 = double.tryParse(stdin.readLineSync()!);
    if (num1 == null) {
      print("Ошибка: Введите допустимое число.");
      continue;
    }

    stdout.write("Введите операцию (+, -, *, /): ");
    String? operation = stdin.readLineSync();
    if (operation != "+" && operation != "-" && operation != "*" && operation != "/") {
      print("Ошибка: Неправильный выбор операции.");
      continue;
    }

    stdout.write("Введите второе число: ");
    double? num2 = double.tryParse(stdin.readLineSync()!);
    if (num2 == null) {
      print("Ошибка: Введите допустимое число.");
      continue;
    }

    if (operation == "/" && num2 == 0) {
      print("Ошибка: Деление на ноль невозможно.");
      continue;
    }

    double result;
    switch (operation) {
      case "+":
        result = num1 + num2;
        break;
      case "-":
        result = num1 - num2;
        break;
      case "*":
        result = num1 * num2;
        break;
      case "/":
        result = num1 / num2;
        break;
      default:
        print("Ошибка: Неправильный выбор операции.");
        continue;
    }

    print("Результат: $num1 $operation $num2 = $result");

    stdout.write("Хотите выполнить ещё одну операцию? (да/нет): ");
    String? answer = stdin.readLineSync()?.toLowerCase();
    if (answer != "да") {
      print("Программа завершена.");
      break;
    }
  }
}
