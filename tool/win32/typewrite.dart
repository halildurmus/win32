import 'dart:io';

final prototypes = <String, TypeDef>{};

final typedefsAsLines = File('lib/src/typedefs.dart').readAsLinesSync();
final typedefsAsString = File('lib/src/typedefs.dart').readAsStringSync();

class TypeDef {
  String neutralApiName;
  final List<String> prototype;
  String nativeReturn;
  String dartReturn;
  final Map<String, String> nativeParams = {};
  final Map<String, String> dartParams = {};
  String dllLibrary;

  TypeDef(this.prototype);
}

void getPrototypes() {
  var inComment = false;

  var nativePrototype = <String>[];

  for (var idx = 10; idx < typedefsAsLines.length; idx++) {
    if (typedefsAsLines[idx].trim().startsWith('//')) {
      nativePrototype.add(typedefsAsLines[idx].substring(3));
      inComment = true;
    } else {
      inComment = false;
    }

    if (!inComment && nativePrototype.isNotEmpty) {
      var apiName = nativePrototype.first.split(' ').last;
      apiName = apiName.split('(').first;
      prototypes[apiName] = TypeDef(nativePrototype);
      getParams(apiName);
      nativePrototype = [];
    }
  }
}

void getParams(String apiName) {
  String neutralApiName;
  if (apiName.endsWith('W')) {
    neutralApiName = apiName.substring(0, apiName.length - 1);
  } else {
    neutralApiName = apiName;
  }
  prototypes[apiName].neutralApiName = neutralApiName;

  final nativeApiName =
      '${neutralApiName[0].toLowerCase()}${neutralApiName.substring(1)}Native';
  final dartApiName =
      '${neutralApiName[0].toLowerCase()}${neutralApiName.substring(1)}Dart';

  final nativeTypedefStart =
      typedefsAsString.toLowerCase().indexOf(nativeApiName.toLowerCase());
  final nativeTypedefBracketStart =
      typedefsAsString.indexOf('(', nativeTypedefStart) + 1;
  final nativeTypedefEnd = typedefsAsString.indexOf(')', nativeTypedefStart);
  final nativeTypedefReturn = typedefsAsString
      .substring(nativeTypedefStart, nativeTypedefEnd)
      .split('=')
      .last
      .trim()
      .split(' ')
      .first;
  prototypes[apiName].nativeReturn = nativeTypedefReturn;
  var nativeTypedef =
      typedefsAsString.substring(nativeTypedefBracketStart, nativeTypedefEnd);
  nativeTypedef = nativeTypedef.replaceAll('\n', ' ').trim();

  final nativeParams = nativeTypedef.split(',');
  for (final param in nativeParams) {
    final ab = param.trim().split(' ');
    if (ab.length == 2) {
      prototypes[apiName].nativeParams[ab.last] = ab.first;
    } else if (ab.isNotEmpty && ab.first != '') {
      print(ab);
    }
  }

  final dartTypedefStart =
      typedefsAsString.toLowerCase().indexOf(dartApiName.toLowerCase());
  final dartTypedefBracketStart =
      typedefsAsString.indexOf('(', dartTypedefStart) + 1;
  final dartTypedefEnd = typedefsAsString.indexOf(')', dartTypedefStart);
  final dartTypedefReturn = typedefsAsString
      .substring(dartTypedefStart, dartTypedefEnd)
      .split('=')
      .last
      .trim()
      .split(' ')
      .first;
  prototypes[apiName].dartReturn = dartTypedefReturn;
  var dartTypedef =
      typedefsAsString.substring(dartTypedefBracketStart, dartTypedefEnd);
  dartTypedef = dartTypedef.replaceAll('\n', ' ').trim();

  final dartParams = dartTypedef.split(',');
  for (final param in dartParams) {
    final ab = param.trim().split(' ');
    if (ab.length == 2) {
      prototypes[apiName].dartParams[ab.last] = ab.first;
    } else if (ab.isNotEmpty && ab.first != '') {
      print(ab.length);
    }
  }
}

void getLibraries() {
  for (final filename in [
    "kernel32",
    "user32",
    "gdi32",
    "shell32",
    "ole32",
    "oleaut32",
    "comctl32",
    "comdlg32",
    "psapi",
    "advapi32",
    "bthprops",
    "powrprof",
    "dxva2"
  ]) {
    final file = File('lib/src/$filename.dart');
    final fileAsString = file.readAsStringSync();

    for (final prototype in prototypes.keys) {
      if (fileAsString.contains(prototype)) {
        prototypes[prototype].dllLibrary = filename;
      }
    }
  }
}

void printCsv(String filename) {
  final csvFile = File(filename);
  final writeHandle = csvFile.openSync(mode: FileMode.write);
  writeHandle.writeStringSync(
      'ApiName, NeutralApiName, DllLibrary, WindowsPrototype, ReturnNative, ReturnDart, ParamCount, Param1Native, Param1Dart\n');
  for (final prototype in prototypes.keys) {
    final buffer = StringBuffer();
    final td = prototypes[prototype];
    buffer.write('$prototype, ${td.neutralApiName}, ${td.dllLibrary}, ');
    buffer.write('"${td.prototype.join("\\n")}", ');
    buffer.write('${td.nativeReturn}, ${td.dartReturn}, ');
    buffer.write('${td.dartParams.length}, ');
    for (final param in td.dartParams.keys) {
      buffer.write(
          '$param, ${td.nativeParams[param]}, ${td.dartParams[param]}, ');
    }
    final str = buffer.toString();
    writeHandle.writeStringSync('${str.substring(0, str.length - 2)}\n');
  }
  writeHandle.closeSync();
}

void loadCsv() {
  final file = File('win32types_original.csv');
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

    prototypes[apiName] = TypeDef(prototype.split('\n'))
      ..neutralApiName = neutralApiName
      ..dllLibrary = dllLibrary
      ..nativeReturn = fields[idx++]
      ..dartReturn = fields[idx++];

    final numParams = int.parse(fields[idx++]);

    for (var i = 0; i < numParams; i++) {
      final paramName = fields[idx++];
      final paramNativeType = fields[idx++];
      final paramDartType = fields[idx++];

      prototypes[apiName].dartParams[paramName] = paramDartType;
      prototypes[apiName].nativeParams[paramName] = paramNativeType;
    }
  }
}

void main() {
  getPrototypes();
  getLibraries();

  printCsv('win32types_original.csv');

  prototypes.clear();
  loadCsv();
  print('${prototypes.length} entries written.');

  printCsv('win32types_loaded.csv');
}
