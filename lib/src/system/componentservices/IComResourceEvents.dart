// IComResourceEvents.dart

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
import '../../system/componentservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IComResourceEvents = '{683130AB-2E50-11D2-98A5-00C04F8EE1C4}';

/// {@category Interface}
/// {@category com}
class IComResourceEvents extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IComResourceEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnResourceCreate(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ObjectID,
    Pointer<Utf16> pszType,
    int resId,
    int enlisted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ObjectID,
            Pointer<Utf16> pszType,
            Uint64 resId,
            Int32 enlisted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ObjectID,
            Pointer<Utf16> pszType,
            int resId,
            int enlisted,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ObjectID,
        pszType,
        resId,
        enlisted,
      );

  int OnResourceAllocate(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ObjectID,
    Pointer<Utf16> pszType,
    int resId,
    int enlisted,
    int NumRated,
    int Rating,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ObjectID,
            Pointer<Utf16> pszType,
            Uint64 resId,
            Int32 enlisted,
            Uint32 NumRated,
            Uint32 Rating,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ObjectID,
            Pointer<Utf16> pszType,
            int resId,
            int enlisted,
            int NumRated,
            int Rating,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ObjectID,
        pszType,
        resId,
        enlisted,
        NumRated,
        Rating,
      );

  int OnResourceRecycle(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ObjectID,
    Pointer<Utf16> pszType,
    int resId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ObjectID,
            Pointer<Utf16> pszType,
            Uint64 resId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ObjectID,
            Pointer<Utf16> pszType,
            int resId,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ObjectID,
        pszType,
        resId,
      );

  int OnResourceDestroy(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ObjectID,
    int hr,
    Pointer<Utf16> pszType,
    int resId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ObjectID,
            Int32 hr,
            Pointer<Utf16> pszType,
            Uint64 resId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ObjectID,
            int hr,
            Pointer<Utf16> pszType,
            int resId,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ObjectID,
        hr,
        pszType,
        resId,
      );

  int OnResourceTrack(
    Pointer<COMSVCSEVENTINFO> pInfo,
    int ObjectID,
    Pointer<Utf16> pszType,
    int resId,
    int enlisted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            Uint64 ObjectID,
            Pointer<Utf16> pszType,
            Uint64 resId,
            Int32 enlisted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMSVCSEVENTINFO> pInfo,
            int ObjectID,
            Pointer<Utf16> pszType,
            int resId,
            int enlisted,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        ObjectID,
        pszType,
        resId,
        enlisted,
      );
}
