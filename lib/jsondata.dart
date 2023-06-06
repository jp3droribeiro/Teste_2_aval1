part of 'exchange.dart';

class JsonData extends Data {
  @override
  set data(var content) {
    try {
      jsonDecode(content);
      super.data = content;
    } catch (e) {
      throw NotValidJson();
    }
  }

  @override
  List<String> get fields {
    return jsonFields(super.content);
  }
}
