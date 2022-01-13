// IXpsOMVisualBrush.dart

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

import '../../storage/xps/IXpsOMTileBrush.dart';
import '../../storage/xps/IXpsOMVisual.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMVisualBrush.dart';

/// @nodoc
const IID_IXpsOMVisualBrush = '{97E294AF-5B37-46B4-8057-874D2F64119B}';

/// {@category Interface}
/// {@category com}
class IXpsOMVisualBrush extends IXpsOMTileBrush {
  // vtable begins at 18, is 6 entries long.
  IXpsOMVisualBrush(Pointer<COMObject> ptr) : super(ptr);

  int GetVisual(
    Pointer<Pointer<COMObject>> visual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> visual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> visual,
          )>()(
        ptr.ref.lpVtbl,
        visual,
      );

  int GetVisualLocal(
    Pointer<Pointer<COMObject>> visual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> visual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> visual,
          )>()(
        ptr.ref.lpVtbl,
        visual,
      );

  int SetVisualLocal(
    Pointer<COMObject> visual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> visual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> visual,
          )>()(
        ptr.ref.lpVtbl,
        visual,
      );

  int GetVisualLookup(
    Pointer<Pointer<Utf16>> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int SetVisualLookup(
    Pointer<Utf16> lookup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lookup,
          )>()(
        ptr.ref.lpVtbl,
        lookup,
      );

  int Clone(
    Pointer<Pointer<COMObject>> visualBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> visualBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> visualBrush,
          )>()(
        ptr.ref.lpVtbl,
        visualBrush,
      );
}
