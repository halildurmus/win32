// IDebugDataSpaces.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugDataSpaces = '{88F7DFAB-3EA7-4C3A-AEFB-C4E8106173AA}';

/// {@category Interface}
/// {@category com}
class IDebugDataSpaces extends IUnknown {
  // vtable begins at 3, is 20 entries long.
  IDebugDataSpaces(Pointer<COMObject> ptr) : super(ptr);

  int ReadVirtual(
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Buffer,
        BufferSize,
        BytesRead,
      );

  int WriteVirtual(
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Buffer,
        BufferSize,
        BytesWritten,
      );

  int SearchVirtual(
    int Offset,
    int Length,
    Pointer Pattern,
    int PatternSize,
    int PatternGranularity,
    Pointer<Uint64> MatchOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Uint64 Length,
            Pointer Pattern,
            Uint32 PatternSize,
            Uint32 PatternGranularity,
            Pointer<Uint64> MatchOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            int Length,
            Pointer Pattern,
            int PatternSize,
            int PatternGranularity,
            Pointer<Uint64> MatchOffset,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Length,
        Pattern,
        PatternSize,
        PatternGranularity,
        MatchOffset,
      );

  int ReadVirtualUncached(
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Buffer,
        BufferSize,
        BytesRead,
      );

  int WriteVirtualUncached(
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Buffer,
        BufferSize,
        BytesWritten,
      );

  int ReadPointersVirtual(
    int Count,
    int Offset,
    Pointer<Uint64> Ptrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Uint64 Offset,
            Pointer<Uint64> Ptrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            int Offset,
            Pointer<Uint64> Ptrs,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        Offset,
        Ptrs,
      );

  int WritePointersVirtual(
    int Count,
    int Offset,
    Pointer<Uint64> Ptrs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Count,
            Uint64 Offset,
            Pointer<Uint64> Ptrs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Count,
            int Offset,
            Pointer<Uint64> Ptrs,
          )>()(
        ptr.ref.lpVtbl,
        Count,
        Offset,
        Ptrs,
      );

  int ReadPhysical(
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Buffer,
        BufferSize,
        BytesRead,
      );

  int WritePhysical(
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        Offset,
        Buffer,
        BufferSize,
        BytesWritten,
      );

  int ReadControl(
    int Processor,
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Processor,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Processor,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        Processor,
        Offset,
        Buffer,
        BufferSize,
        BytesRead,
      );

  int WriteControl(
    int Processor,
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Processor,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Processor,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        Processor,
        Offset,
        Buffer,
        BufferSize,
        BytesWritten,
      );

  int ReadIo(
    int InterfaceType,
    int BusNumber,
    int AddressSpace,
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 InterfaceType,
            Uint32 BusNumber,
            Uint32 AddressSpace,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InterfaceType,
            int BusNumber,
            int AddressSpace,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        InterfaceType,
        BusNumber,
        AddressSpace,
        Offset,
        Buffer,
        BufferSize,
        BytesRead,
      );

  int WriteIo(
    int InterfaceType,
    int BusNumber,
    int AddressSpace,
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 InterfaceType,
            Uint32 BusNumber,
            Uint32 AddressSpace,
            Uint64 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InterfaceType,
            int BusNumber,
            int AddressSpace,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        InterfaceType,
        BusNumber,
        AddressSpace,
        Offset,
        Buffer,
        BufferSize,
        BytesWritten,
      );

  int ReadMsr(
    int Msr,
    Pointer<Uint64> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Msr,
            Pointer<Uint64> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Msr,
            Pointer<Uint64> Value,
          )>()(
        ptr.ref.lpVtbl,
        Msr,
        Value,
      );

  int WriteMsr(
    int Msr,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Msr,
            Uint64 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Msr,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Msr,
        Value,
      );

  int ReadBusData(
    int BusDataType,
    int BusNumber,
    int SlotNumber,
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BusDataType,
            Uint32 BusNumber,
            Uint32 SlotNumber,
            Uint32 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BusDataType,
            int BusNumber,
            int SlotNumber,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesRead,
          )>()(
        ptr.ref.lpVtbl,
        BusDataType,
        BusNumber,
        SlotNumber,
        Offset,
        Buffer,
        BufferSize,
        BytesRead,
      );

  int WriteBusData(
    int BusDataType,
    int BusNumber,
    int SlotNumber,
    int Offset,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> BytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 BusDataType,
            Uint32 BusNumber,
            Uint32 SlotNumber,
            Uint32 Offset,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int BusDataType,
            int BusNumber,
            int SlotNumber,
            int Offset,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> BytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        BusDataType,
        BusNumber,
        SlotNumber,
        Offset,
        Buffer,
        BufferSize,
        BytesWritten,
      );

  int CheckLowMemory() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int ReadDebuggerData(
    int Index,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> DataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> DataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> DataSize,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        Buffer,
        BufferSize,
        DataSize,
      );

  int ReadProcessorSystemData(
    int Processor,
    int Index,
    Pointer Buffer,
    int BufferSize,
    Pointer<Uint32> DataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Processor,
            Uint32 Index,
            Pointer Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> DataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Processor,
            int Index,
            Pointer Buffer,
            int BufferSize,
            Pointer<Uint32> DataSize,
          )>()(
        ptr.ref.lpVtbl,
        Processor,
        Index,
        Buffer,
        BufferSize,
        DataSize,
      );
}
