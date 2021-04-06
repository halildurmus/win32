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

class HTMLCSSStyleDeclaration extends Struct {}

class HTMLStyle extends Struct {}

class HTMLRuleStyle extends Struct {}

class HTMLCSSRule extends Struct {}

class HTMLCSSImportRule extends Struct {}

class HTMLCSSMediaRule extends Struct {}

class HTMLCSSMediaList extends Struct {}

class HTMLCSSNamespaceRule extends Struct {}

class HTMLMSCSSKeyframeRule extends Struct {}

class HTMLMSCSSKeyframesRule extends Struct {}

class HTMLRenderStyle extends Struct {}

class HTMLCurrentStyle extends Struct {}

class HTMLDOMAttribute extends Struct {}

class HTMLDOMTextNode extends Struct {}

class HTMLDOMImplementation extends Struct {}

class HTMLAttributeCollection extends Struct {}

class StaticNodeList extends Struct {}

class DOMChildrenCollection extends Struct {}

class HTMLDefaults extends Struct {}

class HTCDefaultDispatch extends Struct {}

class HTCPropertyBehavior extends Struct {}

class HTCMethodBehavior extends Struct {}

class HTCEventBehavior extends Struct {}

class HTCAttachBehavior extends Struct {}

class HTCDescBehavior extends Struct {}

class HTMLUrnCollection extends Struct {}

class HTMLGenericElement extends Struct {}

class HTMLStyleSheetRule extends Struct {}

class HTMLStyleSheetRulesCollection extends Struct {}

class HTMLStyleSheetPage extends Struct {}

class HTMLStyleSheetPagesCollection extends Struct {}

class HTMLStyleSheet extends Struct {}

class HTMLStyleSheetsCollection extends Struct {}

class HTMLLinkElement extends Struct {}

class HTMLDOMRange extends Struct {}

class HTMLFormElement extends Struct {}

class HTMLTextElement extends Struct {}

class HTMLImg extends Struct {}

class HTMLImageElementFactory extends Struct {}

class HTMLBody extends Struct {}

class HTMLFontElement extends Struct {}

class HTMLAnchorElement extends Struct {}

class HTMLLabelElement extends Struct {}

class HTMLListElement extends Struct {}

class HTMLUListElement extends Struct {}

class HTMLOListElement extends Struct {}

class HTMLLIElement extends Struct {}

class HTMLBlockElement extends Struct {}

class HTMLDivElement extends Struct {}

class HTMLDDElement extends Struct {}

class HTMLDTElement extends Struct {}

class HTMLBRElement extends Struct {}

class HTMLDListElement extends Struct {}

class HTMLHRElement extends Struct {}

class HTMLParaElement extends Struct {}

class HTMLElementCollection extends Struct {}

class HTMLHeaderElement extends Struct {}

class HTMLSelectElement extends Struct {}

class HTMLWndSelectElement extends Struct {}

class HTMLOptionElement extends Struct {}

class HTMLOptionElementFactory extends Struct {}

class HTMLWndOptionElement extends Struct {}

class HTMLInputElement extends Struct {}

class HTMLTextAreaElement extends Struct {}

class HTMLRichtextElement extends Struct {}

class HTMLButtonElement extends Struct {}

class HTMLMarqueeElement extends Struct {}

class HTMLHtmlElement extends Struct {}

class HTMLHeadElement extends Struct {}

class HTMLTitleElement extends Struct {}

class HTMLMetaElement extends Struct {}

class HTMLBaseElement extends Struct {}

class HTMLIsIndexElement extends Struct {}

class HTMLNextIdElement extends Struct {}

class HTMLBaseFontElement extends Struct {}

class HTMLUnknownElement extends Struct {}

class HTMLHistory extends Struct {}

class COpsProfile extends Struct {}

class HTMLNavigator extends Struct {}

class HTMLLocation extends Struct {}

class CMimeTypes extends Struct {}

class CPlugins extends Struct {}

class CEventObj extends Struct {}

class HTMLStyleMedia extends Struct {}

class FramesCollection extends Struct {}

class HTMLScreen extends Struct {}

class HTMLWindow2 extends Struct {}

class HTMLWindowProxy extends Struct {}

class HTMLDocumentCompatibleInfo extends Struct {}

class HTMLDocumentCompatibleInfoCollection extends Struct {}

class HTMLDocument extends Struct {}

class Scriptlet extends Struct {}

class HTMLEmbed extends Struct {}

class HTMLAreasCollection extends Struct {}

class HTMLMapElement extends Struct {}

class HTMLAreaElement extends Struct {}

class HTMLTableCaption extends Struct {}

class HTMLCommentElement extends Struct {}

class HTMLPhraseElement extends Struct {}

class HTMLSpanElement extends Struct {}

class HTMLTable extends Struct {}

