.class Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;
.super Ljava/lang/Object;
.source "KeyProvider10.java"

# interfaces
.implements Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;


# static fields
.field private static final AES_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CIPHER_AES_GCM_NOPADDING_KEY_LENGTH_IN_BITS:I = 0x100

.field static final KEY_ALIAS:Ljava/lang/String; = "AesGcmNoPaddingEncryption10-encryption-key"

.field private static final logger:Lcom/gpc/aws/logging/Log;


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "KeyProvider10"

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->logger:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteKey(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Error in deleting the AES key identified by "

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 132
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 135
    :try_start_1
    sget-object v2, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from SharedPreferences."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized generateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;
        }
    .end annotation

    const-string v0, "Generated and saved the AES encryption key identified by the aesEncryptionKeyAlias: "

    const-string v1, "Error in Base64 encoding of the AES encryption key for the aesEncryptionKeyAlias: "

    const-string v2, "Error in getting the encoded bytes for the AES encryption key identified by the aesEncryptionKeyAlias: "

    const-string v3, "Error in generating the AES encryption key identified by the aesEncryptionKeyAlias: "

    monitor-enter p0

    .line 61
    :try_start_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 62
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v5

    const/16 v6, 0x100

    .line 63
    invoke-virtual {v5, v6, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 64
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 66
    invoke-virtual {v5}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 72
    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    array-length v5, v3

    if-eqz v5, :cond_1

    .line 78
    invoke-static {v3}, Lcom/gpc/aws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 86
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 88
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    sget-object v1, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to SharedPreferences."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/gpc/aws/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-object v4

    .line 80
    :cond_0
    :try_start_1
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    :try_start_2
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    const-string v1, "Error in generating the AES Encryption key for the aesEncryptionKeyAlias"

    invoke-direct {v0, v1, p1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized retrieveKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;
        }
    .end annotation

    const-string v0, "Error in Base64 decoding the AES encryption key identified by the keyAlias: "

    const-string v1, "SharedPreferences does not have the key for keyAlias: "

    const-string v2, "SharedPreferences does not have the key for keyAlias: "

    const-string v3, "Error occurred while retrieving key for keyAlias: "

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v4, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    sget-object v2, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->logger:Lcom/gpc/aws/logging/Log;

    const-string v4, "Loading the encryption key from SharedPreferences"

    invoke-interface {v2, v4}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 105
    iget-object v2, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider10;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    invoke-static {v2}, Lcom/gpc/aws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 117
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    new-instance v1, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    :try_start_2
    new-instance v1, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
