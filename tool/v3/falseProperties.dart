class ComFalseProperty {
  final String interface;
  final String property;

  const ComFalseProperty(this.interface, this.property);
}

const falseProperties = <ComFalseProperty>[
  ComFalseProperty('IRealTimeStylus', 'get_WindowInputRectangle'),
  ComFalseProperty('IDynamicRenderer', 'get_ClipRectangle'),
  ComFalseProperty('ISWbemQualifier', 'get_Value'),
  ComFalseProperty('ISWbemProperty', 'get_Value'),
  ComFalseProperty('ISWbemNamedValue', 'get_Value'),
  ComFalseProperty('ISideShowNotification', 'get_ExpirationTime'),
  ComFalseProperty('IContactAggregationGroup', 'get_GlobalObjectId'),
  ComFalseProperty('IEventProperty', 'get_Value'),
  ComFalseProperty('ITuningSpace', 'get_NetworkType'),
  ComFalseProperty('IMSVidVideoRenderer', 'get_CustomCompositorClass'),
  ComFalseProperty('IMSVidVideoRenderer', 'get_MixerBitmap'),
  ComFalseProperty('IComponentType', 'get_MediaType'),
  ComFalseProperty('IComponentType', 'get_MediaMajorType'),
  ComFalseProperty('IComponentType', 'get_MediaSubType'),
  ComFalseProperty('IComponentType', 'get_MediaFormatType'),
  ComFalseProperty('IBDA_DigitalDemodulator', 'get_ModulationType'),
  ComFalseProperty('IBDA_DigitalDemodulator', 'get_InnerFECMethod'),
  ComFalseProperty('IBDA_DigitalDemodulator', 'get_InnerFECRate'),
  ComFalseProperty('IBDA_DigitalDemodulator', 'get_OuterFECMethod'),
  ComFalseProperty('IBDA_DigitalDemodulator', 'get_OuterFECRate'),
  ComFalseProperty('IBDA_DigitalDemodulator', 'get_SymbolRate'),
  ComFalseProperty('IBDA_DigitalDemodulator', 'get_SpectralInversion'),
  ComFalseProperty('IXMLDOMNode', 'get_dataType'),
];
