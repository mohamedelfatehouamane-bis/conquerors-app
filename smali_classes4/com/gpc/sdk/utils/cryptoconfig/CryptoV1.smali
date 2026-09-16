.class public Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CryptoV1"


# instance fields
.field private configuration:Lcom/gpc/sdk/GPCConfiguration;

.field private cryptoConfigLen:J

.field private cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/GPCCryptoConfigV1;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    .line 3
    iput-wide p3, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigLen:J

    .line 4
    iput-object p1, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p2, Lcom/gpc/sdk/GPCCryptoConfigV1;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->versionName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public AES(Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    iget-object v0, v0, Lcom/gpc/sdk/GPCCryptoConfigV1;->versionName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    const-string v2, "CryptoV1"

    const-string v3, ""

    if-eqz p1, :cond_2

    .line 10
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v4, :cond_0

    .line 15
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/gpc/sdk/jni/Amplifier;->spriteCtxS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v7, v6}, Lcom/gpc/sdk/jni/Amplifier;->spriteCtxS(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    iget-object v4, p1, Lcom/gpc/sdk/GPCCryptoConfigV1;->versionName:Ljava/lang/String;

    iget-object p1, p1, Lcom/gpc/sdk/GPCCryptoConfigV1;->data:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/gpc/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 23
    invoke-static {v5, v4, p1}, Lcom/gpc/sdk/jni/Amplifier;->fishSpriteCtxCalc(ILjava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    move-object v1, v3

    const/4 v2, 0x1

    goto :goto_2

    .line 29
    :cond_2
    const-string p1, "querysForSign == null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, p1

    move-object p1, v3

    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 34
    const-string v4, "AES"

    invoke-static {v2, v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 38
    :goto_2
    sget-object v4, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v3

    .line 40
    :goto_3
    const-string v3, "p1001"

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logCryptoForEncrypt(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public RSA(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    iget-object v1, v0, Lcom/gpc/sdk/GPCCryptoConfigV1;->versionName:Ljava/lang/String;

    .line 2
    const-string v2, ""

    .line 7
    :try_start_0
    iget-object v0, v0, Lcom/gpc/sdk/GPCCryptoConfigV1;->RSAEncryptionKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->RSAPaddingType()Lcom/gpc/sdk/utils/common/RSAHelper$RSAPaddingType;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/gpc/sdk/utils/common/RSAHelper;->encrypt(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/common/RSAHelper$RSAPaddingType;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move-object v0, v2

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    const-string v0, "CryptoV1"

    const-string v3, "RSA"

    invoke-static {v0, v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move-object v0, p1

    move-object p1, v2

    const/4 v3, 0x0

    .line 14
    :goto_0
    sget-object v4, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    const-string v2, "p1003"

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logCryptoForEncrypt(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public RSAPaddingType()Lcom/gpc/sdk/utils/common/RSAHelper$RSAPaddingType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    iget v0, v0, Lcom/gpc/sdk/GPCCryptoConfigV1;->RSAEncryptionType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/common/RSAHelper$RSAPaddingType;->OAEP:Lcom/gpc/sdk/utils/common/RSAHelper$RSAPaddingType;

    return-object v0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/gpc/sdk/utils/common/RSAHelper$RSAPaddingType;->PKCS:Lcom/gpc/sdk/utils/common/RSAHelper$RSAPaddingType;

    return-object v0
.end method

.method public enableAnticheat()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->isHTTPCryptoEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->isErrorForConfigLen()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "GenerateCodebase:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/util/VersionUtil;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CryptoV1"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    const-string v3, "*"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/gpc/sdk/GPCCryptoConfigV1;->disableSDKVersions:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 9
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "disableSDKVersion:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v1

    .line 14
    :cond_1
    invoke-static {}, Lcom/gpc/util/VersionUtil;->getSDKVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/gpc/sdk/GPCCryptoConfigV1;->enableAnticheatGameIDs:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 21
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v0, v5

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gameID:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    return v8

    .line 26
    :cond_4
    iget-object v7, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v7}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    return v8

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    return v1
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isErrorForConfigLen()Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetCryptoConfigLen:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptoV1"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigLen:J

    const-wide/16 v2, 0x400

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sign(Ljava/lang/String;Ljava/util/Map;)Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;"
        }
    .end annotation

    const-string v0, "CryptoV1"

    const-string v1, "md5:"

    .line 1
    new-instance v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;

    invoke-direct {v2}, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;-><init>()V

    .line 2
    iget-object v3, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->parsingConfiguration:Z

    .line 4
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->success:Z

    return-object v2

    .line 9
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/jni/Amplifier;->loadFish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->AES(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 19
    iput-object p2, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesValue:Ljava/lang/String;

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->AES:Z

    .line 23
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->success:Z

    return-object v2

    .line 27
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    iput-object p1, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesTimestampValue:Ljava/lang/String;

    .line 29
    new-instance p2, Lcom/gpc/util/MD5;

    invoke-direct {p2}, Lcom/gpc/util/MD5;-><init>()V

    invoke-virtual {p2, p1}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 30
    iput-object p1, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->aesTimestampMD5Value:Ljava/lang/String;

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->signNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    iput-object p1, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->signValue:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 37
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->signNative:Z

    .line 38
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->success:Z

    return-object v2

    .line 42
    :cond_2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->RSA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    iput-object p1, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->RSAValue:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 45
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->RSA:Z

    .line 46
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->success:Z

    return-object v2

    .line 49
    :cond_3
    iput-object p1, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->sign:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 51
    const-string p2, "Sign"

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_0
    move-exception p1

    .line 52
    const-string p2, "guestLoginFinalSignString(loadLibrary) "

    invoke-static {v0, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    sget-object p2, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->guestLoginLoadAlgorithmFail(Ljava/lang/String;)V

    .line 54
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->parsingConfiguration:Z

    .line 55
    iput-boolean v4, v2, Lcom/gpc/sdk/utils/cryptoconfig/DeRegisterSignInfo;->success:Z

    return-object v2
.end method

.method public signNative(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    iget-object v0, v0, Lcom/gpc/sdk/GPCCryptoConfigV1;->versionName:Ljava/lang/String;

    .line 2
    const-string v1, ""

    .line 6
    :try_start_0
    sget-object v2, Lcom/gpc/sdk/jni/Amplifier;->CGI_SIGN_V2:[B

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v3, p0, Lcom/gpc/sdk/utils/cryptoconfig/CryptoV1;->cryptoConfigV1:Lcom/gpc/sdk/GPCCryptoConfigV1;

    iget-object v3, v3, Lcom/gpc/sdk/GPCCryptoConfigV1;->data:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/gpc/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    .line 8
    invoke-static {v2, p1, v3, v4}, Lcom/gpc/sdk/jni/Amplifier;->magnify([B[B[B[B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    move-object v2, v1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    const-string v2, "CryptoV1"

    const-string v3, "SignNative"

    invoke-static {v2, v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    move-object v2, p1

    move-object p1, v1

    const/4 v3, 0x0

    .line 18
    :goto_0
    sget-object v4, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    const-string v1, "p1002"

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logCryptoForEncrypt(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
