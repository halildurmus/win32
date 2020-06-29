import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'mdFile.dart';
import 'mdMethod.dart';
import 'utils.dart';

class WinmdType {
  IMetaDataImport2 reader;

  int token;
  String typeName;
  int flags;
  int baseTypeToken;

  WinmdType(this.reader,
      [this.token = 0,
      this.typeName = '',
      this.flags = 0,
      this.baseTypeToken = 0]);

  factory WinmdType.fromToken(IMetaDataImport2 reader, int token) {
    var type = WinmdType(reader);

    final nRead = allocate<Uint32>();
    final tdFlags = allocate<Uint32>();
    final baseClassToken = allocate<Uint32>();
    final typeName = allocate<Uint16>(count: 256).cast<Utf16>();

    try {
      final hr = reader.GetTypeDefProps(
          token, typeName, 256, nRead, tdFlags, baseClassToken);

      if (hr == S_OK) {
        type = WinmdType(reader, token, typeName.unpackString(nRead.value),
            tdFlags.value, baseClassToken.value);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(nRead);
      free(tdFlags);
      free(baseClassToken);
      free(typeName);
    }

    return type;
  }

  factory WinmdType.fromTypeRef(IMetaDataImport2 refReader, int typeRefToken) {
    final ptkResolutionScope = allocate<Uint32>();
    final szName = allocate<Uint16>(count: 256).cast<Utf16>();
    final pchName = allocate<Uint32>();

    var hr = refReader.GetTypeRefProps(
        typeRefToken, ptkResolutionScope, szName, 256, pchName);
    if (hr == S_OK) {
      final typeName = szName.unpackString(pchName.value);
      final file = metadataFileContainingType(typeName);
      final winmdFile = WinmdFile(file);

      final winTypeDef = winmdFile.findTypeDef(typeName);
      return winTypeDef;
    } else {
      throw WindowsException(hr);
    }
  }
  WinmdType processInterfaceToken(int token) {
    var interfaceTypeDef = WinmdType(reader);

    final pClass = allocate<Uint32>();
    final ptkIface = allocate<Uint32>();

    try {
      final hr = reader.GetInterfaceImplProps(token, pClass, ptkIface);
      if (hr == S_OK) {
        if (tokenIsTypeRef(ptkIface.value)) {
          interfaceTypeDef = WinmdType.fromTypeRef(reader, ptkIface.value);
        } else if (tokenIsTypeDef(pClass.value)) {
          interfaceTypeDef = WinmdType.fromToken(reader, ptkIface.value);
        } else {
          throw WindowsException(hr);
        }
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pClass);
      free(ptkIface);
    }

    return interfaceTypeDef;
  }

  List<WinmdType> get interfaces {
    final interfaces = <WinmdType>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final rImpls = allocate<Uint32>();
    final pcImpls = allocate<Uint32>();

    try {
      var hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
      while (hr == S_OK) {
        final token = rImpls.value;

        interfaces.add(processInterfaceToken(token));
        hr = reader.EnumInterfaceImpls(phEnum, token, rImpls, 1, pcImpls);
      }
      reader.CloseEnum(phEnum.address);
    } finally {
      free(rImpls);
      free(pcImpls);

      // dispose phEnum crashes here, so leave it allocated
    }

    return interfaces;
  }

  List<WinmdMethod> get methods {
    final methods = <WinmdMethod>[];

    final phEnum = allocate<IntPtr>()..value = 0;
    final mdMethodDef = allocate<Uint32>();
    final pcTokens = allocate<Uint32>();

    try {
      var hr = reader.EnumMethods(phEnum, token, mdMethodDef, 1, pcTokens);
      while (hr == S_OK) {
        final token = mdMethodDef.value;

        methods.add(WinmdMethod.fromToken(reader, token));
        hr = reader.EnumMethods(phEnum, token, mdMethodDef, 1, pcTokens);
      }
      reader.CloseEnum(phEnum.address);
    } finally {
      free(mdMethodDef);
      free(pcTokens);

      // dispose phEnum crashes here, so leave it allocated
    }

    return methods;
  }

  WinmdMethod findMethod(String methodName) {
    WinmdMethod methodToken;

    final szName = TEXT(methodName);
    final pmb = allocate<Uint32>();

    try {
      final hr = reader.FindMethod(token, szName, nullptr, 0, pmb);
      if (hr == S_OK) {
        methodToken = WinmdMethod.fromToken(reader, pmb.value);
      } else {
        throw COMException(hr);
      }
    } finally {
      free(szName);
      free(pmb);
    }

    return methodToken;
  }

  WinmdType get parent {
    final ptdEnclosingClass = allocate<Uint32>();

    reader.GetNestedClassProps(token, ptdEnclosingClass);

    return WinmdType.fromToken(reader, token);
  }

  String get guid {
    String guidAsString;

    final attributeName = TEXT('Windows.Foundation.Metadata.GuidAttribute');
    final ppData = allocate<IntPtr>();
    final pcbData = allocate<Uint32>();

    try {
      final hr = reader.GetCustomAttributeByName(
          token, attributeName, ppData, pcbData);
      if (hr != S_OK) {
        throw WindowsException(hr);
      }

      if (pcbData.value != 20) {
        // GUID blob is incorrect length
        return null;
      } else {
        final blob = Pointer<Uint8>.fromAddress(ppData.value);
        final guid = blob.elementAt(2).cast<GUID>();
        guidAsString = guid.ref.toString();
      }
    } finally {
      free(ppData);
      free(pcbData);
    }
    return guidAsString;
  }
}
