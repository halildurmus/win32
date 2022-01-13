// IMediaSample2Config.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMediaSample2Config = '{68961E68-832B-41EA-BC91-63593F3E70E3}';

/// {@category Interface}
/// {@category com}
class IMediaSample2Config extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMediaSample2Config(Pointer<COMObject> ptr) : super(ptr);

  int GetSurface(
    Pointer<Pointer<COMObject>> ppDirect3DSurface9,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDirect3DSurface9,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDirect3DSurface9,
          )>()(
        ptr.ref.lpVtbl,
        ppDirect3DSurface9,
      );
}
