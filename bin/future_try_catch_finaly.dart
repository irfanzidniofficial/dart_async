Future<String> sayHello(String name) {
  // return Future.value("Hello $name");
  return Future.error(Exception("Ups"));
}

void main() {
  sayHello("Irfan")
      .then((value) => print(value))
      .catchError((error) => print("Error message ${error.message}"))
      .whenComplete(() => print("All Done"));
  print("Done");
}
