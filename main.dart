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

// 1. Interpolación de Strings
void interpolation() {
  String name = 'Jose';
  print('Hola, $name!'); // Hola, Jose!
  print('5 + 3 = ${5 + 3}'); // 5 + 3 = 8
}

// 2. Variables nulas y operadores
void variables() {
  int? a = null; // Variable nula
  a ??= 5; // Si 'a' es nula, asigna 5
  print(a); // 5
}

// 3. Colecciones (List, Set, Map)
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

// 4. Funciones flecha
void arrowFunctions() {
  int add(int a, int b) => a + b;
  print('Suma: ${add(5, 3)}'); // Suma: 8
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

// 6. Funciones con parámetros opcionales y nombrados
void parametersOptionals() {
  int sum(int a, [int? b]) {
    return a + (b ?? 0);
  }

  print('Suma con opcional: ${sum(5, 2)}'); // Suma con opcional: 7
  print('Suma sin opcional: ${sum(5)}');    // Suma sin opcional: 5
}

// 7. Función con parámetros nombrados
void printInfo({required String name, int age = 18}) {
  print('Name: $name, Age: $age');
}

// 8. Excepciones (try, catch, finally)
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

// 9. Constructores con nombre y factory
class Car {
  String model;
  Car(this.model);
  Car.hybrid() : model = 'Hybrid';
}

// 10. Colecciones avanzadas: if, for en listas
void advancedCollections() {
  bool promoActive = true; // Simulamos que la promo está activa
  var items = ['Home', if (promoActive) 'Sale'];
  print(items); // ['Home', 'Sale']
}

// 11. Asincronía: Futures y Streams
Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 1));  // Simulamos una carga de datos
  print('Data fetched');
}

Stream<int> counterStream = Stream.periodic(
  Duration(seconds: 1), (x) => x).take(5);

void listenToStream() {
  counterStream.listen((event) {
    print('Counter: $event');
  });
}