// IXpsOMPartResources.dart

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
import '../../storage/xps/IXpsOMFontResourceCollection.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMImageResourceCollection.dart';
import '../../storage/xps/IXpsOMColorProfileResourceCollection.dart';
import '../../storage/xps/IXpsOMRemoteDictionaryResourceCollection.dart';

/// @nodoc
const IID_IXpsOMPartResources = '{F4CF7729-4864-4275-99B3-A8717163ECAF}';

/// {@category Interface}
/// {@category com}
class IXpsOMPartResources extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IXpsOMPartResources(Pointer<COMObject> ptr) : super(ptr);

  int GetFontResources(
    Pointer<Pointer<COMObject>> fontResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontResources,
          )>()(
        ptr.ref.lpVtbl,
        fontResources,
      );

  int GetImageResources(
    Pointer<Pointer<COMObject>> imageResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageResources,
          )>()(
        ptr.ref.lpVtbl,
        imageResources,
      );

  int GetColorProfileResources(
    Pointer<Pointer<COMObject>> colorProfileResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> colorProfileResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> colorProfileResources,
          )>()(
        ptr.ref.lpVtbl,
        colorProfileResources,
      );

  int GetRemoteDictionaryResources(
    Pointer<Pointer<COMObject>> dictionaryResources,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> dictionaryResources,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> dictionaryResources,
          )>()(
        ptr.ref.lpVtbl,
        dictionaryResources,
      );
}
