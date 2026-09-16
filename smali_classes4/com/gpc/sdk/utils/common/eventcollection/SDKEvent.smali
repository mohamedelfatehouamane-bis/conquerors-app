.class public final Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private traceId:Ljava/lang/String;

.field private urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final getTraceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    return-object v0
.end method

.method public final sensitiveData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/util/SensitiveUtils;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/util/SensitiveUtils;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/util/SensitiveUtils;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->msg:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/util/SensitiveUtils;->processJWT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/util/SensitiveUtils;->processJWT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/util/SensitiveUtils;->processJWT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->msg:Ljava/lang/String;

    return-void
.end method

.method public final setCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    return-void
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    return-void
.end method

.method public final setException(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    return-void
.end method

.method public final setHTTPCode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    return-void
.end method

.method public final setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->msg:Ljava/lang/String;

    return-void
.end method

.method public final setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->traceId:Ljava/lang/String;

    return-void
.end method

.method public final setURL(Ljava/lang/String;)V
    .locals 1

    const-string v0, "urlStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    return-void
.end method

.method public final setURL(Ljava/net/URL;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    return-void
.end method

.method public final setUrlStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->code:Ljava/lang/String;

    const-string v2, "underlying_error_code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->urlStr:Ljava/lang/String;

    const-string v2, "api_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->msg:Ljava/lang/String;

    const-string v2, "underlying_error_message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEvent;->traceId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "trace_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
