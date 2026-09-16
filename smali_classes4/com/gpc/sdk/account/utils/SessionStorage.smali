.class public Lcom/gpc/sdk/account/utils/SessionStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXTRA_DATA_KEY_PREFIX:Ljava/lang/String; = "account.session.extra."

.field private static final TAG:Ljava/lang/String; = "SessionCache"

.field private static final USER_LAST_REFRESH_SESSION_TIMESTAMP:Ljava/lang/String; = "last_refresh_session_timestamp"

.field private static encryptedStorageUtil:Lcom/gpc/sdk/account/utils/EncryptedStorageUtil; = null

.field private static keystoreStorage:Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage; = null

.field private static final storageName:Ljava/lang/String; = "gpcsdk_login_session"


# instance fields
.field private context:Landroid/content/Context;

.field private storage:Lcom/gpc/util/LocalStorage;

.field private storageT:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "SessionStorage create."

    const-string v1, "SessionCache"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 4
    const-string v0, "SessionStorage context is error."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->context:Landroid/content/Context;

    .line 7
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v2, "gpcsdk_login_session"

    invoke-direct {v0, p1, v2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    .line 8
    sget-object v0, Lcom/gpc/sdk/account/utils/SessionStorage;->encryptedStorageUtil:Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gpc/sdk/account/utils/SessionStorage;->encryptedStorageUtil:Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v3, "userId"

    invoke-virtual {v0, v3}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    new-instance v0, Lcom/gpc/util/LocalStorage;

    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP10()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 18
    iput-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    .line 22
    :cond_2
    sget-object v0, Lcom/gpc/sdk/account/utils/SessionStorage;->keystoreStorage:Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;

    if-nez v0, :cond_3

    .line 24
    :try_start_0
    new-instance v0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;

    invoke-direct {v0, v2}, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/account/utils/SessionStorage;->keystoreStorage:Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    const-string v0, "KeystoreStorage init failed."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "account.keystore.init"

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/utils/SessionStorage;->logKeystoreEvent(Ljava/lang/String;)V

    .line 31
    :cond_3
    :goto_0
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "gpcsdk_ses"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storageT:Lcom/gpc/util/LocalStorage;

    return-void
.end method

.method private writeEncryptedData(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->createDataStruct()Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/gpc/sdk/account/utils/SessionStorage;->encryptedStorageUtil:Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->write(Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;)V

    .line 4
    sget-object v0, Lcom/gpc/sdk/account/utils/SessionStorage;->keystoreStorage:Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;

    if-eqz v0, :cond_0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storageT:Lcom/gpc/util/LocalStorage;

    const-string v1, "K"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    const-string v0, "account.keystore.encrypt"

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/account/utils/SessionStorage;->logKeystoreEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dumpCache()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0}, Lcom/gpc/util/LocalStorage;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string v1, "%s:%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionCache"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized dumpExtra()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, "SessionCache"

    const-string v1, "dumpExtra start"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0}, Lcom/gpc/util/LocalStorage;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "account.session.extra."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    aput-object v1, v3, v5

    const-string v1, "%s:%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionCache"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "%s:null"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SessionCache"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    const-string v0, "SessionCache"

    const-string v1, "dumpExtra end"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public logKeystoreEvent(Ljava/lang/String;)V
    .locals 3

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string v1, "version_sdk_init"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string v1, "version_release"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    sget-object v1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {v1, p1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLogBeforeInit(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public logKeystoreEvent(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string v1, "version_sdk_init"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "version_release"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "ex"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    sget-object p2, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p2, p1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->sdkLogBeforeInit(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public readLastRefreshSessionTimestamp()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "last_refresh_session_timestamp"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public restoreCacheAsCurrent()Lcom/gpc/sdk/account/GPCSession;
    .locals 7

    .line 1
    const-string v0, ""

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v2, "loginType"

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {v1}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    move-object v1, v0

    .line 6
    :goto_0
    sget-object v2, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->NONE:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP11()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC_ACCOUNT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 15
    :goto_1
    new-instance v2, Lcom/gpc/sdk/account/GPCSession;

    invoke-direct {v2}, Lcom/gpc/sdk/account/GPCSession;-><init>()V

    .line 16
    invoke-virtual {v2, v1}, Lcom/gpc/sdk/account/GPCSession;->setLoginType(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)V

    .line 18
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v4, "userId"

    invoke-virtual {v3, v4}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    :cond_2
    invoke-virtual {v2, v3}, Lcom/gpc/sdk/account/GPCSession;->setUserId(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v4, "hasBind"

    invoke-virtual {v3, v4}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/account/GPCSession;->setHasBind(Z)V

    .line 25
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v4, "thirdPlatformAccessKey"

    invoke-virtual {v3, v4}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 28
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v3, v4, v0}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_3
    invoke-virtual {v2, v0}, Lcom/gpc/sdk/account/GPCSession;->setThirdPlatformAccessKey(Ljava/lang/String;)V

    .line 32
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v4, "thirdPlatformId"

    invoke-virtual {v3, v4}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/account/GPCSession;->setThirdPlatformId(Ljava/lang/String;)V

    .line 34
    sget-object v3, Lcom/gpc/sdk/account/utils/SessionStorage;->encryptedStorageUtil:Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->setIndexSeed(Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v4, "accesskey"

    invoke-virtual {v3, v4}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 38
    new-instance v5, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    invoke-direct {v5}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;-><init>()V

    .line 39
    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->userId:Ljava/lang/String;

    .line 40
    iput-object v3, v5, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->accessKey:Ljava/lang/String;

    .line 41
    sget-object v3, Lcom/gpc/sdk/account/utils/SessionStorage;->encryptedStorageUtil:Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;

    invoke-virtual {v3, v5}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->write(Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;)V

    .line 43
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v3, v4, v0}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_4
    sget-object v3, Lcom/gpc/sdk/account/utils/SessionStorage;->encryptedStorageUtil:Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;

    invoke-virtual {v3}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->read()Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Lcom/gpc/sdk/account/GPCSession;->parseDataStruct(Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;)V

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "read local storage UTC Time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v5, "timetoverify"

    invoke-virtual {v4, v5}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SessionCache"

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v3, v5}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 51
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, v5}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->UTCTimeToLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/account/GPCSession;->setTimeToVerify(Ljava/lang/String;)V

    goto :goto_2

    .line 53
    :cond_5
    invoke-virtual {v2, v0}, Lcom/gpc/sdk/account/GPCSession;->setTimeToVerify(Ljava/lang/String;)V

    .line 56
    :goto_2
    sget-object v0, Lcom/gpc/sdk/account/utils/SessionStorage;->keystoreStorage:Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;

    if-eqz v0, :cond_6

    .line 58
    :try_start_2
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storageT:Lcom/gpc/util/LocalStorage;

    const-string v3, "K"

    invoke-virtual {v0, v3}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 60
    sget-object v3, Lcom/gpc/sdk/account/utils/SessionStorage;->keystoreStorage:Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;

    iget-object v5, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->context:Landroid/content/Context;

    invoke-virtual {v3, v5, v0}, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->createFromJson(Ljava/lang/String;)Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    move-result-object v0

    .line 62
    iget-object v0, v0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->accessKey:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 63
    const-string v0, "account.keystore.decrypt.unequal"

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/utils/SessionStorage;->logKeystoreEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    const-string v3, "account.keystore.decrypt"

    invoke-virtual {p0, v3, v0}, Lcom/gpc/sdk/account/utils/SessionStorage;->logKeystoreEvent(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "restoreAsCurrent=>loginType: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|IGXId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|accesskey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|hasBind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->isHasBind()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "|timeToVerify(local):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getTimeToVerify()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|thirdPlatformAccessKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|thirdPlatformId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|accountNewlyCreated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->isAccountNewlyCreated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public saveLastRefreshSessionTimestamp(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_refresh_session_timestamp"

    invoke-virtual {v0, p2, p1}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-static {}, Lcom/gpc/sdk/utils/common/GPCConstant$DEPRECATED_FIELD;->getP2()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gpc/util/LocalStorage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public storeToCache(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/SessionStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0}, Lcom/gpc/util/LocalStorage;->getTransaction()Lcom/gpc/util/LocalStorage$Transaction;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/gpc/util/LocalStorage$Transaction;->start()V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getTimeToVerify()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timetoverify"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/util/LocalStorage$Transaction;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->isHasBind()Z

    move-result v1

    const-string v2, "hasBind"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/util/LocalStorage$Transaction;->writeBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loginType"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/util/LocalStorage$Transaction;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/util/LocalStorage$Transaction;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getThirdPlatformId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thirdPlatformId"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/util/LocalStorage$Transaction;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getExtra()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "account.session.extra."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/gpc/util/LocalStorage$Transaction;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/util/LocalStorage$Transaction;->end()V

    .line 19
    sget-object v0, Lcom/gpc/sdk/account/utils/SessionStorage;->encryptedStorageUtil:Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->setIndexSeed(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/gpc/sdk/account/utils/SessionStorage;->writeEncryptedData(Lcom/gpc/sdk/account/GPCSession;)V

    return-void
.end method
