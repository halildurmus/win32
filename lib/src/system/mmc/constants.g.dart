// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

const MMC_VER = 0x200;
const MMC_PROP_CHANGEAFFECTSUI = 0x1;
const MMC_PROP_MODIFIABLE = 0x2;
const MMC_PROP_REMOVABLE = 0x4;
const MMC_PROP_PERSIST = 0x8;
const MMCLV_AUTO = 0xffffffff;
const MMCLV_NOPARAM = 0xfffffffe;
const MMCLV_NOICON = 0xffffffff;
const MMCLV_VIEWSTYLE_ICON = 0x0;
const MMCLV_VIEWSTYLE_SMALLICON = 0x2;
const MMCLV_VIEWSTYLE_LIST = 0x3;
const MMCLV_VIEWSTYLE_REPORT = 0x1;
const MMCLV_VIEWSTYLE_FILTERED = 0x4;
const MMCLV_NOPTR = 0x0;
const MMCLV_UPDATE_NOINVALIDATEALL = 0x1;
const MMCLV_UPDATE_NOSCROLL = 0x2;
const MMC_IMAGECALLBACK = 0xffffffff;
const RDI_STR = 0x2;
const RDI_IMAGE = 0x4;
const RDI_STATE = 0x8;
const RDI_PARAM = 0x10;
const RDI_INDEX = 0x20;
const RDI_INDENT = 0x40;
const MMC_VIEW_OPTIONS_NONE = 0x0;
const MMC_VIEW_OPTIONS_NOLISTVIEWS = 0x1;
const MMC_VIEW_OPTIONS_MULTISELECT = 0x2;
const MMC_VIEW_OPTIONS_OWNERDATALIST = 0x4;
const MMC_VIEW_OPTIONS_FILTERED = 0x8;
const MMC_VIEW_OPTIONS_CREATENEW = 0x10;
const MMC_VIEW_OPTIONS_USEFONTLINKING = 0x20;
const MMC_VIEW_OPTIONS_EXCLUDE_SCOPE_ITEMS_FROM_LIST = 0x40;
const MMC_VIEW_OPTIONS_LEXICAL_SORT = 0x80;
const MMC_PSO_NOAPPLYNOW = 0x1;
const MMC_PSO_HASHELP = 0x2;
const MMC_PSO_NEWWIZARDTYPE = 0x4;
const MMC_PSO_NO_PROPTITLE = 0x8;
const RFI_PARTIAL = 0x1;
const RFI_WRAP = 0x2;
const RSI_DESCENDING = 0x1;
const RSI_NOSORTICON = 0x2;
const SDI_STR = 0x2;
const SDI_IMAGE = 0x4;
const SDI_OPENIMAGE = 0x8;
const SDI_STATE = 0x10;
const SDI_PARAM = 0x20;
const SDI_CHILDREN = 0x40;
const SDI_PARENT = 0x0;
const SDI_PREVIOUS = 0x10000000;
const SDI_NEXT = 0x20000000;
const SDI_FIRST = 0x8000000;
const MMC_MULTI_SELECT_COOKIE = 0xfffffffe;
const MMC_WINDOW_COOKIE = 0xfffffffd;
const SPECIAL_COOKIE_MIN = 0xfffffff6;
const SPECIAL_COOKIE_MAX = 0xffffffff;
const MMC_NW_OPTION_NONE = 0x0;
const MMC_NW_OPTION_NOSCOPEPANE = 0x1;
const MMC_NW_OPTION_NOTOOLBARS = 0x2;
const MMC_NW_OPTION_SHORTTITLE = 0x4;
const MMC_NW_OPTION_CUSTOMTITLE = 0x8;
const MMC_NW_OPTION_NOPERSIST = 0x10;
const MMC_NW_OPTION_NOACTIONPANE = 0x20;
const MMC_NODEID_SLOW_RETRIEVAL = 0x1;
const SPECIAL_DOBJ_MIN = 0xfffffff6;
const SPECIAL_DOBJ_MAX = 0x0;
const AUTO_WIDTH = 0xffffffff;
const HIDE_COLUMN = 0xfffffffc;
const ILSIF_LEAVE_LARGE_ICON = 0x40000000;
const ILSIF_LEAVE_SMALL_ICON = 0x20000000;
const HDI_HIDDEN = 0x1;
const RDCI_ScopeItem = 0x80000000;
const RVTI_MISC_OPTIONS_NOLISTVIEWS = 0x1;
const RVTI_LIST_OPTIONS_NONE = 0x0;
const RVTI_LIST_OPTIONS_OWNERDATALIST = 0x2;
const RVTI_LIST_OPTIONS_MULTISELECT = 0x4;
const RVTI_LIST_OPTIONS_FILTERED = 0x8;
const RVTI_LIST_OPTIONS_USEFONTLINKING = 0x20;
const RVTI_LIST_OPTIONS_EXCLUDE_SCOPE_ITEMS_FROM_LIST = 0x40;
const RVTI_LIST_OPTIONS_LEXICAL_SORT = 0x80;
const RVTI_LIST_OPTIONS_ALLOWPASTE = 0x100;
const RVTI_HTML_OPTIONS_NONE = 0x0;
const RVTI_HTML_OPTIONS_NOLISTVIEW = 0x1;
const RVTI_OCX_OPTIONS_NONE = 0x0;
const RVTI_OCX_OPTIONS_NOLISTVIEW = 0x1;
const RVTI_OCX_OPTIONS_CACHE_OCX = 0x2;
const MMC_DEFAULT_OPERATION_COPY = 0x1;
const MMC_ITEM_OVERLAY_STATE_MASK = 0xf00;
const MMC_ITEM_OVERLAY_STATE_SHIFT = 0x8;
const MMC_ITEM_STATE_MASK = 0xff;
const Application = '{49B2791A-B1AE-4C90-9B8E-E860BA07F889}';
const AppEventsDHTMLConnector = '{ADE6444B-C91F-4E37-92A4-5BB430A33340}';
