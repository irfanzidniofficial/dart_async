import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return "$i : Genap";
    } else {
      return "$i : Ganjil";
    }
  });
}

void main() {
  Stream<String> flow = stream();
  // Stream hanya bisa di subscirbe sebanyak 1 kali
  StreamSubscription<String> listen = flow.listen((event) {
    print(event); // tergantikan oleh onDone
  });

  listen.onData(
    (data) {
      print("Stream Subsribtion : $data");
    },
  );
  listen.onDone(() {
    print("Sream Subscription Done");
  });

  print("Done");
}
