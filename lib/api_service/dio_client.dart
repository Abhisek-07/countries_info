import 'package:dio/dio.dart';

class DioClient {
  // Single Dio instance for the entire app, accessible statically
  static final Dio _dio = Dio(BaseOptions(
    responseType: ResponseType.json,
  ));

  // Private constructor to prevent instantiation
  DioClient._();

  // Static getter to provide access to the Dio instance
  static Dio get dio => _dio;
}
