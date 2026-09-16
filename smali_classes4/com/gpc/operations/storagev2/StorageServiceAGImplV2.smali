.class public Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/storagev2/IStorageServiceV2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageServiceAGImplV2"


# instance fields
.field private final DELTA:I

.field private final KEY_STORAGE_V2_TOKEN_INFO:Ljava/lang/String;

.field private final gameStorageDomain:Ljava/lang/String;

.field private final staticsGlobalDomain:Ljava/lang/String;

.field private final storage:Lcom/gpc/operations/migrate/utils/LocalStorage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "storage_v2_token_info"

    iput-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->KEY_STORAGE_V2_TOKEN_INFO:Ljava/lang/String;

    const/16 v0, 0xe10

    .line 4
    iput v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->DELTA:I

    .line 10
    new-instance v0, Lcom/gpc/operations/migrate/utils/LocalStorage;

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ops_storage_v2_status"

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/migrate/utils/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->storage:Lcom/gpc/operations/migrate/utils/LocalStorage;

    .line 11
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getFamilyUrlManager()Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    move-result-object v0

    const-string v1, "game-storage"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->getGeneralUrl(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->gameStorageDomain:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getFamilyUrlManager()Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;

    move-result-object v0

    const-string v1, "statics-global"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->getStaticsUrl(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->staticsGlobalDomain:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->handleTokenErrorResponse(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->writeTokenInfoToCache(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic access$200(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->gameStorageDomain:Ljava/lang/String;

    return-object p0
.end method

.method private getAccessTokenFromCache()Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-string v1, "StorageServiceAGImplV2"

    const-string v2, "[getAccessTokenFromCache] token: "

    .line 1
    const-string v3, "storage_v2_token_info"

    invoke-direct {p0, v3}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->getKeyWithUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v4, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->storage:Lcom/gpc/operations/migrate/utils/LocalStorage;

    invoke-virtual {v4, v3}, Lcom/gpc/operations/migrate/utils/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v3, "token"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    const-string v5, "expires_at"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0xe10

    add-long/2addr v6, v8

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 8
    const-string v2, "[getAccessTokenFromCache] token is expired."

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expiresAt: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 14
    const-string v3, "[getAccessTokenFromCache] error."

    invoke-static {v1, v3, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getKeyWithUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 3
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

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getKeyWithUserInfo result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageServiceAGImplV2"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getTokenFromCache()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "storage_v2_token_info"

    invoke-direct {p0, v0}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->getKeyWithUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->storage:Lcom/gpc/operations/migrate/utils/LocalStorage;

    invoke-virtual {v1, v0}, Lcom/gpc/operations/migrate/utils/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v0, "token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    const-string v1, "StorageServiceAGImplV2"

    const-string v2, "[getTokenFromCache] error."

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const-string v0, ""

    return-object v0
.end method

.method private handleTokenErrorResponse(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->getTokenFromCache()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-string p1, "StorageServiceAGImplV2"

    const-string v1, "get token from cache."

    invoke-static {p1, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;->onCompleted(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;->onCompleted(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void
.end method

.method private uploadInner(Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string p1, "StorageServiceAGImplV2"

    const-string v0, "file not exist."

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/gpc/operations/storagev2/error/StorageError;->STORAGE_V2_UPLOAD_ERROR_FOR_FILE_IO:Ljava/lang/String;

    const-string v0, "20"

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;->onFailure(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$b;-><init>(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getSSOTokenForWeb(Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V

    return-void
.end method

.method private writeTokenInfoToCache(Ljava/lang/String;J)V
    .locals 5

    const-string v0, "StorageServiceAGImplV2"

    const-string v1, "[writeTokenToCache] token: "

    .line 1
    const-string v2, "storage_v2_token_info"

    invoke-direct {p0, v2}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->getKeyWithUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v4, "token"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v4, "expires_at"

    invoke-virtual {v3, v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", expiresAt: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->storage:Lcom/gpc/operations/migrate/utils/LocalStorage;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/gpc/operations/migrate/utils/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    const-string p2, "[writeTokenToCache] error."

    invoke-static {v0, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getToken(Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V
    .locals 4

    const-string v0, "StorageServiceAGImplV2"

    if-nez p1, :cond_0

    .line 1
    const-string p1, "listener is null."

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->getAccessTokenFromCache()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    const-string v2, "[getToken] token is success."

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;->onCompleted(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/ServiceFactoryModule;->getHTTPService()Lcom/gpc/operations/migrate/service/request/api/HTTPService;

    move-result-object v1

    .line 15
    new-instance v2, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;

    invoke-direct {v2, p0, p1}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2$a;-><init>(Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;Lcom/gpc/operations/storagev2/listener/StorageGetTokenListener;)V

    const-string p1, "/storage/game/c/get_token"

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v0, v2}, Lcom/gpc/operations/migrate/service/request/api/HTTPService;->post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/migrate/service/request/api/HTTPServiceCallback;)Lcom/gpc/operations/migrate/service/network/http/HTTPCall;

    return-void
.end method

.method public upload(Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/operations/storagev2/StorageServiceAGImplV2;->uploadInner(Lcom/gpc/operations/storagev2/bean/StorageUploaderBean;Lcom/gpc/operations/storagev2/listener/StorageUploaderListener;)V

    return-void
.end method
