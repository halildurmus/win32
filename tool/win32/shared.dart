import 'dart:io';

final prototypes = <String, TypeDef>{};

class TypeDef {
  late String neutralApiName;
  final List<String> prototype;
  late String nativeReturn;
  late String dartReturn;

  Map<String, String> nativeParams = {};
  Map<String, String> dartParams = {};
  late String dllLibrary;
  late String comment;

  TypeDef(this.prototype);
}

String ffiFromWin32(String win32Type) {
  const mapping = <String, String>{
    // Base C types
    'void': 'void',
    'int': 'Int32',
    'long': 'Int32',
    'short': 'Int16',
    'char': 'Int8',

    // Windows numerics
    'LONGLONG': 'Int64', 'INT64': 'Int64', 'LARGE_INTEGER': 'Int64',
    'ULONGLONG': 'Uint64', 'UINT64': 'Uint64', 'ULARGE_INTEGER': 'Uint64',
    'LONG': 'Int32', 'INT': 'Int32', 'INT32': 'Int32',
    'UINT': 'Uint32', 'UINT32': 'Uint32', 'DWORD': 'Uint32', 'ULONG': 'Uint32',
    'SHORT': 'Int16', 'INT16': 'Int16', 'WORD': 'Uint16', 'UINT16': 'Uint16',
    'BYTE': 'Uint8',
    'BOOL': 'Int32',
    'FLOAT': 'Float',
    'DOUBLE': 'Double',
  };

  if (mapping.containsKey(win32Type)) {
    return mapping[win32Type]!;
  } else {
    print('Need a mapping for $win32Type');
    return win32Type;
  }
}

String dartFromFFI(String ffiType) {
  if (ffiType.startsWith('Pointer')) {
    return ffiType;
  }
  if (ffiType.startsWith('Uint') || ffiType.startsWith('Int')) {
    return 'int';
  }

  if (['Double', 'Float'].contains(ffiType)) {
    return 'double';
  }

  if (ffiType == 'Void') {
    return 'void';
  }

  // Must be a struct passed by value, e.g. COORD in SetConsoleCursorPosition
  return ffiType;
}

void loadCsv(String filename) {
  final file = File(filename);
  final lines = file.readAsLinesSync().skip(1);
  for (final line in lines) {
    final fields = line.split(', ');
    final apiName = fields[0];
    final neutralApiName = fields[1];
    final dllLibrary = fields[2];

    var prototype = fields[3];
    var idx = 4;
    // keep consuming until we have a quoted string
    while (prototype.allMatches('"').length == 1) {
      // ignore: use_string_buffers
      prototype += ', ${fields[idx++]}';
    }
    prototype = prototype.replaceAll('"', '');

    final nativeReturn = fields[idx++];

    prototypes[apiName] = TypeDef(prototype.split('\n'))
      ..neutralApiName = neutralApiName
      ..dllLibrary = dllLibrary
      ..nativeReturn = nativeReturn
      ..dartReturn = dartFromFFI(nativeReturn);

    try {
      final numParams = int.parse(fields[idx++]);
      for (var i = 0; i < numParams; i++) {
        final paramName = fields[idx++];
        final paramNativeType = fields[idx++];

        prototypes[apiName]!.dartParams[paramName] =
            dartFromFFI(paramNativeType);
        prototypes[apiName]!.nativeParams[paramName] = paramNativeType;
      }
    } catch (e) {
      print('Error processing parameters for $apiName at index $idx.');
      rethrow;
    }

    // last field is the comment
    // keep consuming until we have a quoted string
    if (fields.length > idx) {
      prototypes[apiName]!.comment = fields[idx++];
      while (prototypes[apiName]!.comment.indexOf('"') == 0 &&
          prototypes[apiName]!.comment.lastIndexOf('"') == 0) {
        prototypes[apiName]!.comment += ', ${fields[idx++]}';
      }
      prototypes[apiName]!.comment =
          prototypes[apiName]!.comment.replaceAll('"', '');
    } else {
      prototypes[apiName]!.comment = '';
    }
  }
}

void saveCsv(String filename) {
  final file = File(filename);
  final buffer = StringBuffer();
  buffer.writeln(
      'ApiName, NeutralApiName, DllLibrary, WindowsPrototype, ReturnNative, '
      'ReturnDart, ParamCount, Param1Native, Param1Dart, Comment');

  for (final protoKey in prototypes.keys) {
    final proto = prototypes[protoKey]!;
    final fields = <String>[
      protoKey,
      proto.neutralApiName,
      proto.dllLibrary,
      '"${proto.prototype.first}"',
      proto.nativeReturn,
      proto.nativeParams.length.toString(),
    ];
    for (final key in proto.nativeParams.keys) {
      fields.add(key);
      fields.add(proto.nativeParams[key]!);
    }
    fields.add('"${proto.comment}"');
    buffer.writeln(fields.join(", "));
  }
  file.writeAsStringSync(buffer.toString());
}
