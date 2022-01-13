// IXpsOMImageBrush.dart

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
import '../../storage/xps/IXpsOMImageResource.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMColorProfileResource.dart';
import '../../storage/xps/IXpsOMImageBrush.dart';

/// @nodoc
const IID_IXpsOMImageBrush = '{3DF0B466-D382-49EF-8550-DD94C80242E4}';

/// {@category Interface}
/// {@category com}
class IXpsOMImageBrush extends IXpsOMTileBrush {
  // vtable begins at 18, is 5 entries long.
  IXpsOMImageBrush(Pointer<COMObject> ptr) : super(ptr);

  int GetImageResource(
    Pointer<Pointer<COMObject>> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        imageResource,
      );

  int SetImageResource(
    Pointer<COMObject> imageResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> imageResource,
          )>()(
        ptr.ref.lpVtbl,
        imageResource,
      );

  int GetColorProfileResource(
    Pointer<Pointer<COMObject>> colorProfileResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> colorProfileResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> colorProfileResource,
          )>()(
        ptr.ref.lpVtbl,
        colorProfileResource,
      );

  int SetColorProfileResource(
    Pointer<COMObject> colorProfileResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> colorProfileResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> colorProfileResource,
          )>()(
        ptr.ref.lpVtbl,
        colorProfileResource,
      );

  int Clone(
    Pointer<Pointer<COMObject>> imageBrush,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageBrush,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageBrush,
          )>()(
        ptr.ref.lpVtbl,
        imageBrush,
      );
}
