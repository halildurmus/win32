// IVssCreateWriterMetadata.dart

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

import '../../foundation/structs.g.dart';
import '../../storage/vss/structs.g.dart';
import '../../data/xml/msxml/IXMLDOMDocument.dart';

/// @nodoc
const IID_IVssCreateWriterMetadata = 'null';

/// {@category Interface}
/// {@category com}
class IVssCreateWriterMetadata {
  // vtable begins at 0, is 12 entries long.
  Pointer<COMObject> ptr;

  IVssCreateWriterMetadata(this.ptr);

  int AddIncludeFiles(
    Pointer<Utf16> wszPath,
    Pointer<Utf16> wszFilespec,
    int bRecursive,
    Pointer<Utf16> wszAlternateLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            Uint8 bRecursive,
            Pointer<Utf16> wszAlternateLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            int bRecursive,
            Pointer<Utf16> wszAlternateLocation,
          )>()(
        ptr.ref.lpVtbl,
        wszPath,
        wszFilespec,
        bRecursive,
        wszAlternateLocation,
      );

  int AddExcludeFiles(
    Pointer<Utf16> wszPath,
    Pointer<Utf16> wszFilespec,
    int bRecursive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            Uint8 bRecursive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            int bRecursive,
          )>()(
        ptr.ref.lpVtbl,
        wszPath,
        wszFilespec,
        bRecursive,
      );

  int AddComponent(
    int ct,
    Pointer<Utf16> wszLogicalPath,
    Pointer<Utf16> wszComponentName,
    Pointer<Utf16> wszCaption,
    Pointer<Uint8> pbIcon,
    int cbIcon,
    int bRestoreMetadata,
    int bNotifyOnBackupComplete,
    int bSelectable,
    int bSelectableForRestore,
    int dwComponentFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ct,
            Pointer<Utf16> wszLogicalPath,
            Pointer<Utf16> wszComponentName,
            Pointer<Utf16> wszCaption,
            Pointer<Uint8> pbIcon,
            Uint32 cbIcon,
            Uint8 bRestoreMetadata,
            Uint8 bNotifyOnBackupComplete,
            Uint8 bSelectable,
            Uint8 bSelectableForRestore,
            Uint32 dwComponentFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ct,
            Pointer<Utf16> wszLogicalPath,
            Pointer<Utf16> wszComponentName,
            Pointer<Utf16> wszCaption,
            Pointer<Uint8> pbIcon,
            int cbIcon,
            int bRestoreMetadata,
            int bNotifyOnBackupComplete,
            int bSelectable,
            int bSelectableForRestore,
            int dwComponentFlags,
          )>()(
        ptr.ref.lpVtbl,
        ct,
        wszLogicalPath,
        wszComponentName,
        wszCaption,
        pbIcon,
        cbIcon,
        bRestoreMetadata,
        bNotifyOnBackupComplete,
        bSelectable,
        bSelectableForRestore,
        dwComponentFlags,
      );

  int AddDatabaseFiles(
    Pointer<Utf16> wszLogicalPath,
    Pointer<Utf16> wszDatabaseName,
    Pointer<Utf16> wszPath,
    Pointer<Utf16> wszFilespec,
    int dwBackupTypeMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszLogicalPath,
            Pointer<Utf16> wszDatabaseName,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            Uint32 dwBackupTypeMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszLogicalPath,
            Pointer<Utf16> wszDatabaseName,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            int dwBackupTypeMask,
          )>()(
        ptr.ref.lpVtbl,
        wszLogicalPath,
        wszDatabaseName,
        wszPath,
        wszFilespec,
        dwBackupTypeMask,
      );

  int AddDatabaseLogFiles(
    Pointer<Utf16> wszLogicalPath,
    Pointer<Utf16> wszDatabaseName,
    Pointer<Utf16> wszPath,
    Pointer<Utf16> wszFilespec,
    int dwBackupTypeMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszLogicalPath,
            Pointer<Utf16> wszDatabaseName,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            Uint32 dwBackupTypeMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszLogicalPath,
            Pointer<Utf16> wszDatabaseName,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            int dwBackupTypeMask,
          )>()(
        ptr.ref.lpVtbl,
        wszLogicalPath,
        wszDatabaseName,
        wszPath,
        wszFilespec,
        dwBackupTypeMask,
      );

