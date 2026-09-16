.class public Lcom/gpc/sdk/account/GPCLogin$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCLogin;->loginWithThirdPartyAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCLoginListener;

.field public final synthetic b:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$d;->b:Lcom/gpc/sdk/account/GPCLogin;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$d;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 4

    const-string p3, ""

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(access_token/platform)rawResponse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCLogin"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin$d;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    if-nez v0, :cond_0

    .line 3
    const-string p1, "unset LoginListener!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$d;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    sget-object p3, Lcom/gpc/sdk/error/GPCErrorCodeMaps;->THIRD_PARTY_ACCOUNT_LOGIN_CODE_MAP:Ljava/util/Map;

    .line 8
    const-string v0, "110401"

    invoke-static {p1, p3, v0}, Lcom/gpc/sdk/error/GPCException;->createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 9
    invoke-interface {p2, p1, v2}, Lcom/gpc/sdk/account/GPCLoginListener;->onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V

    return-void

    .line 17
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    const-string p2, "error"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    .line 20
    iget-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$d;->b:Lcom/gpc/sdk/account/GPCLogin;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/gpc/sdk/account/GPCLogin;->a(Lcom/gpc/sdk/account/GPCLogin;Lorg/json/JSONObject;Z)Lcom/gpc/sdk/account/GPCSession;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$d;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/account/GPCLoginListener;->onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V

    return-void

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$d;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    const-string v0, "110404"

    const-string v3, "20"

    .line 24
    invoke-static {v0, v3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 27
    invoke-interface {p1, p2, v2}, Lcom/gpc/sdk/account/GPCLoginListener;->onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 34
    invoke-static {v1, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$d;->a:Lcom/gpc/sdk/account/GPCLoginListener;

    .line 36
    const-string p2, "110405"

    const-string p3, "10"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 39
    const-string p3, "5001"

    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    .line 40
    invoke-virtual {p2, p3}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 41
    invoke-interface {p1, p2, v2}, Lcom/gpc/sdk/account/GPCLoginListener;->onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V

    return-void
.end method
