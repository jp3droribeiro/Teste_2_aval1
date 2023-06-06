part of 'exchange.dart';

abstract class DelimitedData extends Data {
  @override
  List<String> get fields {
    return delimitedDataFields(super.data);
  }

  String get delimiter;
}
