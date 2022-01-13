// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../storage/compression/structs.g.dart'; // -----------------------------------------------------------------------

// cabinet.dll
// -----------------------------------------------------------------------
final _cabinet = DynamicLibrary.open('cabinet.dll');

int CloseCompressor(
  int CompressorHandle,
) =>
    _CloseCompressor(
      CompressorHandle,
    );

late final _CloseCompressor = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr CompressorHandle,
),
    int Function(
  int CompressorHandle,
)>('CloseCompressor');

int CloseDecompressor(
  int DecompressorHandle,
) =>
    _CloseDecompressor(
      DecompressorHandle,
    );

late final _CloseDecompressor = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr DecompressorHandle,
),
    int Function(
  int DecompressorHandle,
)>('CloseDecompressor');

int Compress(
  int CompressorHandle,
  Pointer UncompressedData,
  int UncompressedDataSize,
  Pointer CompressedBuffer,
  int CompressedBufferSize,
  Pointer<IntPtr> CompressedDataSize,
) =>
    _Compress(
      CompressorHandle,
      UncompressedData,
      UncompressedDataSize,
      CompressedBuffer,
      CompressedBufferSize,
      CompressedDataSize,
    );

late final _Compress = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr CompressorHandle,
  Pointer UncompressedData,
  IntPtr UncompressedDataSize,
  Pointer CompressedBuffer,
  IntPtr CompressedBufferSize,
  Pointer<IntPtr> CompressedDataSize,
),
    int Function(
  int CompressorHandle,
  Pointer UncompressedData,
  int UncompressedDataSize,
  Pointer CompressedBuffer,
  int CompressedBufferSize,
  Pointer<IntPtr> CompressedDataSize,
)>('Compress');

int CreateCompressor(
  int Algorithm,
  Pointer<COMPRESS_ALLOCATION_ROUTINES> AllocationRoutines,
  Pointer<IntPtr> CompressorHandle,
) =>
    _CreateCompressor(
      Algorithm,
      AllocationRoutines,
      CompressorHandle,
    );

late final _CreateCompressor = _cabinet.lookupFunction<
    Int32 Function(
  Uint32 Algorithm,
  Pointer<COMPRESS_ALLOCATION_ROUTINES> AllocationRoutines,
  Pointer<IntPtr> CompressorHandle,
),
    int Function(
  int Algorithm,
  Pointer<COMPRESS_ALLOCATION_ROUTINES> AllocationRoutines,
  Pointer<IntPtr> CompressorHandle,
)>('CreateCompressor');

int CreateDecompressor(
  int Algorithm,
  Pointer<COMPRESS_ALLOCATION_ROUTINES> AllocationRoutines,
  Pointer<IntPtr> DecompressorHandle,
) =>
    _CreateDecompressor(
      Algorithm,
      AllocationRoutines,
      DecompressorHandle,
    );

late final _CreateDecompressor = _cabinet.lookupFunction<
    Int32 Function(
  Uint32 Algorithm,
  Pointer<COMPRESS_ALLOCATION_ROUTINES> AllocationRoutines,
  Pointer<IntPtr> DecompressorHandle,
),
    int Function(
  int Algorithm,
  Pointer<COMPRESS_ALLOCATION_ROUTINES> AllocationRoutines,
  Pointer<IntPtr> DecompressorHandle,
)>('CreateDecompressor');

int Decompress(
  int DecompressorHandle,
  Pointer CompressedData,
  int CompressedDataSize,
  Pointer UncompressedBuffer,
  int UncompressedBufferSize,
  Pointer<IntPtr> UncompressedDataSize,
) =>
    _Decompress(
      DecompressorHandle,
      CompressedData,
      CompressedDataSize,
      UncompressedBuffer,
      UncompressedBufferSize,
      UncompressedDataSize,
    );

late final _Decompress = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr DecompressorHandle,
  Pointer CompressedData,
  IntPtr CompressedDataSize,
  Pointer UncompressedBuffer,
  IntPtr UncompressedBufferSize,
  Pointer<IntPtr> UncompressedDataSize,
),
    int Function(
  int DecompressorHandle,
  Pointer CompressedData,
  int CompressedDataSize,
  Pointer UncompressedBuffer,
  int UncompressedBufferSize,
  Pointer<IntPtr> UncompressedDataSize,
)>('Decompress');

int QueryCompressorInformation(
  int CompressorHandle,
  int CompressInformationClass,
  Pointer CompressInformation,
  int CompressInformationSize,
) =>
    _QueryCompressorInformation(
      CompressorHandle,
      CompressInformationClass,
      CompressInformation,
      CompressInformationSize,
    );

late final _QueryCompressorInformation = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr CompressorHandle,
  Int32 CompressInformationClass,
  Pointer CompressInformation,
  IntPtr CompressInformationSize,
),
    int Function(
  int CompressorHandle,
  int CompressInformationClass,
  Pointer CompressInformation,
  int CompressInformationSize,
)>('QueryCompressorInformation');

int QueryDecompressorInformation(
  int DecompressorHandle,
  int CompressInformationClass,
  Pointer CompressInformation,
  int CompressInformationSize,
) =>
    _QueryDecompressorInformation(
      DecompressorHandle,
      CompressInformationClass,
      CompressInformation,
      CompressInformationSize,
    );

late final _QueryDecompressorInformation = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr DecompressorHandle,
  Int32 CompressInformationClass,
  Pointer CompressInformation,
  IntPtr CompressInformationSize,
),
    int Function(
  int DecompressorHandle,
  int CompressInformationClass,
  Pointer CompressInformation,
  int CompressInformationSize,
)>('QueryDecompressorInformation');

int ResetCompressor(
  int CompressorHandle,
) =>
    _ResetCompressor(
      CompressorHandle,
    );

late final _ResetCompressor = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr CompressorHandle,
),
    int Function(
  int CompressorHandle,
)>('ResetCompressor');

int ResetDecompressor(
  int DecompressorHandle,
) =>
    _ResetDecompressor(
      DecompressorHandle,
    );

late final _ResetDecompressor = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr DecompressorHandle,
),
    int Function(
  int DecompressorHandle,
)>('ResetDecompressor');

int SetCompressorInformation(
  int CompressorHandle,
  int CompressInformationClass,
  Pointer CompressInformation,
  int CompressInformationSize,
) =>
    _SetCompressorInformation(
      CompressorHandle,
      CompressInformationClass,
      CompressInformation,
      CompressInformationSize,
    );

late final _SetCompressorInformation = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr CompressorHandle,
  Int32 CompressInformationClass,
  Pointer CompressInformation,
  IntPtr CompressInformationSize,
),
    int Function(
  int CompressorHandle,
  int CompressInformationClass,
  Pointer CompressInformation,
  int CompressInformationSize,
)>('SetCompressorInformation');

int SetDecompressorInformation(
  int DecompressorHandle,
  int CompressInformationClass,
  Pointer CompressInformation,
  int CompressInformationSize,
) =>
    _SetDecompressorInformation(
      DecompressorHandle,
      CompressInformationClass,
      CompressInformation,
      CompressInformationSize,
    );

late final _SetDecompressorInformation = _cabinet.lookupFunction<
    Int32 Function(
  IntPtr DecompressorHandle,
  Int32 CompressInformationClass,
  Pointer CompressInformation,
  IntPtr CompressInformationSize,
),
    int Function(
  int DecompressorHandle,
  int CompressInformationClass,
  Pointer CompressInformation,
  int CompressInformationSize,
)>('SetDecompressorInformation');
