// IAppxManifestQualifiedResource.dart

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
import '../../../storage/packaging/appx/structs.g.dart';

/// @nodoc
const IID_IAppxManifestQualifiedResource =
    '{3B53A497-3C5C-48D1-9EA3-BB7EAC8CD7D4}';

/// {@category Interface}
/// {@category com}
class IAppxManifestQualifiedResource extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxManifestQualifiedResource(Pointer<COMObject> ptr) : super(ptr);

  int GetLanguage(
    Pointer<Pointer<Utf16>> language,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> language,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> language,
          )>()(
        ptr.ref.lpVtbl,
        language,
      );

  int GetScale(
    Pointer<Uint32> scale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> scale,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> scale,
          )>()(
        ptr.ref.lpVtbl,
        scale,
      );

  int GetDXFeatureLevel(
    Pointer<Int32> dxFeatureLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> dxFeatureLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> dxFeatureLevel,
          )>()(
        ptr.ref.lpVtbl,
        dxFeatureLevel,
      );
}
