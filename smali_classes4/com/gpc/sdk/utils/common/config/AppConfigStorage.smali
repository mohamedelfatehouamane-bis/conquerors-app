.class public Lcom/gpc/sdk/utils/common/config/AppConfigStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "AppConfigStorage"

.field private static final VERSION:Ljava/lang/String; = "v1"


# instance fields
.field private context:Landroid/content/Context;

.field private storage:Lcom/gpc/util/LocalStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->context:Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "app_config_file"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    return-void
.end method

.method private getConfigStorageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_v1.cache"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLocalConfigFromOldData(Ljava/lang/String;I)Lcom/gpc/sdk/service/appconf/GPCAppConfData;
    .locals 4

    const-string v0, "app_config"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->TAG:Ljava/lang/String;

    const-string v3, "getLocalConfig"

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v2, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v2, p1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz p1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {p1, v0}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v3, v0, v2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/util/Base64;->decode([B)[B

    move-result-object p1

    .line 11
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 13
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/bean/GPCAppConfig;

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/bean/GPCAppConfig;->setLocalConfig(Z)V

    .line 21
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setClientIP(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/bean/GPCAppConfig;->setNode(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    iget-object v2, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setId(I)V

    .line 27
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->getUpdateAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setUpdateAt(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->getProtocolNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setProtocolNumber(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->getSource()Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    .line 30
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->getRawString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setRawString(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->isLocalConfig()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setLocalConfig(Z)V

    .line 33
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v2, "app_config_cache_timestamp"

    invoke-virtual {p1, v2}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setLocalTimestamp(J)V

    .line 35
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setConfigType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :cond_2
    return-object v1
.end method

.method private processOldData(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cache"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "app_config_cache_timestamp"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLastPrimaryConfigName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->TAG:Ljava/lang/String;

    const-string v1, "getLastPrimaryConfigName"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "last_primary_config_name"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalConfig(Ljava/lang/String;I)Lcom/gpc/sdk/service/appconf/GPCAppConfData;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->getLocalConfigFromOldData(Ljava/lang/String;I)Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    sget-object v0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " using old data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->getConfigStorageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {p2, p1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;

    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;->create(Ljava/lang/String;)Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setLocalConfig(Z)V

    :cond_1
    return-object p1
.end method

.method public saveLastPrimaryConfigName(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveLastPrimaryConfigName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    const-string v1, "last_primary_config_name"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveLocalConfig(Ljava/lang/String;Lcom/gpc/sdk/service/appconf/GPCAppConfData;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->TAG:Ljava/lang/String;

    const-string v1, "saveLocalConfig"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->processOldData(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;->toJson(Lcom/gpc/sdk/service/appconf/GPCAppConfData;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->getConfigStorageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/AppConfigStorage;->storage:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
