import 'package:countries_info/models/country_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'country_service.g.dart';

@RestApi(baseUrl: "https://restcountries.com/v3.1/")
abstract class CountryService {
  factory CountryService(Dio dio, {String baseUrl}) = _CountryService;

  @GET("/translation/germany")
  Future<List<Country>> getGermanyData();

  @GET("/translation/india")
  Future<List<Country>> getIndiaData();

  @GET("/translation/israel")
  Future<List<Country>> getIsraelData();

  @GET("/translation/lanka")
  Future<List<Country>> getLankaData();

  @GET("/translation/italy")
  Future<List<Country>> getItalyData();

  @GET("/translation/china")
  Future<List<Country>> getChinaData();

  @GET("/translation/korea")
  Future<List<Country>> getKoreaData();
}
