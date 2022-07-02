import 'safenames.dart';
import 'utils.dart';
import 'winrt_method.dart';

abstract class WinRTPropertyProjection extends WinRTMethodProjection {
  WinRTPropertyProjection(super.method, super.vtableOffset);

  /// Strip off all underscores, even if double underscores
  String get exposedMethodName =>
      method.name.startsWith('get__') || method.name.startsWith('put__')
          ? safeIdentifierForString(method.name.substring(5)).toCamelCase()
          : safeIdentifierForString(method.name.substring(4)).toCamelCase();

  // WinRT properties always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($dartParams)';
}
