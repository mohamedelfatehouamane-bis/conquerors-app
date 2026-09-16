.class public Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "CryptoConfigManager"

.field private static cryptoConfig:[B

.field private static cryptoConfigLen:J

.field private static shareInstance:Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;


# instance fields
.field public cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shareInstance()Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->shareInstance:Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->shareInstance:Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;

    .line 5
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->shareInstance:Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const-string v0, "CryptoConfigManager"

    const-string v1, "Clear"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigLen:J

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfig:[B

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    return-void
.end method

.method public createCrypto(Lcom/gpc/sdk/GPCConfiguration;)Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;

    iget-object v1, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    sget-wide v2, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigLen:J

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;-><init>(Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/GPCCryptoConfigV1;J)V

    return-object v0
.end method

.method public getCryptoConfigLen()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigLen:J

    return-wide v0
.end method

.method public initialize()V
    .locals 2

    .line 1
    const-string v0, "CryptoConfigManager"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAsyncInit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->initialize()V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->parseCryptoConfigIfNeed()V

    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public parseCryptoConfigIfNeed()V
    .locals 7

    const-string v0, "deRegisterConfig:"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IsHTTPCryptoEnable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfiguration;->isHTTPCryptoEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "CryptoConfigManager"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->isHTTPCryptoEnable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    if-nez v1, :cond_1

    sget-wide v3, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigLen:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x400

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    .line 13
    :try_start_1
    invoke-static {}, Lcom/gpc/sdk/jni/Amplifier;->loadFish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    const-string v1, "ParseCryptoConfig"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/gpc/sdk/jni/Amplifier;->STEGANOGRAPHY:[B

    sget-object v3, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfig:[B

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v4}, Lcom/gpc/sdk/jni/Amplifier;->magnify([B[B[B[B)Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v1}, Lcom/gpc/sdk/GPCCryptoConfigV1;->parseFromJson(Ljava/lang/String;)Lcom/gpc/sdk/GPCCryptoConfigV1;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    .line 24
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->sendCryptoForParseFileEvent(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 25
    const-string v1, "guestLoginFinalSignString(loadLibrary) "

    invoke-static {v2, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    sget-object v1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->guestLoginLoadAlgorithmFail(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v3, "SetDeRegisterConfig"

    invoke-static {v2, v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->sendCryptoForParseFileEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendCryptoForParseFileEvent(Ljava/lang/String;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, v0, Lcom/gpc/sdk/GPCCryptoConfigV1;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6
    :goto_0
    sget-object v3, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v1, v2

    .line 8
    :cond_2
    invoke-virtual {v3, v0, p1, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logCryptoForParseFile(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCryptoConfig([B)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    .line 2
    sput-object p1, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfig:[B

    if-eqz p1, :cond_0

    .line 4
    array-length p1, p1

    int-to-long v0, p1

    sput-wide v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigLen:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 6
    sput-wide v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigLen:J

    .line 8
    :goto_0
    sget-object p1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    sget-wide v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigLen:J

    invoke-virtual {p1, v0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logCryptoForReceiveFile(J)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SetConfig Len:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoConfigManager;->cryptoConfigLen:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CryptoConfigManager"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
