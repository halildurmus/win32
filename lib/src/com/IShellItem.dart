import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';

const IID_IShellItem = '{43826d1e-e718-42ee-bc55-a1e261c37bfe}';

typedef GetDisplayName_Native = Int32 Function(
    Pointer obj, Int32 sigdnName, Pointer<Utf16> ppszName);
typedef GetDisplayName_Dart = int Function(
    Pointer obj, int sigdnName, Pointer<Utf16> ppszName);

class IShellItem extends IUnknown {
  // vtable begins at 3, ends at 7

  @override
  Pointer<COMObject> ptr;

  IShellItem(this.ptr) : super(ptr);

  int GetDisplayName(int sigdnName, Pointer<Utf16> ppszName) =>
      Pointer<NativeFunction<GetDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<GetDisplayName_Dart>()(
          ptr.ref.lpVtbl, sigdnName, ppszName);
}
