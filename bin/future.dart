Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Irfan Zidni");
  });
}

void main() {
  hello();
  print("Done");
}
