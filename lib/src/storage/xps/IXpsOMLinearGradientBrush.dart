// IXpsOMLinearGradientBrush.dart

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

import '../../storage/xps/IXpsOMGradientBrush.dart';
import '../../storage/xps/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMLinearGradientBrush.dart';

/// @nodoc
const IID_IXpsOMLinearGradientBrush = '{005E279F-C30D-40FF-93EC-1950D3C528DB}';

/// {@category Interface}
/// {@category com}
class IXpsOMLinearGradientBrush extends IXpsOMGradientBrush {
  // vtable begins at 17, is 5 entries long.
  IXpsOMLinearGradientBrush(Pointer<COMObject> ptr) : super(ptr);

  int GetStartPoint(
    Pointer<XPS_POINT> startPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
      );

  int SetStartPoint(
    Pointer<XPS_POINT> startPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> startPoint,
          )>()(
        ptr.ref.lpVtbl,
        startPoint,
      );

  int GetEndPoint(
    Pointer<XPS_POINT> endPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> endPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> endPoint,
          )>()(
        ptr.ref.lpVtbl,
        endPoint,
      );

  int SetEndPoint(
    Pointer<XPS_POINT> endPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_POINT> endPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_POINT> endPoint,
          )>()(
        ptr.ref.lpVtbl,
        endPoint,
      );

  int Clone(
    Pointer<Pointer<COMObject>> linearGradientBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> linearGradientBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> linearGradientBrush,
          )>()(
        ptr.ref.lpVtbl,
        linearGradientBrush,
      );
}
