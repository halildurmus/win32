// IFunctionInstance.dart

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

import '../../system/com/IServiceProvider.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structuredstorage/structs.g.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';

/// @nodoc
const IID_IFunctionInstance = '{33591C10-0BED-4F02-B0AB-1530D5533EE9}';

/// {@category Interface}
/// {@category com}
class IFunctionInstance extends IServiceProvider {
  // vtable begins at 4, is 4 entries long.
  IFunctionInstance(Pointer<COMObject> ptr) : super(ptr);

  int GetID(
    Pointer<Pointer<Uint16>> ppszCoMemIdentity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppszCoMemIdentity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppszCoMemIdentity,
          )>()(
        ptr.ref.lpVtbl,
        ppszCoMemIdentity,
      );

  int GetProviderInstanceID(
    Pointer<Pointer<Uint16>> ppszCoMemProviderInstanceIdentity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppszCoMemProviderInstanceIdentity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppszCoMemProviderInstanceIdentity,
          )>()(
        ptr.ref.lpVtbl,
        ppszCoMemProviderInstanceIdentity,
      );

  int OpenPropertyStore(
    int dwStgAccess,
    Pointer<Pointer<COMObject>> ppIPropertyStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStgAccess,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStgAccess,
            Pointer<Pointer<COMObject>> ppIPropertyStore,
          )>()(
        ptr.ref.lpVtbl,
        dwStgAccess,
        ppIPropertyStore,
      );

  int GetCategory(
    Pointer<Pointer<Uint16>> ppszCoMemCategory,
    Pointer<Pointer<Uint16>> ppszCoMemSubCategory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppszCoMemCategory,
            Pointer<Pointer<Uint16>> ppszCoMemSubCategory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppszCoMemCategory,
            Pointer<Pointer<Uint16>> ppszCoMemSubCategory,
          )>()(
        ptr.ref.lpVtbl,
        ppszCoMemCategory,
        ppszCoMemSubCategory,
      );
}
