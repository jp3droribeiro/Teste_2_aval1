part of 'exchange.dart';

bool isListOfMapOfString(var listOfMaps) {
  for (var item in listOfMaps) {
    if (item is Map) {
      if (item.isNotEmpty) {
        var keys = item.keys;
        for (var key in keys) {
          if (key is ! String) {
            return false;
          }
        }
      } else {
         return false;
      }
    } else {
      return false;
    }
  }
  return true;
}

bool isString(var object) {
  if (object is String) {
    return true;
  } else {
    return false;
  }
}

List<String> jsonFields(String jsonString) {
  var json = jsonDecode(jsonString);
  Set aux = {};
  final List<String> keys = [];
  for (var itens in json) {
    var b = itens.keys;
    for (var i in b) {
      aux.add(i);
    }
  }
  for (var d in aux) {
    keys.add(d);
  }
  return keys;
}

List<String> xmlFields(String xmlString) {
  XmlDocument xmlObject = XmlDocument.parse(xmlString);
  Set attributeNamesSet = {};
  List<String> attributeNamesList = [];
  var xmlIterable = xmlObject.findAllElements('record');
  for (var item in xmlIterable) {
    for (var attribute in item.attributes) {
      attributeNamesSet.add(attribute.name.local);
    }
  }
  for (String names in attributeNamesSet) {
    attributeNamesList.add(names);
  }
  return attributeNamesList;
}

List<String> delimitedDataFields(String text) {
  List<String> lines = text.split('\n');
  String firstLine = lines.isNotEmpty ? lines[0] : '';
  if (lines[0] == '') {
    throw NotValidDelimitedData();
  } else {
    return [firstLine];
  }
}

