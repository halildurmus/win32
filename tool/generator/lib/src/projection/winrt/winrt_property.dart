import '../safenames.dart';
import '../utils.dart';
import 'winrt_method.dart';

abstract class WinRTPropertyProjection extends WinRTMethodProjection {
  WinRTPropertyProjection(super.method, super.vtableOffset);

  /// Strip off all underscores, even if double underscores
  String get exposedMethodName {
    // e.g. get__Languages, put__Data
    if (method.name.startsWith('get__') || method.name.startsWith('put__')) {
      // e.g. get__Languages -> Languages, put__Data -> Data
      final formattedMethodName = method.name.substring(5);

      for (final acronym in acronyms) {
        if (formattedMethodName.startsWith(acronym)) {
          // e.g. IPInformation -> ipInformation
          return safeIdentifierForString(acronym.toLowerCase() +
              formattedMethodName.substring(acronym.length));
        }
      }

      return safeIdentifierForString(formattedMethodName).toCamelCase();
    } else {
      // e.g. get_Size -> Size, put_Completed -> Completed
      final formattedMethodName = method.name.substring(4);

      for (final acronym in acronyms) {
        if (formattedMethodName.startsWith(acronym)) {
          // e.g. IPInformation -> ipInformation
          return safeIdentifierForString(acronym.toLowerCase() +
              formattedMethodName.substring(acronym.length));
        }
      }

      return safeIdentifierForString(formattedMethodName).toCamelCase();
    }
  }

  // WinRT properties always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($dartParams)';
}