class HTMLTableCol extends Struct {}

class HTMLTableSection extends Struct {}

class HTMLTableRow extends Struct {}

class HTMLTableCell extends Struct {}

class HTMLScriptElement extends Struct {}

class HTMLNoShowElement extends Struct {}

class HTMLObjectElement extends Struct {}

class HTMLParamElement extends Struct {}

class HTMLFrameBase extends Struct {}

class HTMLFrameElement extends Struct {}

class HTMLIFrame extends Struct {}

class HTMLDivPosition extends Struct {}

class HTMLFieldSetElement extends Struct {}

class HTMLLegendElement extends Struct {}

class HTMLSpanFlow extends Struct {}

class HTMLFrameSetSite extends Struct {}

class HTMLBGsound extends Struct {}

class HTMLStyleElement extends Struct {}

class HTMLStyleFontFace extends Struct {}

class XDomainRequest extends Struct {}

class XDomainRequestFactory extends Struct {}

class HTMLStorage extends Struct {}

class DOMEvent extends Struct {}

class DOMUIEvent extends Struct {}

class DOMMouseEvent extends Struct {}

class DOMDragEvent extends Struct {}

class DOMMouseWheelEvent extends Struct {}

class DOMWheelEvent extends Struct {}

class DOMTextEvent extends Struct {}

class DOMKeyboardEvent extends Struct {}

class DOMCompositionEvent extends Struct {}

class DOMMutationEvent extends Struct {}

class DOMBeforeUnloadEvent extends Struct {}

class DOMFocusEvent extends Struct {}

class DOMCustomEvent extends Struct {}

class CanvasGradient extends Struct {}

class CanvasPattern extends Struct {}

class CanvasTextMetrics extends Struct {}

class CanvasImageData extends Struct {}

class CanvasRenderingContext2D extends Struct {}

class HTMLCanvasElement extends Struct {}

class DOMProgressEvent extends Struct {}

class DOMMessageEvent extends Struct {}

class DOMSiteModeEvent extends Struct {}

class DOMStorageEvent extends Struct {}

class XMLHttpRequestEventTarget extends Struct {}

class HTMLXMLHttpRequest extends Struct {}

class HTMLXMLHttpRequestFactory extends Struct {}

class SVGAngle extends Struct {}

class SVGAnimatedAngle extends Struct {}

class SVGAnimatedTransformList extends Struct {}

class SVGAnimatedBoolean extends Struct {}

class SVGAnimatedEnumeration extends Struct {}

class SVGAnimatedInteger extends Struct {}

class SVGAnimatedLength extends Struct {}

class SVGAnimatedLengthList extends Struct {}

class SVGAnimatedNumber extends Struct {}

class SVGAnimatedNumberList extends Struct {}

class SVGAnimatedRect extends Struct {}

class SVGAnimatedString extends Struct {}

class SVGClipPathElement extends Struct {}

class SVGElement extends Struct {}

class SVGLength extends Struct {}

class SVGLengthList extends Struct {}

class SVGMatrix extends Struct {}

class SVGNumber extends Struct {}

class SVGNumberList extends Struct {}

class SVGPatternElement extends Struct {}

class SVGPathSeg extends Struct {}

class SVGPathSegArcAbs extends Struct {}

class SVGPathSegArcRel extends Struct {}

class SVGPathSegClosePath extends Struct {}

class SVGPathSegMovetoAbs extends Struct {}

class SVGPathSegMovetoRel extends Struct {}

class SVGPathSegLinetoAbs extends Struct {}

class SVGPathSegLinetoRel extends Struct {}

class SVGPathSegCurvetoCubicAbs extends Struct {}

class SVGPathSegCurvetoCubicRel extends Struct {}

class SVGPathSegCurvetoCubicSmoothAbs extends Struct {}

class SVGPathSegCurvetoCubicSmoothRel extends Struct {}

class SVGPathSegCurvetoQuadraticAbs extends Struct {}

class SVGPathSegCurvetoQuadraticRel extends Struct {}

class SVGPathSegCurvetoQuadraticSmoothAbs extends Struct {}

class SVGPathSegCurvetoQuadraticSmoothRel extends Struct {}

class SVGPathSegLinetoHorizontalAbs extends Struct {}

class SVGPathSegLinetoHorizontalRel extends Struct {}

class SVGPathSegLinetoVerticalAbs extends Struct {}

class SVGPathSegLinetoVerticalRel extends Struct {}

class SVGPathSegList extends Struct {}

class SVGPoint extends Struct {}

class SVGPointList extends Struct {}

class SVGRect extends Struct {}

class SVGStringList extends Struct {}

class SVGTransform extends Struct {}

class SVGSVGElement extends Struct {}

class SVGUseElement extends Struct {}

class HTMLStyleSheetRulesAppliedCollection extends Struct {}

