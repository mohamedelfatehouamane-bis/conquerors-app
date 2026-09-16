.class public Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;
.super Ljava/lang/Object;
.source "KeyProvider18.java"

# interfaces
.implements Lcom/gpc/aws/internal/keyvaluestore/KeyProvider;


# static fields
.field static final ANDROID_KEY_STORE_NAME:Ljava/lang/String; = "AndroidKeyStore"

.field static final AWS_KEY_VALUE_STORE_VERSION_1_KEY_STORE_ALIAS_FOR_RSA_SUFFIX:Ljava/lang/String; = ".rsaKeyStoreAlias"

.field static final CIPHER_AES_GCM_NOPADDING_KEY_LENGTH_IN_BITS:I = 0x100

.field static final CIPHER_PROVIDER_NAME_FOR_RSA:Ljava/lang/String; = "AndroidOpenSSL"

.field static final CIPHER_RSA_MODE:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field static final ENCRYPTED_AES_KEY:Ljava/lang/String; = "AesGcmNoPadding18-encrypted-encryption-key"

.field static final KEY_ALGORITHM_AES:Ljava/lang/String; = "AES"

.field static final KEY_ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field private static final logger:Lcom/gpc/aws/logging/Log;


# instance fields
.field private context:Landroid/content/Context;

.field private secureRandom:Ljava/security/SecureRandom;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->logger:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->context:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private rsaDecrypt(Ljava/lang/String;[B)[B
    .locals 3

    const/4 v0, 0x0

    .line 115
    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 118
    invoke-virtual {v1, p1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 121
    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "AndroidOpenSSL"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    const/4 v2, 0x2

    .line 122
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 125
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    sget-object p2, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->logger:Lcom/gpc/aws/logging/Log;

    const-string v1, "Exception occurred while decrypting the encrypted AES key. "

    invoke-interface {p2, v1, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private rsaEncrypt(Ljava/lang/String;[B)[B
    .locals 3

    const/4 v0, 0x0

    .line 96
    :try_start_0
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 97
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 99
    invoke-virtual {v1, p1, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p1

    check-cast p1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 102
    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "AndroidOpenSSL"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 106
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 108
    sget-object p2, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occurred while encrypting data. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized deleteKey(Ljava/lang/String;)V
    .locals 5

    const-string v0, " from AndroidKeyStore"

    const-string v1, "Error in deleting the RSA Key identified by the keyAlias: "

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "AesGcmNoPadding18-encrypted-encryption-key"

    .line 257
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 258
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 260
    :try_start_1
    sget-object v3, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->logger:Lcom/gpc/aws/logging/Log;

    const-string v4, "Error in deleting the encrypted AES key identified by AesGcmNoPadding18-encrypted-encryption-key from SharedPreferences."

    invoke-interface {v3, v4, v2}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :goto_0
    :try_start_2
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    .line 267
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 269
    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 271
    :try_start_3
    sget-object v3, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->logger:Lcom/gpc/aws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized generateKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;
        }
    .end annotation

    const-string v0, "Error in Base64 encoding of the Encrypted AES key for the AES keyAlias: AesGcmNoPadding18-encrypted-encryption-key using the rsaKeyAlias: "

    const-string v1, "Error in RSA encrypting the AES encryption key for the AES keyAlias: AesGcmNoPadding18-encrypted-encryption-key using the rsaKeyAlias: "

    const-string v2, " in AndroidKeyStore"

    const-string v3, "Error in generating the AES key and RSA encrypting the AES key using the rsaKeyAlias: "

    const-string v4, "CN="

    const-string v5, " in AndroidKeyStore"

    const-string v6, "Error in generating the RSA Encryption key for the rsaKeyAlias: "

    monitor-enter p0

    .line 136
    :try_start_0
    const-string v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    const/4 v8, 0x0

    .line 137
    invoke-virtual {v7, v8}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x1

    const/16 v10, 0x1e

    .line 141
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 142
    new-instance v9, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v10, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v9, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v9

    new-instance v10, Ljavax/security/auth/x500/X500Principal;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v9, v10}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    sget-object v9, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 145
    invoke-virtual {v4, v9}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    .line 146
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    .line 147
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v4

    .line 149
    const-string v7, "RSA"

    const-string v8, "AndroidKeyStore"

    invoke-static {v7, v8}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v7

    .line 152
    invoke-virtual {v7, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 153
    invoke-virtual {v7}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :try_start_1
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    iput-object v4, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->secureRandom:Ljava/security/SecureRandom;

    .line 162
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v4

    .line 163
    iget-object v5, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->secureRandom:Ljava/security/SecureRandom;

    const/16 v6, 0x100

    invoke-virtual {v4, v6, v5}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 164
    invoke-virtual {v4}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 171
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    if-eqz v5, :cond_2

    .line 172
    array-length v6, v5

    if-eqz v6, :cond_2

    .line 177
    invoke-direct {p0, p1, v5}, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->rsaEncrypt(Ljava/lang/String;[B)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 178
    array-length v6, v5

    if-eqz v6, :cond_1

    .line 184
    invoke-static {v5}, Lcom/gpc/aws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "AesGcmNoPadding18-encrypted-encryption-key"

    .line 192
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 196
    sget-object v0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->logger:Lcom/gpc/aws/logging/Log;

    const-string v1, "Generated and saved the Encrypted AES encryption key for the AES keyAlias: AesGcmNoPadding18-encrypted-encryption-key to SharedPreferences."

    invoke-interface {v0, v1}, Lcom/gpc/aws/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-object v4

    .line 186
    :cond_0
    :try_start_2
    new-instance v1, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_1
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    const-string v1, "Error in generating the AES encryption key for the alias: AesGcmNoPadding18-encrypted-encryption-key"

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_3
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    const-string v1, "Error in generating the AES encryption key for the alias: AesGcmNoPadding18-encrypted-encryption-key"

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    .line 200
    :try_start_3
    new-instance v1, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 155
    new-instance v1, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotGeneratedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized retrieveKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;
        }
    .end annotation

    const-string v0, "Unable to RSA decrypt the encrypted AES key identified by: AesGcmNoPadding18-encrypted-encryption-key using the RSA key identified by keyAlias: "

    const-string v1, " cannot be found in AndroidKeyStore"

    const-string v2, "The RSA Key identified by the alias: "

    const-string v3, "Error occurred while accessing AndroidKeyStore to retrieve the key for keyAlias: "

    monitor-enter p0

    .line 209
    :try_start_0
    const-string v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    const/4 v5, 0x0

    .line 210
    invoke-virtual {v4, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 213
    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 219
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "AesGcmNoPadding18-encrypted-encryption-key"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    sget-object v1, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->logger:Lcom/gpc/aws/logging/Log;

    const-string v2, "Loading the encryption key from SharedPreferences"

    invoke-interface {v1, v2}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "AesGcmNoPadding18-encrypted-encryption-key"

    .line 222
    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 228
    invoke-static {v1}, Lcom/gpc/aws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    array-length v2, v1

    if-eqz v2, :cond_1

    .line 234
    invoke-direct {p0, p1, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyProvider18;->rsaDecrypt(Ljava/lang/String;[B)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 241
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 236
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

    .line 230
    :cond_1
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;

    const-string v1, "Unable to Base64 decode the encrypted AES key identified by: AesGcmNoPadding18-encrypted-encryption-key"

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_2
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;

    const-string v1, "Unable to retrieve the encrypted AES Key identified by AesGcmNoPadding18-encrypted-encryption-key from the SharedPreferences."

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_3
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;

    const-string v1, "SharedPreferences does not have the key for keyAlias: AesGcmNoPadding18-encrypted-encryption-key"

    invoke-direct {v0, v1}, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_4
    new-instance v0, Lcom/gpc/aws/internal/keyvaluestore/KeyNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 247
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
