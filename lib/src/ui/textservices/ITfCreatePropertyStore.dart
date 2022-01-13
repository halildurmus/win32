// ITfCreatePropertyStore.dart

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
import '../../ui/textservices/ITfRange.dart';
import '../../ui/textservices/ITfPropertyStore.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_ITfCreatePropertyStore = '{2463FBF0-B0AF-11D2-AFC5-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfCreatePropertyStore extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfCreatePropertyStore(Pointer<COMObject> ptr) : super(ptr);

  int IsStoreSerializable(
    Pointer<GUID> guidProp,
    Pointer<COMObject> pRange,
    Pointer<COMObject> pPropStore,
    Pointer<Int32> pfSerializable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidProp,
            Pointer<COMObject> pRange,
            Pointer<COMObject> pPropStore,
            Pointer<Int32> pfSerializable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidProp,
            Pointer<COMObject> pRange,
            Pointer<COMObject> pPropStore,
            Pointer<Int32> pfSerializable,
          )>()(
        ptr.ref.lpVtbl,
        guidProp,
        pRange,
        pPropStore,
        pfSerializable,
      );

  int CreatePropertyStore(
    Pointer<GUID> guidProp,
    Pointer<COMObject> pRange,
    int cb,
    Pointer<COMObject> pStream,
    Pointer<Pointer<COMObject>> ppStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidProp,
            Pointer<COMObject> pRange,
            Uint32 cb,
            Pointer<COMObject> pStream,
            Pointer<Pointer<COMObject>> ppStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidProp,
            Pointer<COMObject> pRange,
            int cb,
            Pointer<COMObject> pStream,
            Pointer<Pointer<COMObject>> ppStore,
          )>()(
        ptr.ref.lpVtbl,
        guidProp,
        pRange,
        cb,
        pStream,
        ppStore,
      );
}