class RulesApplied extends Struct {}

class RulesAppliedCollection extends Struct {}

class HTMLW3CComputedStyle extends Struct {}

class SVGTransformList extends Struct {}

class SVGCircleElement extends Struct {}

class SVGEllipseElement extends Struct {}

class SVGLineElement extends Struct {}

class SVGRectElement extends Struct {}

class SVGPolygonElement extends Struct {}

class SVGPolylineElement extends Struct {}

class SVGGElement extends Struct {}

class SVGSymbolElement extends Struct {}

class SVGDefsElement extends Struct {}

class SVGPathElement extends Struct {}

class SVGPreserveAspectRatio extends Struct {}

class SVGTextElement extends Struct {}

class SVGAnimatedPreserveAspectRatio extends Struct {}

class SVGImageElement extends Struct {}

class SVGStopElement extends Struct {}

class SVGGradientElement extends Struct {}

class SVGLinearGradientElement extends Struct {}

class SVGRadialGradientElement extends Struct {}

class SVGMaskElement extends Struct {}

class SVGMarkerElement extends Struct {}

class SVGZoomEvent extends Struct {}

class SVGAElement extends Struct {}

class SVGViewElement extends Struct {}

class HTMLMediaError extends Struct {}

class HTMLTimeRanges extends Struct {}

class HTMLMediaElement extends Struct {}

class HTMLSourceElement extends Struct {}

class HTMLAudioElement extends Struct {}

class HTMLAudioElementFactory extends Struct {}

class HTMLVideoElement extends Struct {}

class SVGSwitchElement extends Struct {}

class SVGDescElement extends Struct {}

class SVGTitleElement extends Struct {}

class SVGMetadataElement extends Struct {}

class SVGElementInstance extends Struct {}

class SVGElementInstanceList extends Struct {}

class DOMException extends Struct {}

class RangeException extends Struct {}

class SVGException extends Struct {}

class EventException extends Struct {}

class SVGScriptElement extends Struct {}

class SVGStyleElement extends Struct {}

class SVGTextContentElement extends Struct {}

class SVGTextPositioningElement extends Struct {}

class DOMDocumentType extends Struct {}

class NodeIterator extends Struct {}

class TreeWalker extends Struct {}

class DOMProcessingInstruction extends Struct {}

class HTMLPerformance extends Struct {}

class HTMLPerformanceNavigation extends Struct {}

class HTMLPerformanceTiming extends Struct {}

class SVGTSpanElement extends Struct {}

class CTemplatePrinter extends Struct {}

class CPrintManagerTemplatePrinter extends Struct {}

class SVGTextPathElement extends Struct {}

class XMLSerializer extends Struct {}

class DOMParser extends Struct {}

class HTMLDOMXmlSerializerFactory extends Struct {}

class DOMParserFactory extends Struct {}

class HTMLSemanticElement extends Struct {}

class HTMLProgressElement extends Struct {}

class DOMMSTransitionEvent extends Struct {}

class DOMMSAnimationEvent extends Struct {}

class WebGeolocation extends Struct {}

class WebGeocoordinates extends Struct {}

class WebGeopositionError extends Struct {}

class WebGeoposition extends Struct {}

class CClientCaps extends Struct {}

class DOMMSManipulationEvent extends Struct {}

class DOMCloseEvent extends Struct {}

class ApplicationCache extends Struct {}

class HtmlDlgSafeHelper extends Struct {}

class BlockFormats extends Struct {}

class FontNames extends Struct {}

class HTMLNamespace extends Struct {}

class HTMLNamespaceCollection extends Struct {}

class ThreadDialogProcParam extends Struct {}

class HTMLDialog extends Struct {}

class HTMLPopup extends Struct {}

class HTMLAppBehavior extends Struct {}

class OldHTMLDocument extends Struct {}

class OldHTMLFormElement extends Struct {}

class HTMLInputButtonElement extends Struct {}

class HTMLInputTextElement extends Struct {}

class HTMLInputFileElement extends Struct {}

class HTMLOptionButtonElement extends Struct {}

class HTMLInputImage extends Struct {}

class HTML_PAINTER_INFO extends Struct {
  @Int32()
  external int lFlags;
  @Int32()
  external int lZOrder;
  external GUID iidDrawObject;
  external RECT rcExpand;
}

class HTML_PAINT_XFORM extends Struct {
  @Float()
  external double eM11;
  @Float()
  external double eM12;
  @Float()
  external double eM21;
  @Float()
  external double eM22;
  @Float()
  external double eDx;
  @Float()
  external double eDy;
}

class HTML_PAINT_DRAW_INFO extends Struct {
  external RECT rcViewport;
  @IntPtr()
  external int hrgnUpdate;
  external HTML_PAINT_XFORM xform;
}
