import 'package:countries_info/api_service/countries/country_service.dart';
import 'package:countries_info/api_service/dio_client.dart';
import 'package:countries_info/states/countries_state_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_state.g.dart';

@riverpod
class CountriesState extends _$CountriesState {
  late final CountryService _countryService;

  @override
  CountriesStateModel build() {
    _countryService = CountryService(DioClient.dio);
    return CountriesStateModel();
  }

  Future<void> getGermanyData() async {
    var data = await _countryService.getGermanyData();
  }
}
