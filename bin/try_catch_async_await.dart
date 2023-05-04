Future<String> firstName() async {
  return "Irfan";
}

Future<String> lastName() async {
  return "Zidni";
}

Future<String> sayHello(String name) async {
  return "Hello $name";
}

Future<void> say() async {
  try {
    String first = await firstName();
    String last = await lastName();
    String hello = await sayHello("$first $last");
    print(hello);
  } catch (e) {
    print(e);
  } finally {
    print("Done say");
  }
}

void main() {
  say();
  print("Done");
}
