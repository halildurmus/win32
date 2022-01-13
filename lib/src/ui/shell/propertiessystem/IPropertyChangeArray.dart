// IPropertyChangeArray.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/shell/propertiessystem/IPropertyChange.dart';
import '../../../ui/shell/propertiessystem/structs.g.dart';

/// @nodoc
const IID_IPropertyChangeArray = '{380F5CAD-1B5E-42F2-805D-637FD392D31E}';

/// {@category Interface}
/// {@category com}
class IPropertyChangeArray extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IPropertyChangeArray(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pcOperations,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcOperations,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcOperations,
          )>()(
        ptr.ref.lpVtbl,
        pcOperations,
      );

  int GetAt(
    int iIndex,
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
            Uint32 iIndex,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        riid,
        ppv,
      );

  int InsertAt(
    int iIndex,
    Pointer<COMObject> ppropChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
            Pointer<COMObject> ppropChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<COMObject> ppropChange,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        ppropChange,
      );

  int Append(
    Pointer<COMObject> ppropChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppropChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppropChange,
          )>()(
        ptr.ref.lpVtbl,
        ppropChange,
      );

  int AppendOrReplace(
    Pointer<COMObject> ppropChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppropChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppropChange,
          )>()(
        ptr.ref.lpVtbl,
        ppropChange,
      );

  int RemoveAt(
    int iIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
      );

  int IsKeyInArray(
    Pointer<PROPERTYKEY> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
          )>()(
        ptr.ref.lpVtbl,
        key,
      );
}
