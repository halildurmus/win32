// ITsSbFilterPluginStore.dart

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
import '../../system/remotedesktop/ITsSbPropertySet.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITsSbFilterPluginStore = '{85B44B0F-ED78-413F-9702-FA6D3B5EE755}';

/// {@category Interface}
/// {@category com}
class ITsSbFilterPluginStore extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITsSbFilterPluginStore(Pointer<COMObject> ptr) : super(ptr);

  int SaveProperties(
    Pointer<COMObject> pPropertySet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPropertySet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPropertySet,
          )>()(
        ptr.ref.lpVtbl,
        pPropertySet,
      );

  int EnumerateProperties(
    Pointer<Pointer<COMObject>> ppPropertySet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertySet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPropertySet,
          )>()(
        ptr.ref.lpVtbl,
        ppPropertySet,
      );

  int DeleteProperties(
    Pointer<Utf16> propertyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> propertyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> propertyName,
          )>()(
        ptr.ref.lpVtbl,
        propertyName,
      );
}
