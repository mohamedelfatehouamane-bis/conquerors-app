.class public Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/service/AccountServiceAGImpl;->requestBindingProfile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/service/CheckBoundResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/service/CheckBoundResultListener;

.field public final synthetic b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/service/AccountServiceAGImpl;Lcom/gpc/sdk/account/service/CheckBoundResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;->b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;

    iput-object p2, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;->a:Lcom/gpc/sdk/account/service/CheckBoundResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 5

    const-string p3, "data"

    const-string v0, ""

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(member/binding)rawResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountService"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;->a:Lcom/gpc/sdk/account/service/CheckBoundResultListener;

    if-nez v1, :cond_0

    .line 3
    const-string p1, "unset CheckBoundResultListener!"

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;->a:Lcom/gpc/sdk/account/service/CheckBoundResultListener;

    sget-object p3, Lcom/gpc/sdk/error/GPCErrorCodeMaps;->REQUEST_BINDING_PROFILE_CODE_MAP:Ljava/util/Map;

    .line 8
    const-string v0, "111501"

    invoke-static {p1, p3, v0}, Lcom/gpc/sdk/error/GPCException;->createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 9
    invoke-interface {p2, p1, v3}, Lcom/gpc/sdk/account/service/CheckBoundResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 16
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    const-string p2, "error"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "code"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 22
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;->a:Lcom/gpc/sdk/account/service/CheckBoundResultListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/gpc/sdk/account/service/CheckBoundResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;->b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/account/service/AccountServiceAGImpl;->a(I)V

    .line 32
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;->a:Lcom/gpc/sdk/account/service/CheckBoundResultListener;

    const-string p3, "111504"

    const-string v1, "20"

    .line 33
    invoke-static {p3, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 35
    invoke-interface {p1, p2, v3}, Lcom/gpc/sdk/account/service/CheckBoundResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 40
    invoke-static {v2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$b;->a:Lcom/gpc/sdk/account/service/CheckBoundResultListener;

    .line 42
    const-string p2, "111505"

    const-string p3, "10"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 43
    const-string p3, "5001"

    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 44
    invoke-interface {p1, p2, v3}, Lcom/gpc/sdk/account/service/CheckBoundResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
