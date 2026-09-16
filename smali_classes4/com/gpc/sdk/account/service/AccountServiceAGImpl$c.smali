.class public Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/service/AccountServiceAGImpl;->bindToThirdPartyAccount(Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;

.field public final synthetic b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/service/AccountServiceAGImpl;Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;

    iput-object p2, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->a:Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 5

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "(binding/platform)rawResponse:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AccountService"

    invoke-static {v0, p3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->a:Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;

    if-nez p3, :cond_0

    .line 3
    const-string p1, "unset BindResultListener!"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p3

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p3, :cond_1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->a:Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;

    sget-object p3, Lcom/gpc/sdk/error/GPCErrorCodeMaps;->BIND_THIRDPARTY_ACCOUNT_CODE_MAP:Ljava/util/Map;

    .line 8
    const-string v0, "111406"

    invoke-static {p1, p3, v0}, Lcom/gpc/sdk/error/GPCException;->createException(Lcom/gpc/sdk/error/GPCException;Ljava/util/Map;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 9
    invoke-interface {p2, p1, v2, v1}, Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;)V

    return-void

    .line 15
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    const-string p2, "error"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "code"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    .line 18
    iget-object p2, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->a:Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-static {p1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->create(Lorg/json/JSONObject;)Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;

    move-result-object p1

    invoke-interface {p2, p3, v1, p1}, Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    const/16 p3, 0x2fac

    const-string v3, "20"

    if-ne p2, p3, :cond_3

    .line 20
    :try_start_1
    const-string p3, "data"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "bound_user_id"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object p3, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->a:Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;

    const-string v4, "111411"

    .line 22
    invoke-static {v4, v3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 24
    invoke-interface {p3, p2, p1, v1}, Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;)V

    return-void

    .line 28
    :cond_3
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->b:Lcom/gpc/sdk/account/service/AccountServiceAGImpl;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/account/service/AccountServiceAGImpl;->a(I)V

    .line 29
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->a:Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;

    const-string p3, "111409"

    .line 30
    invoke-static {p3, v3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-static {p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 32
    invoke-interface {p1, p2, v2, v1}, Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 37
    invoke-static {v0, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    iget-object p1, p0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl$c;->a:Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;

    .line 39
    const-string p2, "111410"

    const-string p3, "10"

    invoke-static {p2, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 40
    const-string p3, "5001"

    invoke-static {p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 41
    invoke-interface {p1, p2, v2, v1}, Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;)V

    return-void
.end method
