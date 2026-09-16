.class public Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;
.super Ljava/lang/Object;
.source "AWSKeyValueStore.java"


# static fields
.field private static final ANDROID_API_LEVEL_10:I = 0xa

.field private static final ANDROID_API_LEVEL_18:I = 0x12

.field private static final ANDROID_API_LEVEL_23:I = 0x17

.field private static final AWS_KEY_VALUE_STORE_VERSION:I = 0x1

.field private static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final CIPHER_AES_GCM_NOPADDING:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final CIPHER_AES_GCM_NOPADDING_IV_LENGTH_IN_BYTES:I = 0xc

.field private static final CIPHER_AES_GCM_NOPADDING_TAG_LENGTH_LENGTH_IN_BITS:I = 0x80

.field static final SHARED_PREFERENCES_DATA_IDENTIFIER_SUFFIX:Ljava/lang/String; = ".encrypted"

.field static final SHARED_PREFERENCES_ENCRYPTION_KEY_NAMESPACE_SUFFIX:Ljava/lang/String; = ".encryptionkey"

.field static final SHARED_PREFERENCES_IV_SUFFIX:Ljava/lang/String; = ".iv"

.field static final SHARED_PREFERENCES_STORE_VERSION_SUFFIX:Ljava/lang/String; = ".keyvaluestoreversion"

.field static cacheFactory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/gpc/aws/logging/Log;


# instance fields
.field private apiLevel:I

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private isPersistenceEnabled:Z

.field keyProvider:Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;

.field private secureRandom:Ljava/security/SecureRandom;

.field sharedPreferencesForData:Landroid/content/SharedPreferences;

.field sharedPreferencesForEncryptionMaterials:Landroid/content/SharedPreferences;

