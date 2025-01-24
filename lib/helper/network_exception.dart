import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetWorkException implements Exception{

  final String message ;
  final DioExceptionType type;

  static handleNetWorkException (DioException e){
    debugPrint(e.type.toString());

    if (e.type == DioExceptionType.connectionTimeout || e.type == DioExceptionType.sendTimeout) {
      throw NetWorkException(
          'Please check your internet connection.',type: e.type);
    } else if (e.type == DioExceptionType.connectionError) {
      throw NetWorkException(
          'Please check your internet connection.',type: e.type);
    } else if (e.type == DioExceptionType.receiveTimeout) {
      throw NetWorkException(
          'The server is taking too long to respond.',type: e.type);
    }  else if (e.type == DioExceptionType.badResponse) {
      throw NetWorkException(
          'Bad Response : ${e.response?.statusCode} : Invalid data received.',type: e.type);
    } else {
      throw NetWorkException(
          'Unknown error : Something unexpected happened.',type: e.type);
    }
  }

  NetWorkException(this.message, {required this.type});

  @override
  String toString() => message;
}