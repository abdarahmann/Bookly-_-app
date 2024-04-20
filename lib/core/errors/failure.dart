import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Api Server connection Timeout ');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Api Server send Timeout ');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Api Server receive Timeout ');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errMessage: 'There was a badCertificate in Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Request Api Server Was Canceld ');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'No Internet connection ');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Un Excepted Error, please Try again later');
           default: return ServerFailure(
          errMessage: "OOps There was an error Please try again later");
    }
    
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: 'Your Request Not Found,Try Again Later ');
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: "Internal Server error, Please try later");
    } else {
      return ServerFailure(
          errMessage: "OOps There was an error Please try again later");
    }
  }
}
