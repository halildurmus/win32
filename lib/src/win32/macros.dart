// ignore_for_file: non_constant_identifier_names

import 'structs.dart';

@pragma('vm:prefer-inline')
bool FAILED(HRESULT result) => result < 0;

@pragma('vm:prefer-inline')
bool SUCCEEDED(HRESULT result) => result >= 0;
