// ITfDisplayAttributeProvider.dart

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
import '../../ui/textservices/IEnumTfDisplayAttributeInfo.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfDisplayAttributeInfo.dart';

/// @nodoc
const IID_ITfDisplayAttributeProvider =
    '{FEE47777-163C-4769-996A-6E9C50AD8F54}';

/// {@category Interface}
/// {@category com}
class ITfDisplayAttributeProvider extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfDisplayAttributeProvider(Pointer<COMObject> ptr) : super(ptr);

  int EnumDisplayAttributeInfo(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetDisplayAttributeInfo(
    Pointer<GUID> guid,
    Pointer<Pointer<COMObject>> ppInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Pointer<COMObject>> ppInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Pointer<COMObject>> ppInfo,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        ppInfo,
      );
}
