.class public interface abstract Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$PostRequestListener;,
        Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;,
        Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;,
        Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;,
        Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;,
        Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$RequsetListener;,
        Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;
    }
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT_DELAY:I = 0x3a98

.field public static final SO_TIMEOUT_DELAY:I = 0x3a98


# virtual methods
.method public abstract addHTTPInterceptor(Lcom/gpc/operations/migrate/service/network/http/HTTPInterceptor;)V
.end method

.method public abstract downloadFileRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract getRequestWithourRetry(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract headRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$HeadersRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postFileRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract postJSONRequest(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
.end method

.method public abstract postJSONRequest(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$PostRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$PostRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract postRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
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
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method

.method public abstract putFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$FilePostListener;",
            ")",
            "Lcom/gpc/operations/migrate/service/network/http/HTTPCall;"
        }
    .end annotation
.end method
