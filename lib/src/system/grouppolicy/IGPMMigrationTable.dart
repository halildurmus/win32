// IGPMMigrationTable.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/grouppolicy/structs.g.dart';
import '../../system/grouppolicy/IGPMMapEntry.dart';
import '../../system/grouppolicy/IGPMResult.dart';
import '../../system/grouppolicy/IGPMMapEntryCollection.dart';

/// @nodoc
const IID_IGPMMigrationTable = '{48F823B1-EFAF-470B-B6ED-40D14EE1A4EC}';

/// {@category Interface}
/// {@category com}
class IGPMMigrationTable extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  IGPMMigrationTable(Pointer<COMObject> ptr) : super(ptr);

  int Save(
    Pointer<Utf16> bstrMigrationTablePath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMigrationTablePath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMigrationTablePath,
          )>()(
        ptr.ref.lpVtbl,
        bstrMigrationTablePath,
      );

  int Add(
    int lFlags,
    VARIANT $var,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            VARIANT $var,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            VARIANT $var,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        $var,
      );

  int AddEntry(
    Pointer<Utf16> bstrSource,
    int gpmEntryType,
    Pointer<VARIANT> pvarDestination,
    Pointer<Pointer<COMObject>> ppEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSource,
            Int32 gpmEntryType,
            Pointer<VARIANT> pvarDestination,
            Pointer<Pointer<COMObject>> ppEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSource,
            int gpmEntryType,
            Pointer<VARIANT> pvarDestination,
            Pointer<Pointer<COMObject>> ppEntry,
          )>()(
        ptr.ref.lpVtbl,
        bstrSource,
        gpmEntryType,
        pvarDestination,
        ppEntry,
      );

  int GetEntry(
    Pointer<Utf16> bstrSource,
    Pointer<Pointer<COMObject>> ppEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSource,
            Pointer<Pointer<COMObject>> ppEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSource,
            Pointer<Pointer<COMObject>> ppEntry,
          )>()(
        ptr.ref.lpVtbl,
        bstrSource,
        ppEntry,
      );

  int DeleteEntry(
    Pointer<Utf16> bstrSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSource,
          )>()(
        ptr.ref.lpVtbl,
        bstrSource,
      );

  int UpdateDestination(
    Pointer<Utf16> bstrSource,
    Pointer<VARIANT> pvarDestination,
    Pointer<Pointer<COMObject>> ppEntry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSource,
            Pointer<VARIANT> pvarDestination,
            Pointer<Pointer<COMObject>> ppEntry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSource,
            Pointer<VARIANT> pvarDestination,
            Pointer<Pointer<COMObject>> ppEntry,
          )>()(
        ptr.ref.lpVtbl,
        bstrSource,
        pvarDestination,
        ppEntry,
      );

  int Validate(
    Pointer<Pointer<COMObject>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        ppResult,
      );

  int GetEntries(
    Pointer<Pointer<COMObject>> ppEntries,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEntries,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEntries,
          )>()(
        ptr.ref.lpVtbl,
        ppEntries,
      );
}

/// @nodoc
const CLSID_GPMMigrationTable = '{55AF4043-2A06-4F72-ABEF-631B44079C76}';

/// {@category com}
class GPMMigrationTable extends IGPMMigrationTable {
  GPMMigrationTable(Pointer<COMObject> ptr) : super(ptr);

  factory GPMMigrationTable.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMMigrationTable);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMMigrationTable);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMMigrationTable(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
