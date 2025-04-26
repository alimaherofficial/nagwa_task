import 'package:dio/dio.dart';
import 'package:nagwa_task/generated/l10n.dart';

/// A class that represents a failure.
class Failure implements Exception {
  /// Constructor for the Failure class.
  Failure(this.errMessage, this.errType);

  /// Factory method to create a Failure from an object.
  factory Failure.fromObject(dynamic e) {
    if (e is Exception) {
      return Failure.fromException(e);
    } else {
      return RegularFailure.fromException(Exception(e.toString()));
    }
  }

  /// Factory method to create a Failure from an Exception.
  factory Failure.fromException(Exception e) {
    switch (e.runtimeType) {
      case const (DioException):
        return DioFailure.fromDioError(e as DioException);
      default:
        return RegularFailure.fromException(e);
    }
  }

  /// The error message.
  final String errMessage;

  /// The error type.
  final String errType;

  @override
  String toString() {
    return 'Failure: $errMessage';
  }
}

/// A class that represents a Dio failure.
class DioFailure extends Failure {
  /// Constructor for the DioFailure class.
  DioFailure(String errMessage) : super(errMessage, 'Dio Exception');

  /// Factory method to create a DioFailure from a DioException.
  factory DioFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return DioFailure(S.current.connectionTimeoutWithApiserver);
      case DioExceptionType.sendTimeout:
        return DioFailure(S.current.sendTimeoutWithApiserver);
      case DioExceptionType.receiveTimeout:
        return DioFailure(S.current.receiveTimeoutWithApiserver);
      case DioExceptionType.badCertificate:
        return DioFailure(S.current.badCertificateWithApiserver);
      case DioExceptionType.badResponse:
        return DioFailure.fromResponse(e.response?.statusCode, e.response?.data);
      case DioExceptionType.cancel:
        return DioFailure(S.current.requestToApiserverWasCanceled);
      case DioExceptionType.connectionError:
        if (e.message!.contains('SocketException')) {
          return DioFailure(S.current.noInternetConnection);
        }
        return DioFailure(S.current.unexpectedErrorPleaseTryAgain);

      case DioExceptionType.unknown:
        return DioFailure(S.current.unknownErrorWithApiserver);
    }
  }

  /// Factory method to create a DioFailure from a response.
  factory DioFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 401) {
      return DioFailure(S.current.oppsThereWasAnErrorPleaseLoginAgain);
    }
    if ([400, 403, 422, 404].contains(statusCode)) {
      final responseMap = response as Map<String, dynamic>;

      return DioFailure(
        responseMap['detail'] as String? ??
            S.current.unexpectedErrorPleaseTryAgain,
      );
    } else if (statusCode == 500) {
      return DioFailure(S.current.internalServerErrorPleaseTryLater);
    } else {
      return DioFailure(S.current.oppsThereWasAnErrorPleaseTryAgain);
    }
  }

  @override
  String toString() {
    return 'DioFailure: $errMessage';
  }
}

/// A class that represents a regular failure.
class RegularFailure extends Failure {
  /// Constructor for the RegularFailure class.
  RegularFailure(String errMessage) : super(errMessage, 'Regular Exception');

  /// Factory method to create a RegularFailure from an Exception.
  factory RegularFailure.fromException(Exception e) {
    return RegularFailure(e.toString());
  }

  @override
  String toString() {
    return 'RegularFailure: $errMessage';
  }
}
