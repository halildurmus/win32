// IOfflineFilesItemContainer.dart

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
import '../../storage/offlinefiles/IEnumOfflineFilesItems.dart';
import '../../foundation/structs.g.dart';
import '../../storage/offlinefiles/IOfflineFilesItemFilter.dart';

/// @nodoc
const IID_IOfflineFilesItemContainer = '{3836F049-9413-45DD-BF46-B5AAA82DC310}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesItemContainer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IOfflineFilesItemContainer(Pointer<COMObject> ptr) : super(ptr);

  int EnumItems(
    int dwQueryFlags,
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwQueryFlags,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwQueryFlags,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        dwQueryFlags,
        ppenum,
      );

  int EnumItemsEx(
    Pointer<COMObject> pIncludeFileFilter,
    Pointer<COMObject> pIncludeDirFilter,
    Pointer<COMObject> pExcludeFileFilter,
    Pointer<COMObject> pExcludeDirFilter,
    int dwEnumFlags,
    int dwQueryFlags,
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIncludeFileFilter,
            Pointer<COMObject> pIncludeDirFilter,
            Pointer<COMObject> pExcludeFileFilter,
            Pointer<COMObject> pExcludeDirFilter,
            Uint32 dwEnumFlags,
            Uint32 dwQueryFlags,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIncludeFileFilter,
            Pointer<COMObject> pIncludeDirFilter,
            Pointer<COMObject> pExcludeFileFilter,
            Pointer<COMObject> pExcludeDirFilter,
            int dwEnumFlags,
            int dwQueryFlags,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        pIncludeFileFilter,
        pIncludeDirFilter,
        pExcludeFileFilter,
        pExcludeDirFilter,
        dwEnumFlags,
        dwQueryFlags,
        ppenum,
      );
}
