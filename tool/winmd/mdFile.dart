import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'mdType.dart';

class WinmdFile {
  IMetaDataImport2 reader;

  /// Constructs a [WinmdFile] object from a .winmd file.
  WinmdFile(File file) {
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

  List<WinmdType> get typeDefs {
    final types = <WinmdType>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final rgTypeDefs = allocate<Uint32>();
    final pcTypeDefs = allocate<Uint32>();

    var hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
    while (hr == S_OK) {
      final token = rgTypeDefs.value;

      types.add(WinmdType.fromToken(reader, token));
      hr = reader.EnumTypeDefs(phEnum, rgTypeDefs, 1, pcTypeDefs);
    }
    reader.CloseEnum(phEnum.address);

    free(rgTypeDefs);
    free(pcTypeDefs);

    // dispose phEnum crashes here, so leave it allocated

    return types;
  }

  WinmdType findTypeDef(String type) {
    final szTypeDef = TEXT(type);
    final ptkTypeDef = allocate<Uint32>();

    reader.FindTypeDefByName(szTypeDef, NULL, ptkTypeDef);

    return WinmdType.fromToken(reader, ptkTypeDef.value);
  }
}
