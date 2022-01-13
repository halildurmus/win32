// IGraphicsEffectD2D1Interop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/com/IUnknown.dart';
import '../../../../foundation/structs.g.dart';
import '../../../../system/winrt/graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_IGraphicsEffectD2D1Interop = '{2FC57384-A068-44D7-A331-30982FCF7177}';

/// {@category Interface}
/// {@category com}
class IGraphicsEffectD2D1Interop extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IGraphicsEffectD2D1Interop(Pointer<COMObject> ptr) : super(ptr);

  int GetEffectId(
    Pointer<GUID> id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> id,
          )>()(
        ptr.ref.lpVtbl,
        id,
      );

  int GetNamedPropertyMapping(
    Pointer<Utf16> name,
    Pointer<Uint32> index,
    Pointer<Int32> mapping,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Uint32> index,
            Pointer<Int32> mapping,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<Uint32> index,
            Pointer<Int32> mapping,
          )>()(
        ptr.ref.lpVtbl,
        name,
        index,
        mapping,
      );

  int GetPropertyCount(
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        count,
      );

  int GetProperty(
    int index,
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        index,
        value,
      );

  int GetSource(
    int index,
    Pointer<Pointer<COMObject>> source,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> source,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> source,
          )>()(
        ptr.ref.lpVtbl,
        index,
        source,
      );

  int GetSourceCount(
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        count,
      );
}
