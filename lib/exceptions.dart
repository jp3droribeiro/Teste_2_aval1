part of 'exchange.dart';

class FileNotFound implements Exception {
  @override
  String toString() {
    return "FileNotFound: File not exist or wrong path.";
  }
}

class NameFieldError implements Exception {
  @override
  String toString() {
    return "NameFieldError: Name field is required.";
  }
}

class DataTypeError implements Exception {
  @override
  String toString() {
    return "DataTypeError: Data type is not a valid type (String).";
  }
}


class NotValidJson implements Exception {
  @override
  String toString() {
    return "NotValidJson: String must be a valid json.";
  }
}

class NotValidXml implements Exception {
  @override
  String toString() {
    return "NotValidXml: String must be a valid xml.";
  }
}

class NotValidDelimitedData implements Exception {
  @override
  String toString() {
    return "NotValidDelimitedData: String must be a valid csv or tsv format.";
  }
}
