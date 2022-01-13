// IParseAndCreateItem.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../ui/shell/IShellItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IParseAndCreateItem = '{67EFED0E-E827-4408-B493-78F3982B685C}';

/// {@category Interface}
/// {@category com}
class IParseAndCreateItem extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IParseAndCreateItem(Pointer<COMObject> ptr) : super(ptr);

  int SetItem(
    Pointer<COMObject> psi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psi,
          )>()(
        ptr.ref.lpVtbl,
        psi,
      );

  int GetItem(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );
}
