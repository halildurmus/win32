// winmd.dart

// Parse the Windows Metadata for a type and interpret its metadata

// Sources of inspiration:
// https://stackoverflow.com/questions/54375771/how-to-read-a-winmd-winrt-metadata-file
// https://docs.microsoft.com/en-us/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile
// https://www.ecma-international.org/publications/files/ECMA-ST/ECMA-335.pdf

import 'dart:io';

import 'dartProjection.dart';
import 'enums.dart';
import 'mdFile.dart';
import 'utils.dart';

/// Convert enums to ints
Parameter tidyParam(String type, Parameter param) {
  // TODO: This shouldn't be done by inspecting the type; we should be checking
  // whether the type is an enum, and if so, what it corresponds to. This is a
  // quick and dirty hack to get us up and running.

  if (['Windows.Foundation.AsyncStatus'].contains(type)) {
    param.dartType = 'int';
    param.nativeType = 'Int32';
  }

  if (['Windows.Foundation.HResult'].contains(type)) {
    param.dartType = 'int';
    param.nativeType = 'Uint32';
  }

  return param;
}

Interface projectWinMdType(String type) {
  final mdFile = metadataFileContainingType(type);
  final mdTypeDef = WinmdFile(mdFile).findTypeDef(type);

  final interface = Interface();
  interface.sourceType = SourceType.idl; // for now
  interface.iid = mdTypeDef.guid;
  interface.name = mdTypeDef.typeName;
  interface.inherits = mdTypeDef.parent.typeName;
  interface.vtableStart = 6; // For now, hardcode to IInspectable subclass

  for (var mdMethod in mdTypeDef.methods) {
    final method = Method();
    method.name = mdMethod.methodName;
    method.returnTypeNative = 'Int32';
    method.returnTypeDart = 'int';

    // return value is passed as an outparam
    if (mdMethod.returnType.typeFlag.corType !=
        CorElementType.ELEMENT_TYPE_VOID) {
      var retParam = Parameter();
      if (mdMethod.isProperty) {
        retParam.name = method.name.substring(4).toCamelCase();
      } else {
        retParam.name = method.name;
      }
      retParam.nativeType = mdMethod.returnType.typeFlag.nativeType;
      retParam = tidyParam(mdMethod.returnType.typeFlag.nativeType, retParam);
      retParam.dartType = retParam.nativeType;
      method.parameters.add(retParam);
    }

    for (var mdParam in mdMethod.parameters) {
      var param = Parameter();
      param.name = mdParam.name;

      param.dartType = mdParam.typeFlag.dartType;
      param.nativeType = mdParam.typeFlag.nativeType;
      param = tidyParam(mdParam.typeFlag.dartType, param);

      method.parameters.add(param);
    }

    interface.methods.add(method);
  }

  return interface;
}

void main(List<String> args) {
  if (args.length == 1) {
    final outputDirectory = Directory(args.first);
    final types = [
      // 'Windows.Foundation.IAsyncAction',
      'Windows.Foundation.IAsyncInfo',
      'Windows.Foundation.IClosable',
      'Windows.Foundation.IStringable',
      'Windows.Globalization.ICalendar',
      // 'Windows.Storage.Pickers.IFileOpenPicker'
    ];
    for (var type in types) {
      final dartProjection = projectWinMdType(type);
      final outputFilename = type.split('.').last;

      final outputFile =
          File('${outputDirectory.uri.toFilePath()}$outputFilename.dart');
      print('Writing:    ${outputFile.path}');
      outputFile.writeAsStringSync(dartProjection.toString());
    }
  } else {
    print('winmd <output_dir>'
        ' -- creates a Dart projection of the types into an output directory.');
  }
}
