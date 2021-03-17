// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class alljoyn_aboutdatalistener_callbacks extends Struct {
  external alljoyn_aboutdatalistener_getaboutdata_ptr about_datalistener_getaboutdata;
  external alljoyn_aboutdatalistener_getannouncedaboutdata_ptr about_datalistener_getannouncedaboutdata;
}

class alljoyn_certificateid extends Struct {
  external Pointer<Uint8> serial;
  @IntPtr() external int serialLen;
  external Pointer<Int8> issuerPublicKey;
  external Pointer<Uint8> issuerAki;
  @IntPtr() external int issuerAkiLen;
}

class alljoyn_certificateidarray extends Struct {
  @IntPtr() external int count;
  external Pointer<alljoyn_certificateid> ids;
}

class alljoyn_manifestarray extends Struct {
  @IntPtr() external int count;
  external Pointer<Pointer<Int8>> xmls;
}

class alljoyn_applicationstatelistener_callbacks extends Struct {
  external alljoyn_applicationstatelistener_state_ptr state;
}

class alljoyn_keystorelistener_callbacks extends Struct {
  external alljoyn_keystorelistener_loadrequest_ptr load_request;
  external alljoyn_keystorelistener_storerequest_ptr store_request;
}

class alljoyn_keystorelistener_with_synchronization_callbacks extends Struct {
  external alljoyn_keystorelistener_loadrequest_ptr load_request;
  external alljoyn_keystorelistener_storerequest_ptr store_request;
  external alljoyn_keystorelistener_acquireexclusivelock_ptr acquire_exclusive_lock;
  external alljoyn_keystorelistener_releaseexclusivelock_ptr release_exclusive_lock;
}

class alljoyn_authlistener_callbacks extends Struct {
  external alljoyn_authlistener_requestcredentials_ptr request_credentials;
  external alljoyn_authlistener_verifycredentials_ptr verify_credentials;
  external alljoyn_authlistener_securityviolation_ptr security_violation;
  external alljoyn_authlistener_authenticationcomplete_ptr authentication_complete;
}

class alljoyn_authlistenerasync_callbacks extends Struct {
  external alljoyn_authlistener_requestcredentialsasync_ptr request_credentials;
  external alljoyn_authlistener_verifycredentialsasync_ptr verify_credentials;
  external alljoyn_authlistener_securityviolation_ptr security_violation;
  external alljoyn_authlistener_authenticationcomplete_ptr authentication_complete;
}

class alljoyn_buslistener_callbacks extends Struct {
  external alljoyn_buslistener_listener_registered_ptr listener_registered;
  external alljoyn_buslistener_listener_unregistered_ptr listener_unregistered;
  external alljoyn_buslistener_found_advertised_name_ptr found_advertised_name;
  external alljoyn_buslistener_lost_advertised_name_ptr lost_advertised_name;
  external alljoyn_buslistener_name_owner_changed_ptr name_owner_changed;
  external alljoyn_buslistener_bus_stopping_ptr bus_stopping;
  external alljoyn_buslistener_bus_disconnected_ptr bus_disconnected;
  external alljoyn_buslistener_bus_prop_changed_ptr property_changed;
}

class alljoyn_interfacedescription_member extends Struct {
  external alljoyn_interfacedescription iface;
  @Uint32() external int memberType;
  external Pointer<Int8> name;
  external Pointer<Int8> signature;
  external Pointer<Int8> returnSignature;
  external Pointer<Int8> argNames;
  external Pointer internal_member;
}

class alljoyn_interfacedescription_property extends Struct {
  external Pointer<Int8> name;
  external Pointer<Int8> signature;
  @Uint8() external int access;
  external Pointer internal_property;
}

class alljoyn_busobject_callbacks extends Struct {
  external alljoyn_busobject_prop_get_ptr property_get;
  external alljoyn_busobject_prop_set_ptr property_set;
  external alljoyn_busobject_object_registration_ptr object_registered;
  external alljoyn_busobject_object_registration_ptr object_unregistered;
}

class alljoyn_busobject_methodentry extends Struct {
  external Pointer<alljoyn_interfacedescription_member> member;
  external alljoyn_messagereceiver_methodhandler_ptr method_handler;
}

class alljoyn_permissionconfigurationlistener_callbacks extends Struct {
  external alljoyn_permissionconfigurationlistener_factoryreset_ptr factory_reset;
  external alljoyn_permissionconfigurationlistener_policychanged_ptr policy_changed;
  external alljoyn_permissionconfigurationlistener_startmanagement_ptr start_management;
  external alljoyn_permissionconfigurationlistener_endmanagement_ptr end_management;
}

class alljoyn_sessionlistener_callbacks extends Struct {
  external alljoyn_sessionlistener_sessionlost_ptr session_lost;
  external alljoyn_sessionlistener_sessionmemberadded_ptr session_member_added;
  external alljoyn_sessionlistener_sessionmemberremoved_ptr session_member_removed;
}

class alljoyn_sessionportlistener_callbacks extends Struct {
  external alljoyn_sessionportlistener_acceptsessionjoiner_ptr accept_session_joiner;
  external alljoyn_sessionportlistener_sessionjoined_ptr session_joined;
}

class alljoyn_aboutlistener_callback extends Struct {
  external alljoyn_about_announced_ptr about_listener_announced;
}

class alljoyn_pinglistener_callback extends Struct {
  external alljoyn_autopinger_destination_found_ptr destination_found;
  external alljoyn_autopinger_destination_lost_ptr destination_lost;
}

class alljoyn_observerlistener_callback extends Struct {
  external alljoyn_observer_object_discovered_ptr object_discovered;
  external alljoyn_observer_object_lost_ptr object_lost;
}

class alljoyn_aboutdata extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_aboutdatalistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_aboutlistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_aboutobj extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_aboutobjectdescription extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_aboutproxy extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_applicationstatelistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_authlistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_autopinger extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_busattachment extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_buslistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_busobject extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_credentials extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_interfacedescription extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_keystore extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_keystorelistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_message extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_msgarg extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_observer extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_observerlistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_permissionconfigurationlistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_permissionconfigurator extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_pinglistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_proxybusobject extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_proxybusobject_ref extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_securityapplicationproxy extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_sessionlistener extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_sessionopts extends Struct {
  @IntPtr() external int Value;
}

class alljoyn_sessionportlistener extends Struct {
  @IntPtr() external int Value;
}