.field private final sharedPreferencesName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cacheFactory:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->secureRandom:Ljava/security/SecureRandom;

    .line 130
    invoke-static {p2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getCacheForKey(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    .line 131
    iput-object p2, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    .line 132
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p2, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    .line 133
    iput-object p1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    .line 134
    invoke-virtual {p0, p3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->setPersistenceEnabled(Z)V

    return-void
.end method

.method private decrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 433
    :try_start_0
    invoke-static {p3}, Lcom/gpc/aws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p3

    .line 434
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 435
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 438
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 439
    new-instance p2, Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 441
    sget-object p2, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    const-string p3, "Error in decrypting data. "

    invoke-interface {p2, p3, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private encrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 407
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 408
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 411
    const-string p1, "UTF-8"

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 412
    invoke-static {p1}, Lcom/gpc/aws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 414
    sget-object p2, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    const-string p3, "Error in encrypting data. "

    invoke-interface {p2, p3, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private generateInitializationVector()[B
    .locals 2

    const/16 v0, 0xc

    .line 468
    new-array v0, v0, [B

    .line 469
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private getAlgorithmParameterSpecForIV([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 474
    iget v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v0

    :cond_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method private static getCacheForKey(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cacheFactory:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cacheFactory:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    sget-object v1, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cacheFactory:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getDataKeyUsedInPersistentStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".encrypted"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getEncryptionKeyAlias()Ljava/lang/String;
    .locals 3

    .line 519
    iget v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".aesKeyStoreAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".rsaKeyStoreAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 531
    const-string v0, "AesGcmNoPaddingEncryption10-encryption-key"

    return-object v0

    .line 534
    :cond_2
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "API Level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 535
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported by the SDK. Setting persistence to false."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method private getInitializationVector(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".iv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    invoke-static {v0}, Lcom/gpc/aws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 463
    invoke-direct {p0, v0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getAlgorithmParameterSpecForIV([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    return-object p1

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot base64 decode the initialization vector for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " read from SharedPreferences."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot read the initialization vector for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from SharedPreferences."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialization vector for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is missing from the SharedPreferences."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initKeyProviderBasedOnAPILevel()V
    .locals 3

    .line 548
    iget v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 550
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider23;

    invoke-direct {v0}, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider23;-><init>()V

    iput-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;

    return-void

    :cond_0
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 554
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;

    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForEncryptionMaterials:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;

    return-void

    :cond_1
    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    .line 558
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;

    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForEncryptionMaterials:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;

    return-void

    .line 561
    :cond_2
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "API Level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 562
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported by the SDK. Setting persistence to false."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    return-void
.end method

.method private onMigrateFromNoEncryption()V
    .locals 6

    .line 574
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 575
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 576
    const-string v3, ".encrypted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".iv"

    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".keyvaluestoreversion"

    .line 578
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    .line 582
    iget-object v3, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 583
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 584
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 585
    iget-object v3, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 586
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 587
    iget-object v3, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 588
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 589
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 590
    iget-object v3, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 591
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 592
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 593
    iget-object v3, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 594
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 595
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/Set;

    if-eqz v3, :cond_8

    .line 596
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 599
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 600
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 602
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 605
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private declared-synchronized retrieveEncryptionKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 3

    const-string v0, "Deleting the encryption key identified by the keyAlias: "

    monitor-enter p0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;

    invoke-interface {v1, p1}, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;->retrieveKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1
    :try_end_0
    .catch Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 485
    :try_start_1
    sget-object v2, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    invoke-interface {v2, v1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/gpc/aws/logging/Log;->info(Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;

    invoke-interface {v0, p1}, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;->deleteKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 388
    iget-boolean v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_0
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

.method public declared-synchronized contains(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getDataKeyUsedInPersistentStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 192
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized generateEncryptionKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 2

    monitor-enter p0

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->keyProvider:Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;

    invoke-interface {v0, p1}, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;->generateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1
    :try_end_0
    .catch Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 503
    :try_start_1
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    const-string v1, "Encryption Key cannot be generated successfully."

    invoke-interface {v0, v1, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "The version of the data read from SharedPreferences for "

    const-string v1, "Error in retrieving value for dataKey = "

    const-string v2, "Error in retrieving the decryption key used to decrypt the data from the persistent store. Returning null for the requested dataKey = "

    monitor-enter p0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 208
    monitor-exit p0

    return-object v3

    .line 211
    :cond_0
    :try_start_0
    iget-boolean v4, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-nez v4, :cond_1

    .line 212
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 218
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getDataKeyUsedInPersistentStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-direct {p0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getEncryptionKeyAlias()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-direct {p0, v5}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->retrieveEncryptionKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v5

    if-nez v5, :cond_2

    .line 228
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    monitor-exit p0

    return-object v3

    .line 236
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_3

    .line 237
    monitor-exit p0

    return-object v3

    .line 243
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".keyvaluestoreversion"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 245
    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_4

    .line 247
    sget-object v2, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not match the version of the store."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    monitor-exit p0

    return-object v3

    .line 253
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-direct {p0, v4}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getInitializationVector(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    .line 255
    invoke-direct {p0, v5, v2, v0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->decrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v2, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 263
    :try_start_5
    sget-object v2, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 267
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "Error in generating the encryption key for encryptionKeyAlias: "

    const-string v1, "Error in Base64 encoding the IV for dataKey = "

    const-string v2, "The generated IV for dataKey = "

    const-string v3, "Error in storing value for dataKey = "

    const-string v4, "No encryption key found for encryptionKeyAlias: "

    monitor-enter p0

    if-nez p1, :cond_0

    .line 286
    :try_start_0
    sget-object p1, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    const-string p2, "dataKey is null."

    invoke-interface {p1, p2}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 291
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v5, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-boolean v5, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 293
    monitor-exit p0

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 299
    :try_start_2
    sget-object p2, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    const-string v0, "Value is null. Removing the data, IV and version from SharedPreferences"

    invoke-interface {p2, v0}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 300
    iget-object p2, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p0, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 306
    :cond_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getDataKeyUsedInPersistentStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-direct {p0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getEncryptionKeyAlias()Ljava/lang/String;

    move-result-object v6

    .line 313
    invoke-direct {p0, v6}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->retrieveEncryptionKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v7

    if-nez v7, :cond_4

    .line 316
    sget-object v7, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p0, v6}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->generateEncryptionKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    if-nez v4, :cond_3

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " used to encrypt the data before storing. Skipping persisting the data in the persistent store."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v7, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    :cond_3
    move-object v7, v4

    .line 328
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->generateInitializationVector()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 334
    invoke-direct {p0, v0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getAlgorithmParameterSpecForIV([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    .line 333
    invoke-direct {p0, v7, v2, p2}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->encrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-static {v0}, Lcom/gpc/aws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 343
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    .line 344
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 345
    invoke-interface {v1, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".keyvaluestoreversion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 347
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 348
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 340
    :cond_5
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2

    .line 330
    :cond_6
    new-instance p2, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception p2

    .line 350
    :try_start_5
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". This data has not been stored in the persistent store."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 353
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-boolean v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0, p1}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->getDataKeyUsedInPersistentStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 371
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".keyvaluestoreversion"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 375
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
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

.method public declared-synchronized setPersistenceEnabled(Z)V
    .locals 8

    const-string v0, "Creating the AWSKeyValueStore with key for sharedPreferencesForData = "

    const-string v1, "Detected Android API Level = "

    const-string v2, "Error in enabling persistence for "

    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v3, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    .line 148
    iput-boolean p1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->isPersistenceEnabled:Z

    if-eqz p1, :cond_0

    if-nez v3, :cond_0

    .line 151
    iget-object v4, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    .line 153
    iget-object v4, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".encryptionkey"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForEncryptionMaterials:Landroid/content/SharedPreferences;

    .line 157
    invoke-direct {p0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->initKeyProviderBasedOnAPILevel()V

    .line 159
    sget-object v4, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->apiLevel:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/gpc/aws/logging/Log;->info(Ljava/lang/Object;)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/gpc/aws/logging/Log;->info(Ljava/lang/Object;)V

    .line 163
    invoke-direct {p0}, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->onMigrateFromNoEncryption()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 165
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    const-string v1, "Persistence is disabled. Data will be accessed from memory."

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->info(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    if-eqz v3, :cond_2

    .line 171
    iget-object p1, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 172
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 173
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 176
    :try_start_1
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/aws/internal/keyvaluestore/AWSKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
