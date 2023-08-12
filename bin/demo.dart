import 'dart:isolate';

Future<void> main() async {
  final receivePort = ReceivePort();
  final sendPort = receivePort.sendPort;

  Isolate isolate = await Isolate.spawn(parseResponse, sendPort);
  receivePort.listen((message) {
    print(message);
  });
  print("Isolate world having some dificulties");
}

Future<void> parseResponse(SendPort sendPort)async{
  await Future.delayed(Duration(seconds: 2));
  sendPort.send({"message":"Welcome to isolate world"});
}