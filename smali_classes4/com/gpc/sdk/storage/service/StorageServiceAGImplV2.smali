.class public Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/storage/service/StorageServiceV2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;,
        Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$e;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "StorageServiceAGImplV2"


# instance fields
.field public final a:Lcom/gpc/util/LocalStorage;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "storage_v2_token_info"

    iput-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->b:Ljava/lang/String;

    const/16 v0, 0xe10

    .line 4
    iput v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->c:I

    .line 10
    new-instance v0, Lcom/gpc/util/LocalStorage;

    .line 11
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "storage_v2_status"

    invoke-direct {v0, v1, v2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a:Lcom/gpc/util/LocalStorage;

    .line 13
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    const-string v1, "game-storage"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getGeneralUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->d:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    const-string v1, "statics-global"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getStaticsUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-string v1, "StorageServiceAGImplV2"

    const-string v2, "[getAccessTokenFromCache] token: "

    .line 20
    const-string v3, "storage_v2_token_info"

    invoke-virtual {p0, v3}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    iget-object v4, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v4, v3}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v3, "token"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    const-string v5, "expires_at"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0xe10

    add-long/2addr v6, v8

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 27
    const-string v2, "[getAccessTokenFromCache] token is expired."

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 30
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expiresAt: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 33
    const-string v3, "[getAccessTokenFromCache] error."

    invoke-static {v1, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 39
    const-string p1, "never_expires"

    return-object p1

    .line 40
    :cond_0
    sget-object v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->THREE_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    const-string v1, "expires_in_3_days"

    if-ne p1, v0, :cond_1

    return-object v1

    .line 43
    :cond_1
    sget-object v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->EIGHT_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    if-ne p1, v0, :cond_2

    .line 44
    const-string p1, "expires_in_8_days"

    return-object p1

    .line 46
    :cond_2
    sget-object v0, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;->THIRTY_DAYS:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;

    if-ne p1, v0, :cond_3

    .line 47
    const-string p1, "expires_in_30_days"

    return-object p1

    :cond_3
    return-object v1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 35
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const-string p1, "%s_%s_%s"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getKeyWithUserInfo result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageServiceAGImplV2"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 5

    const-string v0, "StorageServiceAGImplV2"

    const-string v1, "[writeTokenToCache] token: "

    .line 11
    const-string v2, "storage_v2_token_info"

    invoke-virtual {p0, v2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 14
    :try_start_0
    const-string v4, "token"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v4, "expires_at"

    invoke-virtual {v3, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expiresAt: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 19
    const-string p2, "[writeTokenToCache] error."

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V
    .locals 7

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;->getRealFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    const-string p1, "StorageServiceAGImplV2"

    const-string p2, "file not exist."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string p1, "400506"

    const-string p2, "20"

    invoke-static {p1, p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$c;-><init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V

    const-string p1, "TAG_STORAGE"

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 2
    const-string v0, "storage_v2_token_info"

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v1, v0}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string v0, "token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    const-string v1, "StorageServiceAGImplV2"

    const-string v2, "[getTokenFromCache] error."

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    const-string v0, ""

    return-object v0
.end method

.method public getToken(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-string v1, "StorageServiceAGImplV2"

    const-string v2, "[getToken] token is success."

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;->onCompleted(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;

    const-string v2, "/storage/game/c/get_token"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestAGBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 13
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$a;-><init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 68
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceCall()Lcom/gpc/sdk/service/request/prefixe/IServiceCall;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCall;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public prepareAndUpload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$d;-><init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/listener/GPCCDNPrepareAndUploaderListenerV2;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->getToken(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;)V

    return-void
.end method

.method public upload(Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$b;-><init>(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListenerV2;Lcom/gpc/sdk/storage/bean/GPCStorageFileV2;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTimeV2;)V

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2;->getToken(Lcom/gpc/sdk/storage/service/StorageServiceAGImplV2$OnGetTokenListener;)V

    return-void
.end method
