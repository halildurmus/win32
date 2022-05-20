import 'package:winmd/winmd.dart';

import 'safenames.dart';
import 'winrt_method.dart';

abstract class WinRTPropertyProjection extends WinRTMethodProjection {
  WinRTPropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  /// Strip off all underscores, even if double underscores
  String get exposedMethodName =>
      method.name.startsWith('get__') || method.name.startsWith('put__')
          ? safeIdentifierForString(method.name.substring(5))
          : safeIdentifierForString(method.name.substring(4));

  // WinRT properties always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($dartParams)';
}
