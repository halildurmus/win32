// IWICComponentFactory.dart

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

import '../../graphics/imaging/IWICImagingFactory.dart';
import '../../system/com/IStream.dart';
import '../../graphics/imaging/IWICMetadataReader.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICMetadataWriter.dart';
import '../../graphics/imaging/IWICMetadataBlockReader.dart';
import '../../graphics/imaging/IWICMetadataQueryReader.dart';
import '../../graphics/imaging/IWICMetadataBlockWriter.dart';
import '../../graphics/imaging/IWICMetadataQueryWriter.dart';
import '../../system/com/structuredstorage/structs.g.dart';
import '../../system/com/structuredstorage/IPropertyBag2.dart';

/// @nodoc
const IID_IWICComponentFactory = '{412D0C3A-9650-44FA-AF5B-DD2A06C8E8FB}';

/// {@category Interface}
/// {@category com}
class IWICComponentFactory extends IWICImagingFactory {
  // vtable begins at 28, is 7 entries long.
  IWICComponentFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateMetadataReader(
    Pointer<GUID> guidMetadataFormat,
    Pointer<GUID> pguidVendor,
    int dwOptions,
    Pointer<COMObject> pIStream,
    Pointer<Pointer<COMObject>> ppIReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidMetadataFormat,
            Pointer<GUID> pguidVendor,
            Uint32 dwOptions,
            Pointer<COMObject> pIStream,
            Pointer<Pointer<COMObject>> ppIReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidMetadataFormat,
            Pointer<GUID> pguidVendor,
            int dwOptions,
            Pointer<COMObject> pIStream,
            Pointer<Pointer<COMObject>> ppIReader,
          )>()(
        ptr.ref.lpVtbl,
        guidMetadataFormat,
        pguidVendor,
        dwOptions,
        pIStream,
        ppIReader,
      );

  int CreateMetadataReaderFromContainer(
    Pointer<GUID> guidContainerFormat,
    Pointer<GUID> pguidVendor,
    int dwOptions,
    Pointer<COMObject> pIStream,
    Pointer<Pointer<COMObject>> ppIReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Pointer<GUID> pguidVendor,
            Uint32 dwOptions,
            Pointer<COMObject> pIStream,
            Pointer<Pointer<COMObject>> ppIReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidContainerFormat,
            Pointer<GUID> pguidVendor,
            int dwOptions,
            Pointer<COMObject> pIStream,
            Pointer<Pointer<COMObject>> ppIReader,
          )>()(
        ptr.ref.lpVtbl,
        guidContainerFormat,
        pguidVendor,
        dwOptions,
        pIStream,
        ppIReader,
      );

  int CreateMetadataWriter(
    Pointer<GUID> guidMetadataFormat,
    Pointer<GUID> pguidVendor,
    int dwMetadataOptions,
    Pointer<Pointer<COMObject>> ppIWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidMetadataFormat,
            Pointer<GUID> pguidVendor,
            Uint32 dwMetadataOptions,
            Pointer<Pointer<COMObject>> ppIWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidMetadataFormat,
            Pointer<GUID> pguidVendor,
            int dwMetadataOptions,
            Pointer<Pointer<COMObject>> ppIWriter,
          )>()(
        ptr.ref.lpVtbl,
        guidMetadataFormat,
        pguidVendor,
        dwMetadataOptions,
        ppIWriter,
      );

  int CreateMetadataWriterFromReader(
    Pointer<COMObject> pIReader,
    Pointer<GUID> pguidVendor,
    Pointer<Pointer<COMObject>> ppIWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIReader,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIReader,
            Pointer<GUID> pguidVendor,
            Pointer<Pointer<COMObject>> ppIWriter,
          )>()(
        ptr.ref.lpVtbl,
        pIReader,
        pguidVendor,
        ppIWriter,
      );

  int CreateQueryReaderFromBlockReader(
    Pointer<COMObject> pIBlockReader,
    Pointer<Pointer<COMObject>> ppIQueryReader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIBlockReader,
            Pointer<Pointer<COMObject>> ppIQueryReader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIBlockReader,
            Pointer<Pointer<COMObject>> ppIQueryReader,
          )>()(
        ptr.ref.lpVtbl,
        pIBlockReader,
        ppIQueryReader,
      );

  int CreateQueryWriterFromBlockWriter(
    Pointer<COMObject> pIBlockWriter,
    Pointer<Pointer<COMObject>> ppIQueryWriter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIBlockWriter,
            Pointer<Pointer<COMObject>> ppIQueryWriter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIBlockWriter,
            Pointer<Pointer<COMObject>> ppIQueryWriter,
          )>()(
        ptr.ref.lpVtbl,
        pIBlockWriter,
        ppIQueryWriter,
      );

  int CreateEncoderPropertyBag(
    Pointer<PROPBAG2> ppropOptions,
    int cCount,
    Pointer<Pointer<COMObject>> ppIPropertyBag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPBAG2> ppropOptions,
            Uint32 cCount,
            Pointer<Pointer<COMObject>> ppIPropertyBag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPBAG2> ppropOptions,
            int cCount,
            Pointer<Pointer<COMObject>> ppIPropertyBag,
          )>()(
        ptr.ref.lpVtbl,
        ppropOptions,
        cCount,
        ppIPropertyBag,
      );
}
