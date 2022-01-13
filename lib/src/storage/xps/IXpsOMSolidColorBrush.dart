// IXpsOMSolidColorBrush.dart

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

import '../../storage/xps/IXpsOMBrush.dart';
import '../../storage/xps/structs.g.dart';
import '../../storage/xps/IXpsOMColorProfileResource.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMSolidColorBrush.dart';

/// @nodoc
const IID_IXpsOMSolidColorBrush = '{A06F9F05-3BE9-4763-98A8-094FC672E488}';

/// {@category Interface}
/// {@category com}
class IXpsOMSolidColorBrush extends IXpsOMBrush {
  // vtable begins at 7, is 3 entries long.
  IXpsOMSolidColorBrush(Pointer<COMObject> ptr) : super(ptr);

  int GetColor(
    Pointer<XPS_COLOR> color,
    Pointer<Pointer<COMObject>> colorProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<Pointer<COMObject>> colorProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<Pointer<COMObject>> colorProfile,
          )>()(
        ptr.ref.lpVtbl,
        color,
        colorProfile,
      );

  int SetColor(
    Pointer<XPS_COLOR> color,
    Pointer<COMObject> colorProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<COMObject> colorProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_COLOR> color,
            Pointer<COMObject> colorProfile,
          )>()(
        ptr.ref.lpVtbl,
        color,
        colorProfile,
      );

  int Clone(
    Pointer<Pointer<COMObject>> solidColorBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> solidColorBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> solidColorBrush,
          )>()(
        ptr.ref.lpVtbl,
        solidColorBrush,
      );
}
