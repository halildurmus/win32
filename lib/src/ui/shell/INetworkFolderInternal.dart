// INetworkFolderInternal.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_INetworkFolderInternal = '{CEB38218-C971-47BB-A703-F0BC99CCDB81}';

/// {@category Interface}
/// {@category com}
class INetworkFolderInternal extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  INetworkFolderInternal(Pointer<COMObject> ptr) : super(ptr);

  int GetResourceDisplayType(
    Pointer<Uint32> displayType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> displayType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> displayType,
          )>()(
        ptr.ref.lpVtbl,
        displayType,
      );

  int GetIDList(
    Pointer<Pointer<ITEMIDLIST>> idList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<ITEMIDLIST>> idList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<ITEMIDLIST>> idList,
          )>()(
        ptr.ref.lpVtbl,
        idList,
      );

  int GetProvider(
    int itemIdCount,
    Pointer<Pointer<ITEMIDLIST>> itemIds,
    int providerMaxLength,
    Pointer<Utf16> provider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 itemIdCount,
            Pointer<Pointer<ITEMIDLIST>> itemIds,
            Uint32 providerMaxLength,
            Pointer<Utf16> provider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int itemIdCount,
            Pointer<Pointer<ITEMIDLIST>> itemIds,
            int providerMaxLength,
            Pointer<Utf16> provider,
          )>()(
        ptr.ref.lpVtbl,
        itemIdCount,
        itemIds,
        providerMaxLength,
        provider,
      );
}
