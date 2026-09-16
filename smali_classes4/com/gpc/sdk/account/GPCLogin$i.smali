.class public Lcom/gpc/sdk/account/GPCLogin$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCLogin;->a(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;

.field public final synthetic b:Lcom/gpc/sdk/account/GPCSession;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;Lcom/gpc/sdk/account/GPCSession;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCLogin$i;->d:Lcom/gpc/sdk/account/GPCLogin;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCLogin$i;->a:Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;

    iput-object p3, p0, Lcom/gpc/sdk/account/GPCLogin$i;->b:Lcom/gpc/sdk/account/GPCSession;

    iput-object p4, p0, Lcom/gpc/sdk/account/GPCLogin$i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "access_token"

    const-string v2, ""

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "GPCLogin"

    if-eqz v3, :cond_0

    .line 2
    const-string v0, " Because the network can not connect, accesskey could not be verified"

    invoke-static {v5, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Lcom/gpc/sdk/account/GPCLogin$i;->a:Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;

    iget-object v2, v1, Lcom/gpc/sdk/account/GPCLogin$i;->b:Lcom/gpc/sdk/account/GPCSession;

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v4, v4, v2}, Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;->onSessionExpired(Lcom/gpc/sdk/error/GPCException;ZZLcom/gpc/sdk/account/GPCSession;)V

    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v6, p3

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v6, "user_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    const-string v6, "lifecycle"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v6, v6, v12

    add-long/2addr v10, v6

    .line 14
    iget-object v6, v1, Lcom/gpc/sdk/account/GPCLogin$i;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 16
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 18
    :cond_1
    const-string v0, "new AccessKey is null."

    invoke-static {v5, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-static {v6, v3}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->createFormJsonForAccessKeyReponse(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    move-result-object v15

    .line 23
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v7

    iget-object v0, v1, Lcom/gpc/sdk/account/GPCLogin$i;->b:Lcom/gpc/sdk/account/GPCSession;

    .line 24
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v8

    iget-object v0, v1, Lcom/gpc/sdk/account/GPCLogin$i;->b:Lcom/gpc/sdk/account/GPCSession;

    .line 27
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->isHasBind()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v3, v1, Lcom/gpc/sdk/account/GPCLogin$i;->b:Lcom/gpc/sdk/account/GPCSession;

    .line 29
    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformAccessKey()Ljava/lang/String;

    move-result-object v13

    iget-object v3, v1, Lcom/gpc/sdk/account/GPCLogin$i;->b:Lcom/gpc/sdk/account/GPCSession;

    .line 30
    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformId()Ljava/lang/String;

    move-result-object v14

    move v11, v0

    move-object v10, v6

    .line 31
    invoke-virtual/range {v7 .. v15}, Lcom/gpc/sdk/account/GPCSessionManager;->quickCreate(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;)Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    .line 42
    const-string v3, "after  accesskey expirtion time have updated,Session fetched from local storage is valid:"

    invoke-static {v5, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v3, v1, Lcom/gpc/sdk/account/GPCLogin$i;->b:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->dumpToLogCat()V

    .line 44
    iget-object v3, v1, Lcom/gpc/sdk/account/GPCLogin$i;->a:Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v6

    invoke-interface {v3, v6, v4, v4, v0}, Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;->onSessionExpired(Lcom/gpc/sdk/error/GPCException;ZZLcom/gpc/sdk/account/GPCSession;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 46
    invoke-static {v5, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
