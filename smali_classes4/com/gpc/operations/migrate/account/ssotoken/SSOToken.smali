.class public Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXOIRES_OFFSET:J = 0x493e0L

.field public static final KEY_ACCESS_KEY:Ljava/lang/String; = "access_key"

.field public static final KEY_CREATE_AT:Ljava/lang/String; = "created_at"

.field public static final KEY_EXPIRES_AT:Ljava/lang/String; = "expires_at"

.field public static final KEY_WEB_SSO_TOKEN:Ljava/lang/String; = "web_sso_token"

.field private static final TAG:Ljava/lang/String; = "SSOToken"


# instance fields
.field private accessKey:Ljava/lang/String;

.field private createAt:J

.field private expiresAt:J

.field private ssoToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->accessKey:Ljava/lang/String;

    return-void
.end method

.method public static createFormJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    invoke-direct {v0, p0}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;-><init>(Ljava/lang/String;)V

    .line 2
    const-string p0, "web_sso_token"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setSsoToken(Ljava/lang/String;)V

    .line 5
    :cond_0
    const-string p0, "sso_token"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setSsoToken(Ljava/lang/String;)V

    .line 8
    :cond_1
    const-string p0, "created_at"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setCreateAt(J)V

    .line 11
    :cond_2
    const-string p0, "expires_at"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setExpiresAt(J)V

    :cond_3
    return-object v0
.end method

.method public static createFormJsonForAccessKeyReponse(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;
    .locals 5

    const-string v0, "expires_at"

    const-string v1, "created_at"

    const-string v2, "token"

    const-string v3, "sso_token"

    .line 1
    :try_start_0
    new-instance v4, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    invoke-direct {v4, p0}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setSsoToken(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setCreateAt(J)V

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v4, p0, p1}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setExpiresAt(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v4

    :catch_0
    move-exception p0

    .line 16
    const-string p1, "SSOToken"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFormPersistenceJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;
    .locals 6

    const-string v0, "expires_at"

    const-string v1, "created_at"

    const-string v2, "web_sso_token"

    const-string v3, "access_key"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 5
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 8
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v5

    .line 10
    :goto_0
    new-instance v3, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;

    invoke-direct {v3, p0}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 12
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setSsoToken(Ljava/lang/String;)V

    .line 14
    :cond_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 15
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setCreateAt(J)V

    .line 17
    :cond_3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 18
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->setExpiresAt(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v3

    :catch_0
    move-exception p0

    .line 23
    const-string v0, "SSOToken"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method


# virtual methods
.method public getCreateAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->createAt:J

    return-wide v0
.end method

.method public getExpiresAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->expiresAt:J

    return-wide v0
.end method

.method public getSsoToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->ssoToken:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->ssoToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SSOToken"

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "SSO Token is null"

    invoke-static {v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    .line 6
    iget-wide v5, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->expiresAt:J

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 7
    const-string v0, "SSO Token is overdued"

    invoke-static {v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setCreateAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->createAt:J

    return-void
.end method

.method public setExpiresAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->expiresAt:J

    return-void
.end method

.method public setSsoToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->ssoToken:Ljava/lang/String;

    return-void
.end method

.method public toPersistenceJson()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "web_sso_token"

    iget-object v2, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->ssoToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string v1, "created_at"

    iget-wide v2, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->createAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 4
    const-string v1, "expires_at"

    iget-wide v2, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->expiresAt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5
    const-string v1, "access_key"

    iget-object v2, p0, Lcom/gpc/operations/migrate/account/ssotoken/SSOToken;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    const-string v1, "SSOToken"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