  int AddFilesToFileGroup(
    Pointer<Utf16> wszLogicalPath,
    Pointer<Utf16> wszGroupName,
    Pointer<Utf16> wszPath,
    Pointer<Utf16> wszFilespec,
    int bRecursive,
    Pointer<Utf16> wszAlternateLocation,
    int dwBackupTypeMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszLogicalPath,
            Pointer<Utf16> wszGroupName,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            Uint8 bRecursive,
            Pointer<Utf16> wszAlternateLocation,
            Uint32 dwBackupTypeMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszLogicalPath,
            Pointer<Utf16> wszGroupName,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            int bRecursive,
            Pointer<Utf16> wszAlternateLocation,
            int dwBackupTypeMask,
          )>()(
        ptr.ref.lpVtbl,
        wszLogicalPath,
        wszGroupName,
        wszPath,
        wszFilespec,
        bRecursive,
        wszAlternateLocation,
        dwBackupTypeMask,
      );

  int SetRestoreMethod(
    int method,
    Pointer<Utf16> wszService,
    Pointer<Utf16> wszUserProcedure,
    int writerRestore,
    int bRebootRequired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 method,
            Pointer<Utf16> wszService,
            Pointer<Utf16> wszUserProcedure,
            Int32 writerRestore,
            Uint8 bRebootRequired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int method,
            Pointer<Utf16> wszService,
            Pointer<Utf16> wszUserProcedure,
            int writerRestore,
            int bRebootRequired,
          )>()(
        ptr.ref.lpVtbl,
        method,
        wszService,
        wszUserProcedure,
        writerRestore,
        bRebootRequired,
      );

  int AddAlternateLocationMapping(
    Pointer<Utf16> wszSourcePath,
    Pointer<Utf16> wszSourceFilespec,
    int bRecursive,
    Pointer<Utf16> wszDestination,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszSourcePath,
            Pointer<Utf16> wszSourceFilespec,
            Uint8 bRecursive,
            Pointer<Utf16> wszDestination,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszSourcePath,
            Pointer<Utf16> wszSourceFilespec,
            int bRecursive,
            Pointer<Utf16> wszDestination,
          )>()(
        ptr.ref.lpVtbl,
        wszSourcePath,
        wszSourceFilespec,
        bRecursive,
        wszDestination,
      );

  int AddComponentDependency(
    Pointer<Utf16> wszForLogicalPath,
    Pointer<Utf16> wszForComponentName,
    GUID onWriterId,
    Pointer<Utf16> wszOnLogicalPath,
    Pointer<Utf16> wszOnComponentName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszForLogicalPath,
            Pointer<Utf16> wszForComponentName,
            GUID onWriterId,
            Pointer<Utf16> wszOnLogicalPath,
            Pointer<Utf16> wszOnComponentName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszForLogicalPath,
            Pointer<Utf16> wszForComponentName,
            GUID onWriterId,
            Pointer<Utf16> wszOnLogicalPath,
            Pointer<Utf16> wszOnComponentName,
          )>()(
        ptr.ref.lpVtbl,
        wszForLogicalPath,
        wszForComponentName,
        onWriterId,
        wszOnLogicalPath,
        wszOnComponentName,
      );

  int SetBackupSchema(
    int dwSchemaMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSchemaMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSchemaMask,
          )>()(
        ptr.ref.lpVtbl,
        dwSchemaMask,
      );

  int GetDocument(
    Pointer<Pointer<COMObject>> pDoc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pDoc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pDoc,
          )>()(
        ptr.ref.lpVtbl,
        pDoc,
      );

  int SaveAsXML(
    Pointer<Pointer<Utf16>> pbstrXML,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrXML,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrXML,
          )>()(
        ptr.ref.lpVtbl,
        pbstrXML,
      );
}
