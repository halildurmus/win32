import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';

const IID_IWbemServices = '{9556dc99-828c-11cf-a37e-00aa003240c7}';

typedef ExecQuery_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer pCtx,
    Pointer<IntPtr> ppEnum);
typedef ExecQuery_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer pCtx,
    Pointer<IntPtr> ppEnum);

class IWbemServices extends IUnknown {
  // vtable begins at 3, ends at 25

  @override
  Pointer<COMObject> ptr;

  IWbemServices(this.ptr) : super(ptr);

  int ExecQuery(Pointer<Utf16> strQueryLanguage, Pointer<Utf16> strQuery,
          int lFlags, Pointer pCtx, Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<ExecQuery_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<ExecQuery_Dart>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);
}
