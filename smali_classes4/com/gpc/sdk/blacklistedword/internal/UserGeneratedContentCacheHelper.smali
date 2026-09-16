.class public Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;,
        Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "UserGeneratedContentCacheHelper"


# instance fields
.field public a:Lcom/gpc/sdk/misc/x;

.field public b:Lcom/gpc/sdk/utils/modules/cache/ICache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/misc/x;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/x;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a:Lcom/gpc/sdk/misc/x;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->cacheModule()Lcom/gpc/sdk/utils/modules/cache/CacheModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/cache/CacheModule;->createUGCCache()Lcom/gpc/sdk/utils/modules/cache/ICache;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->b:Lcom/gpc/sdk/utils/modules/cache/ICache;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;)Lcom/gpc/sdk/misc/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a:Lcom/gpc/sdk/misc/x;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .line 16
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/bean/GPCServerInfo;->getServerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    .line 21
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const-string v0, "gpc.sdk.ugc_%s_%s_%s_%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V
    .locals 4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveUserScenarioPolicy, policy : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->getOriginData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserGeneratedContentCacheHelper"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->getOriginData()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->getOriginData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_2
    const-string p1, ""

    .line 14
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveUserScenarioPolicy key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->b:Lcom/gpc/sdk/utils/modules/cache/ICache;

    invoke-interface {v1, v0, p1}, Lcom/gpc/sdk/utils/modules/cache/ICache;->write(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;-><init>(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;)V

    invoke-static {v0}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;-><init>(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;)V

    invoke-static {v0}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->b:Lcom/gpc/sdk/utils/modules/cache/ICache;

    invoke-interface {v1, v0}, Lcom/gpc/sdk/utils/modules/cache/ICache;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readUserScenarioPolicy key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UserGeneratedContentCacheHelper"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;

    invoke-direct {v1, v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "readUserScenarioPolicy error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
