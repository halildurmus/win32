// ignore_for_file: camel_case_extensions

import '../enums.g.dart';
import '../exception.dart';
import '../hresult.dart';
import '../macros.dart';

/// Extension on [WIN32_ERROR], providing utility functions for error handling
/// and conversion to [HRESULT].
extension WIN32_ERRORExtension on WIN32_ERROR {
  /// Determines whether this error code represents a _success_.
  ///
  /// A code is considered successful if its value is equal to zero.
  @pragma('vm:prefer-inline')
  bool get isOk => this == 0;

  /// Determines whether this error code represents a _failure_.
  ///
  /// A code is considered a failure if its value is not equal to zero.
  @pragma('vm:prefer-inline')
  bool get isError => !isOk;

  /// Executes the provided function [op] if this error code is a _success_.
  ///
  /// Throws a [WindowsException] if the code represents a _failure_ with the
  /// current error code converted to an [HRESULT].
  ///
  /// This method simplifies error handling by letting you focus on the success
  /// path while automatically throwing an exception in case of failure.
  ///
  /// Example:
  /// ```dart
  /// WIN32_ERROR errorCode = someFunction();
  /// String result = errorCode.onSuccess(() => 'Operation succeeded!');
  /// ```
  @pragma('vm:prefer-inline')
  T onSuccess<T>(T Function() op) {
    if (isOk) return op();
    throw WindowsException(toHRESULT());
  }

  /// Converts this error code to its equivalent [HRESULT] value.
  ///
  /// This is useful for interoperability with APIs that use HRESULT codes to
  /// represent errors or statuses. The conversion is performed using the
  /// [HRESULT_FROM_WIN32] macro.
  @pragma('vm:prefer-inline')
  HRESULT toHRESULT() => HRESULT_FROM_WIN32(this);
}
