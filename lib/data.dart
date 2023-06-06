part of 'exchange.dart';

abstract class Data {
  String content = "";

  void load(String fileName) {
    content = File(fileName).readAsStringSync();
    try {
      content = File(fileName).readAsStringSync();
    }
    catch (e) {
      throw FileNotFound();
    }
  }

  void save(String fileName) {
    File(fileName).writeAsStringSync(content);
  }

  void clear() {
    content = "";
  }

  bool get hasData {
    return content.isNotEmpty ? true : false;
  }

  String get data {
    return content;
  }

  set data(dynamic stringContent) {
    if (isString(stringContent)) {
      content = stringContent;
    } else {
      throw DataTypeError();
    }
  }
    
  List<String> get fields;
}
