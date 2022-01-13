// IStorageProviderPropertyHandler.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStorageProviderPropertyHandler =
    '{301DFBE5-524C-4B0F-8B2D-21C40B3A2988}';

/// {@category Interface}
/// {@category com}
class IStorageProviderPropertyHandler extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IStorageProviderPropertyHandler(Pointer<COMObject> ptr) : super(ptr);

  int RetrieveProperties(
    Pointer<PROPERTYKEY> propertiesToRetrieve,
    int propertiesToRetrieveCount,
    Pointer<Pointer<COMObject>> retrievedProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> propertiesToRetrieve,
            Uint32 propertiesToRetrieveCount,
            Pointer<Pointer<COMObject>> retrievedProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> propertiesToRetrieve,
            int propertiesToRetrieveCount,
            Pointer<Pointer<COMObject>> retrievedProperties,
          )>()(
        ptr.ref.lpVtbl,
        propertiesToRetrieve,
        propertiesToRetrieveCount,
        retrievedProperties,
      );

  int SaveProperties(
    Pointer<COMObject> propertiesToSave,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> propertiesToSave,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> propertiesToSave,
          )>()(
        ptr.ref.lpVtbl,
        propertiesToSave,
      );
}
