// ITypeComp.dart

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
import '../../system/com/ITypeInfo.dart';
import '../../system/com/structs.g.dart';
import '../../system/com/ITypeComp.dart';

/// @nodoc
const IID_ITypeComp = '{00020403-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ITypeComp extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITypeComp(Pointer<COMObject> ptr) : super(ptr);

  int Bind(
    Pointer<Utf16> szName,
    int lHashVal,
    int wFlags,
    Pointer<Pointer<COMObject>> ppTInfo,
    Pointer<Int32> pDescKind,
    Pointer<BINDPTR> pBindPtr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szName,
            Uint32 lHashVal,
            Uint16 wFlags,
            Pointer<Pointer<COMObject>> ppTInfo,
            Pointer<Int32> pDescKind,
            Pointer<BINDPTR> pBindPtr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szName,
            int lHashVal,
            int wFlags,
            Pointer<Pointer<COMObject>> ppTInfo,
            Pointer<Int32> pDescKind,
            Pointer<BINDPTR> pBindPtr,
          )>()(
        ptr.ref.lpVtbl,
        szName,
        lHashVal,
        wFlags,
        ppTInfo,
        pDescKind,
        pBindPtr,
      );

  int BindType(
    Pointer<Utf16> szName,
    int lHashVal,
    Pointer<Pointer<COMObject>> ppTInfo,
    Pointer<Pointer<COMObject>> ppTComp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szName,
            Uint32 lHashVal,
            Pointer<Pointer<COMObject>> ppTInfo,
            Pointer<Pointer<COMObject>> ppTComp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szName,
            int lHashVal,
            Pointer<Pointer<COMObject>> ppTInfo,
            Pointer<Pointer<COMObject>> ppTComp,
          )>()(
        ptr.ref.lpVtbl,
        szName,
        lHashVal,
        ppTInfo,
        ppTComp,
      );
}
