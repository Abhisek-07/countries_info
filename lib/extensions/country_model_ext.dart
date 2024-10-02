import 'package:countries_info/models/country_model.dart';

extension CountryExtension on Country? {
  String get currencyCode => this?.currencies?.keys.first ?? '';
  Currency? get currencyDetails => this?.currencies?.values.first;
}
