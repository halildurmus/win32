#include "windows.h"
#include "Shobjidl.h"
#include "Wbemidl.h"

// vtable_start 3
MIDL_INTERFACE("9556dc99-828c-11cf-a37e-00aa003240c7")
IWbemServices : public IUnknown
{
public:
    virtual HRESULT STDMETHODCALLTYPE OpenNamespace( 
        /* [in] */ __RPC__in const BSTR strNamespace,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemServices **ppWorkingNamespace,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemCallResult **ppResult) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CancelAsyncCall( 
        /* [in] */ __RPC__in_opt IWbemObjectSink *pSink) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE QueryObjectSink( 
        /* [in] */ long lFlags,
        /* [out] */ __RPC__deref_out_opt IWbemObjectSink **ppResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetObject( 
        /* [in] */ __RPC__in const BSTR strObjectPath,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemClassObject **ppObject,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemCallResult **ppCallResult) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE GetObjectAsync( 
        /* [in] */ __RPC__in const BSTR strObjectPath,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE PutClass( 
        /* [in] */ __RPC__in_opt IWbemClassObject *pObject,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemCallResult **ppCallResult) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE PutClassAsync( 
        /* [in] */ __RPC__in_opt IWbemClassObject *pObject,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE DeleteClass( 
        /* [in] */ __RPC__in const BSTR strClass,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemCallResult **ppCallResult) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE DeleteClassAsync( 
        /* [in] */ __RPC__in const BSTR strClass,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CreateClassEnum( 
        /* [in] */ __RPC__in const BSTR strSuperclass,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [out] */ __RPC__deref_out_opt IEnumWbemClassObject **ppEnum) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CreateClassEnumAsync( 
        /* [in] */ __RPC__in const BSTR strSuperclass,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE PutInstance( 
        /* [in] */ __RPC__in_opt IWbemClassObject *pInst,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemCallResult **ppCallResult) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE PutInstanceAsync( 
        /* [in] */ __RPC__in_opt IWbemClassObject *pInst,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE DeleteInstance( 
        /* [in] */ __RPC__in const BSTR strObjectPath,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemCallResult **ppCallResult) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE DeleteInstanceAsync( 
        /* [in] */ __RPC__in const BSTR strObjectPath,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CreateInstanceEnum( 
        /* [in] */ __RPC__in const BSTR strFilter,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [out] */ __RPC__deref_out_opt IEnumWbemClassObject **ppEnum) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE CreateInstanceEnumAsync( 
        /* [in] */ __RPC__in const BSTR strFilter,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ExecQuery( 
        /* [in] */ __RPC__in const BSTR strQueryLanguage,
        /* [in] */ __RPC__in const BSTR strQuery,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [out] */ __RPC__deref_out_opt IEnumWbemClassObject **ppEnum) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ExecQueryAsync( 
        /* [in] */ __RPC__in const BSTR strQueryLanguage,
        /* [in] */ __RPC__in const BSTR strQuery,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ExecNotificationQuery( 
        /* [in] */ __RPC__in const BSTR strQueryLanguage,
        /* [in] */ __RPC__in const BSTR strQuery,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [out] */ __RPC__deref_out_opt IEnumWbemClassObject **ppEnum) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ExecNotificationQueryAsync( 
        /* [in] */ __RPC__in const BSTR strQueryLanguage,
        /* [in] */ __RPC__in const BSTR strQuery,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ExecMethod( 
        /* [in] */ __RPC__in const BSTR strObjectPath,
        /* [in] */ __RPC__in const BSTR strMethodName,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemClassObject *pInParams,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemClassObject **ppOutParams,
        /* [unique][in][out] */ __RPC__deref_opt_inout_opt IWbemCallResult **ppCallResult) = 0;
    
    virtual HRESULT STDMETHODCALLTYPE ExecMethodAsync( 
        /* [in] */ __RPC__in const BSTR strObjectPath,
        /* [in] */ __RPC__in const BSTR strMethodName,
        /* [in] */ long lFlags,
        /* [in] */ __RPC__in_opt IWbemContext *pCtx,
        /* [in] */ __RPC__in_opt IWbemClassObject *pInParams,
        /* [in] */ __RPC__in_opt IWbemObjectSink *pResponseHandler) = 0;
    
};
