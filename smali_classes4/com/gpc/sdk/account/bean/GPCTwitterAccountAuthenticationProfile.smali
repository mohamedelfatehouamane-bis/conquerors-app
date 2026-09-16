.class public Lcom/gpc/sdk/account/bean/GPCTwitterAccountAuthenticationProfile;
.super Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;-><init>()V

    return-void
.end method


# virtual methods
.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/bean/GPCTwitterAccountAuthenticationProfile;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/bean/GPCTwitterAccountAuthenticationProfile;->a:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "token"

    invoke-super {p0}, Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "token_secret"

    iget-object v2, p0, Lcom/gpc/sdk/account/bean/GPCTwitterAccountAuthenticationProfile;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    const-string v1, "ThirdPartyAuthorizationProfile"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
