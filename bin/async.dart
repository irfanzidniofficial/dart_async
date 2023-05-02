Future<String> sayHello(String name) async {
  return "Hello from $name";
}

void main() {
  sayHello("Word").then(
    (value) => print(value),
  );
  print("Done");
}
