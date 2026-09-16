.class public Lcom/gpc/sdk/account/GPCLogin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;,
        Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;,
        Lcom/gpc/sdk/account/GPCLogin$GPCCheckAllowChangeMobilePhoneNumberListener;
    }
.end annotation


# static fields
.field public static ACCESS_KEY_EXPIRED_IN:I = 0x278d00

.field public static final d:Ljava/lang/String; = "GPCLogin"


# instance fields
.field public a:Lcom/gpc/sdk/account/service/AccountService;

.field public b:Landroid/content/Context;

.field public c:Lcom/gpc/sdk/account/GPCLoginDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getAccountService()Lcom/gpc/sdk/account/service/AccountService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/account/GPCLogin;->a:Lcom/gpc/sdk/account/service/AccountService;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    const-string v0, "session_has_been_expired"

    invoke-virtual {p1, v0, p0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/GPCLogin;Lorg/json/JSONObject;Z)Lcom/gpc/sdk/account/GPCSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/account/GPCLogin;->a(Lorg/json/JSONObject;Z)Lcom/gpc/sdk/account/GPCSession;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/GPCLogin;->a(Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Z)Lcom/gpc/sdk/account/GPCSession;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 17
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    const-string v0, "token_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "lifecycle"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    add-long/2addr v5, v7

    .line 23
    const-string v2, "key"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 25
    invoke-static {v4, p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;->createFormJsonForAccessKeyReponse(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;

    move-result-object v9

    .line 27
    new-instance p1, Lcom/gpc/sdk/notification/GPCNotification;

    const-string v0, "new_user_login"

    invoke-direct {p1, v0}, Lcom/gpc/sdk/notification/GPCNotification;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->postNotification(Lcom/gpc/sdk/notification/GPCNotification;)V

    move-object p1, v1

    .line 30
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-static {p1}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getInstanceFromTypeName(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/gpc/sdk/account/GPCSessionManager;->quickCreate(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/ssotoken/GPCSSOToken;Z)Lcom/gpc/sdk/account/GPCSession;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 3

    .line 3
    :try_start_0
    new-instance v0, Lcom/gpc/sdk/account/GPCLogin$b;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/account/GPCLogin$b;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/GPCLogin;->checkDeviceHasBind(Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    const-string v1, "GPCLogin"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    const-string v0, "10"

    const/16 v1, 0x3e9

    const-string v2, "110101"

    invoke-static {v2, v0, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/account/GPCLoginListener;->onLoginFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/account/GPCSession;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "=>"

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    const-string v5, ""

    .line 31
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 32
    const-string v6, "Session fetched from local storage is valid:"

    const-string v8, "GPCLogin"

    invoke-static {v8, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->dumpToLogCat()V

    .line 36
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getTimeToVerify()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v9

    .line 42
    :try_start_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, "1"

    if-nez v10, :cond_2

    .line 43
    :try_start_1
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 44
    new-instance v12, Ljava/text/SimpleDateFormat;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v12, v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v12, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 46
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v16, v8

    :try_start_2
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v8, v16

    :try_start_3
    invoke-static {v8, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v4, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v12, v3, v6

    if-ltz v12, :cond_0

    .line 50
    const-string v3, "The current time is greater than the period of time"

    invoke-static {v8, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "111906"

    const-string v4, "10"

    invoke-static {v3, v4}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    const-string v4, "7000"

    .line 52
    invoke-static {v4}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v15, 0x0

    .line 53
    invoke-interface {v2, v3, v4, v15, v0}, Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;->onSessionExpired(Lcom/gpc/sdk/error/GPCException;ZZLcom/gpc/sdk/account/GPCSession;)V

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/gpc/sdk/account/GPCSessionManager;->shouldRefreshSession(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    const-string v3, "Local seesion normal, not expired"

    invoke-static {v8, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    const/4 v15, 0x0

    invoke-interface {v2, v3, v15, v15, v0}, Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;->onSessionExpired(Lcom/gpc/sdk/error/GPCException;ZZLcom/gpc/sdk/account/GPCSession;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v8, v16

    goto :goto_3

    .line 66
    :cond_2
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 68
    const-string v3, "Local effective time is empty, Session accessKey is not empty"

    invoke-static {v8, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v3, v11

    goto :goto_2

    .line 71
    :cond_3
    const-string v3, "No Local seesion"

    invoke-static {v8, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    const/4 v15, 0x0

    invoke-interface {v2, v3, v15, v15, v0}, Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;->onSessionExpired(Lcom/gpc/sdk/error/GPCException;ZZLcom/gpc/sdk/account/GPCSession;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 76
    :goto_1
    const-string v3, "0"

    :goto_2
    :try_start_4
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const-string v3, "\u7eed\u671f"

    invoke-static {v8, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v3, v1, Lcom/gpc/sdk/account/GPCLogin;->a:Lcom/gpc/sdk/account/service/AccountService;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/gpc/sdk/account/GPCLogin$i;

    invoke-direct {v6, v1, v2, v0, v9}, Lcom/gpc/sdk/account/GPCLogin$i;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;Lcom/gpc/sdk/account/GPCSession;Ljava/lang/String;)V

    invoke-interface {v3, v4, v6}, Lcom/gpc/sdk/account/service/AccountService;->requestVerifyAccessKey(Ljava/lang/String;Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;)V
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 125
    :goto_3
    invoke-static {v8, v5, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void

    .line 128
    :cond_5
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v3

    const/4 v15, 0x0

    invoke-interface {v2, v3, v15, v15, v0}, Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;->onSessionExpired(Lcom/gpc/sdk/error/GPCException;ZZLcom/gpc/sdk/account/GPCSession;)V

    return-void
.end method

.method public checkDeviceHasBind(Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->a:Lcom/gpc/sdk/account/service/AccountService;

    new-instance v1, Lcom/gpc/sdk/account/GPCLogin$g;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/account/GPCLogin$g;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/service/AccountService;->checkDeviceHasBind(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V

    return-void
.end method

.method public checkThirdPartyAccountHasBind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->a:Lcom/gpc/sdk/account/service/AccountService;

    new-instance v1, Lcom/gpc/sdk/account/GPCLogin$h;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/account/GPCLogin$h;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLogin$GPCCheckAccountBindStateListener;)V

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/account/service/AccountService;->checkThirdPartyAccountHasBind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V

    return-void
.end method

.method public createAndLoginWithDevice(Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->a:Lcom/gpc/sdk/account/service/AccountService;

    new-instance v1, Lcom/gpc/sdk/account/GPCLogin$e;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/account/GPCLogin$e;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/service/AccountService;->createAndLoginWithDevice(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V

    return-void
.end method

.method public createAndLoginWithThirdPartyAuthorization(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->a:Lcom/gpc/sdk/account/service/AccountService;

    new-instance v1, Lcom/gpc/sdk/account/GPCLogin$f;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/account/GPCLogin$f;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/account/service/AccountService;->createAndLoginWithThirdPartyAuthorization(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V

    return-void
.end method

.method public loginAsGuest(Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->a:Lcom/gpc/sdk/account/service/AccountService;

    new-instance v1, Lcom/gpc/sdk/account/GPCLogin$c;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/account/GPCLogin$c;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/service/AccountService;->loginAsGuest(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V

    return-void
.end method

.method public loginWithThirdPartyAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->a:Lcom/gpc/sdk/account/service/AccountService;

    new-instance v1, Lcom/gpc/sdk/account/GPCLogin$d;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/account/GPCLogin$d;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/account/service/AccountService;->loginWithThirdPartyAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V

    return-void
.end method

.method public declared-synchronized notifySessionExpired(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->c:Lcom/gpc/sdk/account/GPCLoginDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/sdk/account/GPCLoginDelegate;->onSessionExpired(Lcom/gpc/sdk/account/GPCSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->c:Lcom/gpc/sdk/account/GPCLoginDelegate;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/gpc/sdk/account/GPCSession;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->c:Lcom/gpc/sdk/account/GPCLoginDelegate;

    invoke-virtual {p1}, Lcom/gpc/sdk/notification/GPCNotification;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/account/GPCSession;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/account/GPCLoginDelegate;->onSessionExpired(Lcom/gpc/sdk/account/GPCSession;)V

    return-void

    .line 5
    :cond_0
    const-string p1, "GPCLogin"

    const-string v0, "notification object is not a Session!!"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized setLoginDelegate(Lcom/gpc/sdk/account/GPCLoginDelegate;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCLogin;->c:Lcom/gpc/sdk/account/GPCLoginDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start(Lcom/gpc/sdk/account/GPCLoginListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCLogin;->c:Lcom/gpc/sdk/account/GPCLoginDelegate;

    if-eqz v0, :cond_1

    .line 5
    const-string v0, "Start to parse crypto config if need"

    const-string v1, "GPCLogin"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->shareInstance()Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->parseCryptoConfigIfNeed()V

    .line 9
    const-string v0, "Attempt to restore session from local storage"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->restoreAsCurrent()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    const-string v2, "Session fetched from local storage is valid:"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->dumpToLogCat()V

    .line 18
    new-instance v1, Lcom/gpc/sdk/account/GPCLogin$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/account/GPCLogin$a;-><init>(Lcom/gpc/sdk/account/GPCLogin;Lcom/gpc/sdk/account/GPCLoginListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/gpc/sdk/account/GPCLogin;->a(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCLogin$GPCSessionListener;)V

    return-void

    .line 36
    :cond_0
    const-string v0, "Session fetched from local storage is valid. Trying to start as guest with device identifier"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/GPCLogin;->a(Lcom/gpc/sdk/account/GPCLoginListener;)V

    return-void

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "loginDelegate is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
