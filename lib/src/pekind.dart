import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'models/models.dart';
import 'win32/win32.dart';

/// A representation of the assembly file's portable executable format.
class PEKind {
  PEKind(IMetaDataImport2 reader) {
    using((arena) {
      final pdwPEKind = arena<DWORD>();
      final pdwMachine = arena<DWORD>();
      try {
        reader.getPEKind(pdwPEKind, pdwMachine);
        _peKind = pdwPEKind.value;
        _machine = pdwMachine.value;
      } on WindowsException {
        _peKind = 0;
        _machine = 0;
      }
    });
  }

  late final int _machine;
  late final int _peKind;

  /// Returns false if the file is not in portable executable (PE) file format.
  bool get isPEFile => _peKind != 0;

  /// Returns true if this PE file contains only managed code, and is therefore
  /// neutral with respect to 32-bit or 64-bit platforms.
  bool get isILOnly => _peKind & peILonly == peILonly;

  /// Returns true if this PE file makes Win32 calls.
  bool get makes32BitCalls => _peKind & pe32BitRequired == pe32BitRequired;

  /// Returns true if this PE file requires a 64-bit platform.
  bool get runsOn64BitPlatform => _peKind & pe32Plus == pe32Plus;

  /// Returns true if this PE file contains native (unmanaged) code.
  bool get isNativeCode => _peKind & pe32Unmanaged == pe32Unmanaged;

  /// Returns true if this PE file is platform-neutral and prefers to be loaded
  /// in a 32-bit environment.
  bool get isPlatformNeutral => _peKind & pe32BitPreferred == pe32BitPreferred;

  /// Returns a value that identifies the platform architecture targeted by the
  /// module.
  ImageType get imageType => switch (_machine) {
    IMAGE_FILE_MACHINE_I386 => ImageType.i386,
    IMAGE_FILE_MACHINE_IA64 => ImageType.ia64,
    IMAGE_FILE_MACHINE_AMD64 => ImageType.amd64,
    _ => throw const WinmdException('Unrecognized image type.'),
  };
}
