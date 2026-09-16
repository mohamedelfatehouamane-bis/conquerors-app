.class public Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/service/AccountServiceAGImpl;->requestVerifyAccessKey(Ljava/lang/String;Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;

.field public final synthetic b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/service/AccountServiceAGImpl;Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;->b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;

    iput-object p2, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 5

    const-string p3, ""

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(access_token)rawResponse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountService"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;

    if-nez v0, :cond_0

    .line 3
    const-string p1, "unset VerifyAccessKeyListener!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;

    sget-object p3, Lcom/gpc/sdk/error/GPCErrorCodeMaps;->REQUEST_VERIFY_ACCESS_KEY_CODE_MAP:Ljava/util/Map;

    .line 8
    const-string v0, "111901"

    invoke-static {p1, p3, v0}, Lcom/gpc/sdk/error/GPCException;->createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 9
    invoke-interface {p2, p1, v3, v2}, Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

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

    const-string v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    .line 19
    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {p2, v0, v4, p1}, Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

    return-void

    :cond_2
    const/16 p1, 0x38e

    if-ne p2, p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;->b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/account/service/AccountServiceAGImpl;->a(I)V

    return-void

    .line 26
    :cond_3
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;

    const-string v0, "111904"

    const-string v4, "20"

    .line 27
    invoke-static {v0, v4}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 30
    invoke-interface {p1, p2, v3, v2}, Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    invoke-static {v1, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$a;->a:Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;

    .line 39
    const-string p2, "111905"

    const-string p3, "10"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 41
    const-string p3, "5001"

    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 42
    invoke-interface {p1, p2, v3, v2}, Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V

    return-void
.end method
