// IWbemConstructClassObject.dart

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

/// @nodoc
const IID_IWbemConstructClassObject = '{9EF76194-70D5-11D1-AD90-00C04FD8FDFF}';

/// {@category Interface}
/// {@category com}
class IWbemConstructClassObject extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWbemConstructClassObject(Pointer<COMObject> ptr) : super(ptr);

  int SetInheritanceChain(
    int lNumAntecedents,
    Pointer<Pointer<Utf16>> awszAntecedents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lNumAntecedents,
            Pointer<Pointer<Utf16>> awszAntecedents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lNumAntecedents,
            Pointer<Pointer<Utf16>> awszAntecedents,
          )>()(
        ptr.ref.lpVtbl,
        lNumAntecedents,
        awszAntecedents,
      );

  int SetPropertyOrigin(
    Pointer<Utf16> wszPropertyName,
    int lOriginIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPropertyName,
            Int32 lOriginIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPropertyName,
            int lOriginIndex,
          )>()(
        ptr.ref.lpVtbl,
        wszPropertyName,
        lOriginIndex,
      );

  int SetMethodOrigin(
    Pointer<Utf16> wszMethodName,
    int lOriginIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszMethodName,
            Int32 lOriginIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszMethodName,
            int lOriginIndex,
          )>()(
        ptr.ref.lpVtbl,
        wszMethodName,
        lOriginIndex,
      );

  int SetServerNamespace(
    Pointer<Utf16> wszServer,
    Pointer<Utf16> wszNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszServer,
            Pointer<Utf16> wszNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszServer,
            Pointer<Utf16> wszNamespace,
          )>()(
        ptr.ref.lpVtbl,
        wszServer,
        wszNamespace,
      );
}
