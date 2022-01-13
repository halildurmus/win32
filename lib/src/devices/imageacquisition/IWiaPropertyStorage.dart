// IWiaPropertyStorage.dart

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
import '../../system/com/structuredstorage/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structuredstorage/IEnumSTATPROPSTG.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IWiaPropertyStorage = '{98B5E8A0-29CC-491A-AAC0-E6DB4FDCCEB6}';

/// {@category Interface}
/// {@category com}
class IWiaPropertyStorage extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IWiaPropertyStorage(Pointer<COMObject> ptr) : super(ptr);

  int ReadMultiple(
    int cpspec,
    Pointer<PROPSPEC> rgpspec,
    Pointer<PROPVARIANT> rgpropvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cpspec,
            Pointer<PROPSPEC> rgpspec,
            Pointer<PROPVARIANT> rgpropvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpspec,
            Pointer<PROPSPEC> rgpspec,
            Pointer<PROPVARIANT> rgpropvar,
          )>()(
        ptr.ref.lpVtbl,
        cpspec,
        rgpspec,
        rgpropvar,
      );

  int WriteMultiple(
    int cpspec,
    Pointer<PROPSPEC> rgpspec,
    Pointer<PROPVARIANT> rgpropvar,
    int propidNameFirst,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cpspec,
            Pointer<PROPSPEC> rgpspec,
            Pointer<PROPVARIANT> rgpropvar,
            Uint32 propidNameFirst,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpspec,
            Pointer<PROPSPEC> rgpspec,
            Pointer<PROPVARIANT> rgpropvar,
            int propidNameFirst,
          )>()(
        ptr.ref.lpVtbl,
        cpspec,
        rgpspec,
        rgpropvar,
        propidNameFirst,
      );

  int DeleteMultiple(
    int cpspec,
    Pointer<PROPSPEC> rgpspec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cpspec,
            Pointer<PROPSPEC> rgpspec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpspec,
            Pointer<PROPSPEC> rgpspec,
          )>()(
        ptr.ref.lpVtbl,
        cpspec,
        rgpspec,
      );

  int ReadPropertyNames(
    int cpropid,
    Pointer<Uint32> rgpropid,
    Pointer<Pointer<Utf16>> rglpwstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cpropid,
            Pointer<Uint32> rgpropid,
            Pointer<Pointer<Utf16>> rglpwstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpropid,
            Pointer<Uint32> rgpropid,
            Pointer<Pointer<Utf16>> rglpwstrName,
          )>()(
        ptr.ref.lpVtbl,
        cpropid,
        rgpropid,
        rglpwstrName,
      );

  int WritePropertyNames(
    int cpropid,
    Pointer<Uint32> rgpropid,
    Pointer<Pointer<Utf16>> rglpwstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cpropid,
            Pointer<Uint32> rgpropid,
            Pointer<Pointer<Utf16>> rglpwstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpropid,
            Pointer<Uint32> rgpropid,
            Pointer<Pointer<Utf16>> rglpwstrName,
          )>()(
        ptr.ref.lpVtbl,
        cpropid,
        rgpropid,
        rglpwstrName,
      );

  int DeletePropertyNames(
    int cpropid,
    Pointer<Uint32> rgpropid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cpropid,
            Pointer<Uint32> rgpropid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpropid,
            Pointer<Uint32> rgpropid,
          )>()(
        ptr.ref.lpVtbl,
        cpropid,
        rgpropid,
      );

  int Commit(
    int grfCommitFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfCommitFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfCommitFlags,
          )>()(
        ptr.ref.lpVtbl,
        grfCommitFlags,
      );

  int Revert() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Enum(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int SetTimes(
    Pointer<FILETIME> pctime,
    Pointer<FILETIME> patime,
    Pointer<FILETIME> pmtime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pctime,
            Pointer<FILETIME> patime,
            Pointer<FILETIME> pmtime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pctime,
            Pointer<FILETIME> patime,
            Pointer<FILETIME> pmtime,
          )>()(
        ptr.ref.lpVtbl,
        pctime,
        patime,
        pmtime,
      );

  int SetClass(
    Pointer<GUID> clsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
      );

  int Stat(
    Pointer<STATPROPSETSTG> pstatpsstg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<STATPROPSETSTG> pstatpsstg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<STATPROPSETSTG> pstatpsstg,
          )>()(
        ptr.ref.lpVtbl,
        pstatpsstg,
      );

  int GetPropertyAttributes(
    int cpspec,
    Pointer<PROPSPEC> rgpspec,
    Pointer<Uint32> rgflags,
    Pointer<PROPVARIANT> rgpropvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cpspec,
            Pointer<PROPSPEC> rgpspec,
            Pointer<Uint32> rgflags,
            Pointer<PROPVARIANT> rgpropvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cpspec,
            Pointer<PROPSPEC> rgpspec,
            Pointer<Uint32> rgflags,
            Pointer<PROPVARIANT> rgpropvar,
          )>()(
        ptr.ref.lpVtbl,
        cpspec,
        rgpspec,
        rgflags,
        rgpropvar,
      );

  int GetCount(
    Pointer<Uint32> pulNumProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulNumProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulNumProps,
          )>()(
        ptr.ref.lpVtbl,
        pulNumProps,
      );

  int GetPropertyStream(
    Pointer<GUID> pCompatibilityId,
    Pointer<Pointer<COMObject>> ppIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCompatibilityId,
            Pointer<Pointer<COMObject>> ppIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCompatibilityId,
            Pointer<Pointer<COMObject>> ppIStream,
          )>()(
        ptr.ref.lpVtbl,
        pCompatibilityId,
        ppIStream,
      );

  int SetPropertyStream(
    Pointer<GUID> pCompatibilityId,
    Pointer<COMObject> pIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pCompatibilityId,
            Pointer<COMObject> pIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pCompatibilityId,
            Pointer<COMObject> pIStream,
          )>()(
        ptr.ref.lpVtbl,
        pCompatibilityId,
        pIStream,
      );
}
