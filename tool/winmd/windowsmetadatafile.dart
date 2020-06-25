import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'windowsruntimetype.dart';

class WindowsMetadataFile {
  IMetaDataImport2 reader;

  /// Constructs a [WindowsMetadataFile] object from a .winmd file.
  WindowsMetadataFile(File file) {
    final pDispenser = COMObject.allocate().addressOf;
    var hr = MetaDataGetDispenser(
        convertToCLSID(CLSID_CorMetaDataDispenser).cast(),
        convertToIID(IID_IMetaDataDispenser).cast(),
        pDispenser.cast());

    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    final dispenser = IMetaDataDispenser(pDispenser.cast());
    final szFile = TEXT(file.path);
    final pReader = allocate<IntPtr>();

    hr = dispenser.OpenScope(szFile, CorOpenFlags.ofRead,
        convertToIID(IID_IMetaDataImport2).cast(), pReader);
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }
    free(pDispenser);

    reader = IMetaDataImport2(pReader.cast());
  }

  WindowsRuntimeType processTypeDefToken(int token) {
    WindowsRuntimeType type;

    final nRead = allocate<Uint32>();
    final tdFlags = allocate<Uint32>();
    final baseClassToken = allocate<Uint32>();
    final typeName = allocate<Uint16>(count: 256).cast<Utf16>();

    var hr = reader.GetTypeDefProps(
        token, typeName, 256, nRead, tdFlags, baseClassToken);

    if (hr == S_OK) {
      type = WindowsRuntimeType(
          reader,
          token,
          typeName.unpackString(nRead.value),
          tdFlags.value,
          baseClassToken.value);

      free(nRead);
      free(tdFlags);
      free(baseClassToken);
      free(typeName);

      return type;
    } else {
      throw WindowsException(hr);
    }
  }

  List<WindowsRuntimeType> get typeDefs {
    final types = <WindowsRuntimeType>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final rgTypeDefs = allocate<Uint32>();
    final pcTypeDefs = allocate<Uint32>();

    var hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
    while (hr == S_OK) {
      final token = rgTypeDefs.value;

      types.add(processTypeDefToken(token));
      hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
    }
    reader.CloseEnum(phEnum.address);

    free(rgTypeDefs);
    free(pcTypeDefs);

    // dispose phEnum crashes here, so leave it allocated

    return types;
  }

  WindowsRuntimeType findTypeDef(String type) {
    final szTypeDef = TEXT(type);
    final ptkTypeDef = allocate<Uint32>();

    reader.FindTypeDefByName(szTypeDef, NULL, ptkTypeDef);

    return processTypeDefToken(ptkTypeDef.value);
  }
}
