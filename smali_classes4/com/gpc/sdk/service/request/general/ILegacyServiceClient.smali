.class public interface abstract Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;,
        Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;,
        Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;,
        Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;,
        Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;,
        Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$RequsetListener;,
        Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;,
        Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT_DELAY:I = 0x3a98

.field public static final SO_TIMEOUT_DELAY:I = 0x3a98


# virtual methods
.method public abstract addHTTPInterceptor(Lcom/gpc/sdk/service/network/http/HTTPInterceptor;)V
.end method

.method public abstract downloadFileRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$DownloadRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/HTTPRetryStrategy;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequestWithCache(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/HTTPRetryStrategy;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getRequestWithourRetry(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postFileRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract postJSONRequest(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
.end method

.method public abstract postJSONRequest(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$PostRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;I",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract putFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$FilePostListener;",
            ")",
            "Lcom/gpc/sdk/service/network/http/HTTPCall;"
        }
    .end annotation
.end method
