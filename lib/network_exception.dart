import 'package:dio/dio.dart';

class NetWorkException {

  final String message ;

  static handleNetWorkException (DioException e){
    if (e.type == DioExceptionType.connectionTimeout) {
      return NetWorkException(
          'Connection Timeout : Please check your internet connection.');
    } else if (e.type == DioExceptionType.connectionError) {
      return NetWorkException(
          'Connection Error : Please check your internet connection.');
    } else if (e.type == DioExceptionType.receiveTimeout) {
      return NetWorkException(
          'Server Timeout : The server is taking too long to respond.');
    } else if (e.type == DioExceptionType.badResponse) {
      return NetWorkException(
          'Bad Response : ${e.response?.statusCode} : Invalid data received.');
    } else {
      return NetWorkException(
          'Unknown error : Something unexpected happened.');
    }
  }


  NetWorkException(this.message);

  @override
  String toString() => message;
}