import 'dart:convert';
import 'dart:isolate';

void main() async {
  final jsonData = '{"name": "John", "age": 30}';

  final receivePort = ReceivePort();
  await Isolate.spawn(jsonProcessingIsolate, receivePort.sendPort);

  final sendPort = await receivePort.first;

  final responsePort = ReceivePort();
  sendPort.send([jsonData, responsePort.sendPort]);

  final processedData = await responsePort.first;
  print(processedData);
}

void jsonProcessingIsolate(SendPort sendPort) {
  final receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);

  receivePort.listen((message) {
    final jsonString = message[0];
    final replyPort = message[1];

    // Обработка JSON в изоляте
    final processedData = jsonDecode(jsonString);

    // Возврат обработанных данных в основной поток
    replyPort.send(processedData);
  });
}