import 'version.dart';

class ComProperty {
  final String interface;
  final String property;

  const ComProperty(this.interface, this.property);
}

const falseProperties = win32Version == 3
    ? <ComProperty>[
        ComProperty('IRealTimeStylus', 'get_WindowInputRectangle'),
        ComProperty('IDynamicRenderer', 'get_ClipRectangle'),
        ComProperty('ISWbemQualifier', 'get_Value'),
        ComProperty('ISWbemProperty', 'get_Value'),
        ComProperty('ISWbemNamedValue', 'get_Value'),
        ComProperty('ISideShowNotification', 'get_ExpirationTime'),
        ComProperty('IContactAggregationGroup', 'get_GlobalObjectId'),
        ComProperty('IEventProperty', 'get_Value'),
        ComProperty('ITuningSpace', 'get_NetworkType'),
        ComProperty('ITuningSpace', 'get__NetworkType'),
        ComProperty('IPrintSchemaParameterInitializer', 'get_Value'),
        ComProperty('IMSVidVideoRenderer2', 'get__Allocator'),
        ComProperty('IMSVidVideoRenderer', 'get_CustomCompositorClass'),
        ComProperty('IMSVidVideoRenderer', 'get_MixerBitmap'),
        ComProperty('IMSVidVideoRenderer', 'get__CustomCompositorClass'),
        ComProperty('IMSVidVideoRenderer', 'get__MixerBitmap'),
        ComProperty('IMSVidFilePlayback2', 'put___SourceFilter'),
        ComProperty('IMSVidStreamBufferSink3', 'get__AudioAnalysisFilter'),
        ComProperty('IMSVidStreamBufferSink3', 'get__VideoAnalysisFilter'),
        ComProperty('IMSVidStreamBufferSink3', 'get__DataAnalysisFilter'),
        ComProperty('IMSVidDevice', 'get__Category'),
        ComProperty('IMSVidDevice', 'get__ClassID'),
        ComProperty('IBDA_DigitalDemodulator3', 'get_SignalTimeouts'),
        ComProperty('IBDA_DigitalDemodulator3', 'get_PLPNumber'),
        ComProperty('IEventObjectCollection', 'get__NewEnum'),
        ComProperty('IComponentType', 'get_MediaType'),
        ComProperty('IComponentType', 'get_MediaMajorType'),
        ComProperty('IComponentType', 'get_MediaSubType'),
        ComProperty('IComponentType', 'get_MediaFormatType'),
        ComProperty('IComponentType', 'get__MediaMajorType'),
        ComProperty('IComponentType', 'get__MediaSubType'),
        ComProperty('IComponentType', 'get__MediaFormatType'),
        ComProperty('IBDA_DigitalDemodulator2', 'get_Pilot'),
        ComProperty('IBDA_DigitalDemodulator2', 'get_RollOff'),
        ComProperty('IBDA_DigitalDemodulator2', 'get_GuardInterval'),
        ComProperty('IBDA_DigitalDemodulator2', 'get_TransmissionMode'),
        ComProperty('IBDA_DigitalDemodulator', 'get_ModulationType'),
        ComProperty('IBDA_DigitalDemodulator', 'get_InnerFECMethod'),
        ComProperty('IBDA_DigitalDemodulator', 'get_InnerFECRate'),
        ComProperty('IBDA_DigitalDemodulator', 'get_OuterFECMethod'),
        ComProperty('IBDA_DigitalDemodulator', 'get_OuterFECRate'),
        ComProperty('IBDA_DigitalDemodulator', 'get_SymbolRate'),
        ComProperty('IBDA_DigitalDemodulator', 'get_SpectralInversion'),
        ComProperty('IXMLDOMNode', 'get_dataType'),
      ]
    : <ComProperty>[];
