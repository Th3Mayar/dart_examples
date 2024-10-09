// Principal Function
void main() {
  interpolation();
  variables();
  collections();
  arrowFunctions();
  cascade();
  parametersOptionals();
  printInfo(name: 'Jose Francisco'); 
  tryCatch(); 
}

// 1. String Interpolation
void interpolation() {
  String name = 'Jose';
  print('Hola, $name!'); // Hola, Jose!
  print('5 + 3 = ${5 + 3}'); // 5 + 3 = 8
}

// 2. Null variables and operators
void variables() {
  int? a = null; // Variable null
  a ??= 5; // If 'a' is null, assign 5
  print(a); // 5
}

// 3. Collections (List, Set, Map)
void collections() {
  final list = ['a', 'b', 'c'];
  final set = {'a', 'b', 'c'};
  final map = {'a': 1, 'b': 2};

  var listTwo = [1, 2, 3];
  var extended = [0, ...listTwo]; // [0, 1, 2, 3]
  print(list);
  print(set);
  print(map);
  print(extended);
}

// 4. Arrow functions
void arrowFunctions() {
  int add(int a, int b) => a + b;
  print('Suma: ${add(5, 3)}'); // Sum: 8
}

// 5. Cascades
class MyClass {
  void method1() {
    print('method1 called');
  }

  void method2() {
    print('method2 called');
  }
}

void cascade() {
  var myObject = MyClass();

  myObject
    ..method1()
    ..method2();
}

// 6. Functions with optional and named parameters
void parametersOptionals() {
  int sum(int a, [int? b]) {
    return a + (b ?? 0);
  }

  print('Suma con opcional: ${sum(5, 2)}'); // Sum with optional: 7
  print('Suma sin opcional: ${sum(5)}');    // Sum optional: 5
}

// 7. Function with named parameters
void printInfo({required String name, int age = 18}) {
  print('Name: $name, Age: $age');
}

// 8. Exceptions (try, catch, finally)
void tryCatch() {
  try {
    // Simulamos una excepción
    throw Exception('Simulated error');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Siempre se ejecuta');
  }
}

// 9. Named constructors and factory
class Car {
  String model;
  Car(this.model);
  Car.hybrid() : model = 'Hybrid';
}

// 10. Advanced collections: if, for in lists
void advancedCollections() {
  bool promoActive = true; We simulate that the promo is active
  var items = ['Home', if (promoActive) 'Sale'];
  print(items); // ['Home', 'Sale']
}

// 11. Asynchrony: Futures and Streams
Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 1));  // We simulate a data load
  print('Data fetched');
}

Stream<int> counterStream = Stream.periodic(
  Duration(seconds: 1), (x) => x).take(5);

void listenToStream() {
  counterStream.listen((event) {
    print('Counter: $event');
  });
}