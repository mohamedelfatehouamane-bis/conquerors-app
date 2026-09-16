.class public Lcom/gpc/operations/migrate/service/request/cgi/CGIService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/cgi/ICGIService;


# static fields
.field public static final TAG:Ljava/lang/String; = "CGIService"


# instance fields
.field private service:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/factory/Factory;->serviceFactory()Lcom/gpc/operations/migrate/utils/factory/IServiceFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/factory/IServiceFactory;->createService()Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->service:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/migrate/service/request/cgi/CGIService;Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;ZLcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->parseCGIResponse(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;ZLcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/gpc/operations/migrate/service/request/cgi/CGIService;Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->parseCGIGeneralResponse(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method

.method private getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    const-string p2, "CGIService"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private parseCGIGeneralResponse(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p4, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xc8

    const-string v2, "CGIService"

    if-eq p1, v0, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "The response status code is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "but not HttpStatus.SC_OK"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p1, "6000"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p4, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "5001"

    if-nez p3, :cond_2

    .line 15
    const-string p2, "Can not read response content"

    invoke-static {v2, p2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p4, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x20

    if-ge p2, v0, :cond_3

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The length of response content is invalid. Actual length is: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {v2, p2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p4, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "CGIGeneralPostRequest result:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p4, p2, v0, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 35
    const-string v0, ""

    invoke-static {v2, v0, p2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p4, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private parseCGIResponse(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;ZLcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "CGIPostRequest failed responseString:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "CGIPostRequest"

    invoke-static {p4, p2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {p5, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xc8

    const-string v2, "CGIService"

    if-eq p1, v0, :cond_1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "The response status code is "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "but not HttpStatus.SC_OK"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p1, "6000"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p5, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 16
    const-string p1, "Can not read response content"

    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string p1, "5000"

    invoke-static {p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p5, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "5001"

    const/16 v0, 0x20

    if-ge p1, v0, :cond_3

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "The length of response content is invalid. Actual length is: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {v2, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p5, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "result:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "result"

    if-eqz p4, :cond_4

    .line 35
    :try_start_1
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p4

    invoke-direct {p0, v3, v0}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p5, p4, v0, p1}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_4
    invoke-direct {p0, v3, v0}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 40
    const-string v0, "0"

    invoke-direct {p0, v0, p4}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p4

    goto :goto_0

    :cond_5
    move-object p4, v1

    .line 42
    :goto_0
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p5, v0, p4, p1}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 45
    const-string p4, ""

    invoke-static {v2, p4, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-static {p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p5, p1, v1, p3}, Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;->onCGIRequestFinished(Lcom/gpc/operations/migrate/error/GPCException;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->service:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$d;

    invoke-direct {v6, p0, p6}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$d;-><init>(Lcom/gpc/operations/migrate/service/request/cgi/CGIService;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    move v0, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->service:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    move-object v1, p7

    new-instance p7, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$a;

    invoke-direct {p7, p0, v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$a;-><init>(Lcom/gpc/operations/migrate/service/request/cgi/CGIService;ZLcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    invoke-interface/range {p1 .. p7}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    const/16 v3, 0x3a98

    const/16 v4, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->get(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    const/16 v4, 0x3a98

    const/4 v5, 0x0

    const/16 v3, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->get(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method

.method public getWithUnflatStruct(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->get(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->service:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    new-instance v6, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$c;

    invoke-direct {v6, p0, p6}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$c;-><init>(Lcom/gpc/operations/migrate/service/request/cgi/CGIService;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    move v0, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->service:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;

    move-object v1, p7

    new-instance p7, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;

    invoke-direct {p7, p0, v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService$b;-><init>(Lcom/gpc/operations/migrate/service/request/cgi/CGIService;ZLcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    invoke-interface/range {p1 .. p7}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    const/16 v3, 0x3a98

    const/16 v4, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->post(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method

.method public post(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    const/16 v4, 0x3a98

    const/4 v5, 0x0

    const/16 v3, 0x3a98

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->post(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method

.method public postWithFlatStruct(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;",
            "Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/gpc/operations/migrate/service/request/cgi/CGIService;->post(Ljava/lang/String;Ljava/util/HashMap;IIZLcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/operations/migrate/service/request/cgi/CGIRequestListener;)V

    return-void
.end method
