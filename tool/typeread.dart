import 'dart:io';

final prototypes = <String, TypeDef>{};

final lines = File('lib/src/typedefs.dart').readAsLinesSync();
final string = File('lib/src/typedefs.dart').readAsStringSync();

class TypeDef {
  final List<String> prototype;
  final Map<String, String> nativeParams = {};
  final Map<String, String> dartParams = {};

  TypeDef(this.prototype);
}

void getPrototypes() {
  var inComment = false;

  var nativePrototype = <String>[];

  for (var idx = 10; idx < lines.length; idx++) {
    if (lines[idx].trim().startsWith('//')) {
      nativePrototype.add(lines[idx].substring(3));
      inComment = true;
    } else {
      inComment = false;
    }

    if (!inComment && nativePrototype.isNotEmpty) {
      var apiName = nativePrototype.first.split(' ').last;
      apiName =
          // if (apiName.contains(')')) {
          apiName.split('(').first;
      // } else {
      //   apiName = apiName.substring(0, apiName.length - 1);
      // }
      prototypes[apiName] = TypeDef(nativePrototype);
      getParams(apiName);
      nativePrototype = [];
    }
  }

  for (final prototypeKey in prototypes.keys) {
    print(prototypeKey);
  }
}

void getParams(String apiName) {
  if (apiName.endsWith('W')) {
    // ignore: parameter_assignments
    apiName = apiName.substring(0, apiName.length - 1);
  }

  final nativeApiName =
      '${apiName[0].toLowerCase()}${apiName.substring(1)}Native';
  final dartApiName = '${apiName[0].toLowerCase()}${apiName.substring(1)}Dart';

  final nativeTypedefStart = string.indexOf(nativeApiName);
  final nativeTypedefEnd = string.indexOf(')', nativeTypedefStart);
  final nativeTypedef = string.substring(nativeTypedefStart, nativeTypedefEnd);

  final nativeParams = nativeTypedef.split(',');
  for (final param in nativeParams) {
    final ab = param.split(' ');
    prototypes[apiName].nativeParams[ab.first] = ab.last;
  }

  final dartTypedefStart = string.indexOf(dartApiName);
  final dartTypedefEnd = string.indexOf(')', dartTypedefStart);
  final dartTypedef = string.substring(dartTypedefStart, dartTypedefEnd);

  final dartParams = dartTypedef.split(',');
  for (final param in dartParams) {
    final ab = param.split(' ');
    prototypes[apiName].dartParams[ab.first] = ab.last;
  }
}

void main() {
  getPrototypes();

  print(prototypes.length);
}
