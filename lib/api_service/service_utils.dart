import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:countries_info/app.dart';
import 'package:countries_info/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServiceUtils {
  // Generic method to make an API call and return typed response
  static Future<void> makeApiCall<T>({
    required Future<T> apiCall,
    required Function(T data) onSuccess,
    required Function(String error) onError,
  }) async {
    try {
      // Check for internet connectivity before making the API call
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult.contains(ConnectivityResult.none)) {
        ScaffoldMessenger.of(rootNavigatorKey.currentState!.context)
            .clearSnackBars();
        ScaffoldMessenger.of(rootNavigatorKey.currentState!.context)
            .showSnackBar(
          const SnackBar(
            content:
                Text('No internet connection. Please check your connection.'),
          ),
        );
        return onError(Constants.noInternet);
      }

      // Make the API call
      T response = await apiCall;

      onSuccess(response);
    } on DioException catch (e) {
      // Handle Dio-specific errors
      if (e.type == DioExceptionType.connectionTimeout) {
        onError("Connection timeout");
      } else if (e.type == DioExceptionType.receiveTimeout) {
        onError("Receive timeout");
      } else if (e.type == DioExceptionType.badResponse) {
        onError("Server error: ${e.response?.statusMessage}");
      } else if (e.type == DioExceptionType.unknown &&
          e.error is SocketException) {
        ScaffoldMessenger.of(rootNavigatorKey.currentState!.context)
            .showSnackBar(
          const SnackBar(
            content:
                Text('No internet connection. Please check your connection.'),
          ),
        );
        onError(Constants.noInternet);
      } else {
        onError("Unexpected error occurred: ${e.message}");
      }
      if (!(e.type == DioExceptionType.unknown && e.error is SocketException)) {
        ScaffoldMessenger.of(rootNavigatorKey.currentState!.context)
            .showSnackBar(
          SnackBar(
            content: Text('${e.message}'),
          ),
        );
      }
    } catch (e) {
      onError("Unexpected error: ${e.toString()}");
      ScaffoldMessenger.of(rootNavigatorKey.currentState!.context).showSnackBar(
        const SnackBar(
          content: Text('Oops.. Something went wrong'),
        ),
      );
    }
  }
}
