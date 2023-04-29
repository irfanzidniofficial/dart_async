Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    // return "Hello $name";

    return Future.error(Exception("Ups"));
  });
}

// => then

// void main() {
//   sayHello("Irfan").then((value) => print(value));
//   print("Done");
// }

// => onError
// => whenComplete

void main() {
  sayHello("Irfan")
      // .onError((error, stackTrace) => "Fallback")
      .whenComplete(() => print("Done Future"))
      .then((value) => print(value))
      .catchError((error) => print("Error with message ${error.message}"));
  print("Done");
}
