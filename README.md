```dart
/// The main function that runs all the demos in the program.
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

/// 1. String Interpolation.
///
/// Demonstrates how to use String interpolation in Dart.
/// You can insert variables and expressions inside a String.
void interpolation() {
String name = 'Jose';
print('Hello, $name!'); // Prints "Hello, Jose!"
print('5 + 3 = ${5 + 3}'); // Prints "5 + 3 = 8"
}

/// 2. Null variables and operators.
///
/// Demonstrates how to handle null variables in Dart.
/// Uses the `??=` operator to assign a value if the variable is null.
void variables() {
int? a = null; // Null variable
a ??= 5; // If 'a' is null, it is assigned 5.
print(a); // Prints "5"
}

/// 3. Collections (List, Set, Map).
///
/// Demonstrates how to work with different types of collections:
/// Lists, Sets, and Maps.
/// Also demonstrates the use of the "spread" operator (`...`) to expand lists.
void collections() {
final list = ['a', 'b', 'c']; // List
final set = {'a', 'b', 'c'}; // Set
final map = {'a': 1, 'b': 2}; // Map

var listTwo = [1, 2, 3];
var extended = [0, ...listTwo]; // Extended list using spread operator
print(list); // Prints ['a', 'b', 'c']
print(set); // Prints {'a', 'b', 'c'}
print(map); // Prints {'a': 1, 'b': 2}
print(extended); // Prints [0, 1, 2, 3]
}

/// 4. Arrow functions.
///
/// Demonstrates the use of arrow functions in Dart to reduce syntax
/// when functions are simple and return a value immediately.
void arrowFunctions() {
int add(int a, int b) => a + b; // Arrow function that adds two numbers.
print('Sum: ${add(5, 3)}'); // Prints "Sum: 8"
}

/// 5. Cascade Operator (`..`).
///
/// Demonstrates the use of the cascade operator (`..`) to call multiple methods
/// on the same object without having to reference it repeatedly.
class MyClass {
void method1() {
print('method1 called');
}

void method2() {
print('method2 called');
}
}

/// Function that demonstrates the use of the cascade operator (`..`) on an object.
void cascade() {
var myObject = MyClass();

myObject
..method1() // Calls method1 on `myObject`
..method2(); // Call method2 on `myObject`
}

/// 6. Functions with optional parameters.
///
/// Demonstrate the use of optional parameters in functions.
/// Use brackets to define optional parameters that can be `null`.
void parametersOptionals() {
int sum(int a, [int? b]) {
return a + (b ?? 0); // If 'b' is null, add 0.
}

print('Sum with optional: ${sum(5, 2)}'); // Print "Sum with optional: 7"
print('Sum without optional: ${sum(5)}'); // Print "Sum without optional: 5"
}

/// 7. Functions with named parameters.
///
/// Demonstrate the use of named parameters, where values ​​are assigned
/// by name rather than by position.
void printInfo({required String name, int age = 18}) {
print('Name: $name, Age: $age'); // Prints the name and age.
}

/// 8. Exception handling.
///
/// Demonstrates how to handle exceptions in Dart using `try`, `catch`, and `finally`.
/// Simulates an exception to show how control flow works.
void tryCatch() {
try {
// Simulates an exception
throw Exception('Simulated error');
} catch (e) {
// Catches the exception and prints it
print('Error: $e');
} finally {
// Block that always runs
print('Always runs');
}
}

/// 9. Car class with constructors.
///
/// Demonstrates the use of named constructors and additional constructors.
/// Here we have a standard constructor and an additional one for a hybrid.
class Car {
String model;
Car(this.model); // Normal constructor
Car.hybrid() : model = 'Hybrid'; // Named constructor
}

/// 10. Advanced collections with `if` and `for` in lists.
///
/// Demonstrates how to use `if` expressions inside lists to conditionally
/// add items to a list in Dart.
void advancedCollections() {
bool promoActive = true; // We pretend that the promotion is active.
var items = ['Home', if (promoActive) 'Sale']; // Add 'Sale' if the promotion is active.
print(items); // Print ['Home', 'Sale']
}

/// 11. Asynchrony: Futures.
///
/// Demonstrates the use of `Future` and the `async` keyword to handle
/// asynchronous operations in Dart.
Future<void> fetchData() async {
// Simulate an asynchronous data load with `Future.delayed`
await Future.delayed(Duration(seconds: 1));
print('Data fetched');
}

/// 12. Asynchrony: Streams.
///
/// Demonstrates the use of `Stream` in Dart to handle continuous data streams.
/// Here we use a `Stream.periodic` that emits a value every second.
Stream<int> counterStream = Stream.periodic(
Duration(seconds: 1), (x) => x).take(5); // Emit 5 values.

/// Function that listens for values ​​emitted by the `Stream`.
void listenToStream() {
counterStream.listen((event) {
print('Counter: $event'); // Prints the value emitted by the Stream.
});
}
```

### Documentation Summary:

- **String Interpolation:** How to insert variables and expressions into Strings.
- **Null Variables and Operators:** Use of the `??=` operator to handle null variables.
- **Collections (List, Set, Map):** Creation and manipulation of collections.
- **Arrow Functions:** Shorthand syntax for functions that return values.
- **Cascades:** `..` operator to chain method calls on the same object.
- **Optional Parameters:** Use of optional parameters and default values ​​in functions.
- **Named Parameters:** Defining and using named parameters.
- **Exceptions:** Handling exceptions with `try`, `catch`, and `finally`.
- **Named Constructors:** Using named constructors to handle different initializations.
- **Advanced Lists:** Using `if` inside lists to conditionally add elements.
- **Asynchrony:** Using `Future` and `Stream` for asynchronous operations and data flows.
