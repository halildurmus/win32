// IAssocHandler.dart

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
import '../../foundation/structs.g.dart';
import '../../system/com/IDataObject.dart';
import '../../ui/shell/IAssocHandlerInvoker.dart';

/// @nodoc
const IID_IAssocHandler = '{F04061AC-1659-4A3F-A954-775AA57FC083}';

/// {@category Interface}
/// {@category com}
class IAssocHandler extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IAssocHandler(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> ppsz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppsz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppsz,
          )>()(
        ptr.ref.lpVtbl,
        ppsz,
      );

  int GetUIName(
    Pointer<Pointer<Utf16>> ppsz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppsz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppsz,
          )>()(
        ptr.ref.lpVtbl,
        ppsz,
      );

  int GetIconLocation(
    Pointer<Pointer<Utf16>> ppszPath,
    Pointer<Int32> pIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
            Pointer<Int32> pIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
            Pointer<Int32> pIndex,
          )>()(
        ptr.ref.lpVtbl,
        ppszPath,
        pIndex,
      );

  int IsRecommended() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int MakeDefault(
    Pointer<Utf16> pszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDescription,
          )>()(
        ptr.ref.lpVtbl,
        pszDescription,
      );

  int Invoke(
    Pointer<COMObject> pdo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdo,
          )>()(
        ptr.ref.lpVtbl,
        pdo,
      );

  int CreateInvoker(
    Pointer<COMObject> pdo,
    Pointer<Pointer<COMObject>> ppInvoker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdo,
            Pointer<Pointer<COMObject>> ppInvoker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdo,
            Pointer<Pointer<COMObject>> ppInvoker,
          )>()(
        ptr.ref.lpVtbl,
        pdo,
        ppInvoker,
      );
}
