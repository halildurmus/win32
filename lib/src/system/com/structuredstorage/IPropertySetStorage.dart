// IPropertySetStorage.dart

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
import '../../../system/com/structuredstorage/IPropertyStorage.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/structuredstorage/IEnumSTATPROPSETSTG.dart';

/// @nodoc
const IID_IPropertySetStorage = '{0000013A-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IPropertySetStorage extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IPropertySetStorage(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<GUID> rfmtid,
    Pointer<GUID> pclsid,
    int grfFlags,
    int grfMode,
    Pointer<Pointer<COMObject>> ppprstg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rfmtid,
            Pointer<GUID> pclsid,
            Uint32 grfFlags,
            Uint32 grfMode,
            Pointer<Pointer<COMObject>> ppprstg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rfmtid,
            Pointer<GUID> pclsid,
            int grfFlags,
            int grfMode,
            Pointer<Pointer<COMObject>> ppprstg,
          )>()(
        ptr.ref.lpVtbl,
        rfmtid,
        pclsid,
        grfFlags,
        grfMode,
        ppprstg,
      );

  int Open(
    Pointer<GUID> rfmtid,
    int grfMode,
    Pointer<Pointer<COMObject>> ppprstg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rfmtid,
            Uint32 grfMode,
            Pointer<Pointer<COMObject>> ppprstg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rfmtid,
            int grfMode,
            Pointer<Pointer<COMObject>> ppprstg,
          )>()(
        ptr.ref.lpVtbl,
        rfmtid,
        grfMode,
        ppprstg,
      );

  int Delete(
    Pointer<GUID> rfmtid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rfmtid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rfmtid,
          )>()(
        ptr.ref.lpVtbl,
        rfmtid,
      );

  int Enum(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );
}
