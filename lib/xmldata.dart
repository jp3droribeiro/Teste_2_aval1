part of 'exchange.dart';

class XmlData extends Data {
  @override
  set data(dynamic content) {
    try {
      XmlDocument.parse(content);
      super.data = content;
    } catch (e) {
      throw NotValidXml();
    }
  }

  @override
  List<String> get fields {
    return xmlFields(super.data);
  }
}

