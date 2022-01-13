// IMediaPropertyBag.dart

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

import '../../system/com/structuredstorage/IPropertyBag.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMediaPropertyBag = '{6025A880-C0D5-11D0-BD4E-00A0C911CE86}';

/// {@category Interface}
/// {@category com}
class IMediaPropertyBag extends IPropertyBag {
  // vtable begins at 5, is 1 entries long.
  IMediaPropertyBag(Pointer<COMObject> ptr) : super(ptr);

  int EnumProperty(
    int iProperty,
    Pointer<VARIANT> pvarPropertyName,
    Pointer<VARIANT> pvarPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iProperty,
            Pointer<VARIANT> pvarPropertyName,
            Pointer<VARIANT> pvarPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iProperty,
            Pointer<VARIANT> pvarPropertyName,
            Pointer<VARIANT> pvarPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        iProperty,
        pvarPropertyName,
        pvarPropertyValue,
      );
}
