part of 'exchange.dart';

class TsvData extends DelimitedData {
  @override
  String get delimiter {
    return "\t";
  }
}
