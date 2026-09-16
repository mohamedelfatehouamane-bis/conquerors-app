.class public Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final TAG:Ljava/lang/String; = "KeystoreStorage"


# instance fields
.field protected final alias:Ljava/lang/String;

.field protected keyStoreCreator:Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->alias:Ljava/lang/String;

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 5
    new-instance p1, Lcom/gpc/sdk/account/utils/keystore/KeyStoreCreatorMarsImpl;

    invoke-direct {p1}, Lcom/gpc/sdk/account/utils/keystore/KeyStoreCreatorMarsImpl;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->keyStoreCreator:Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/gpc/sdk/account/utils/keystore/KeyStoreCreatorJellyImpl;

    invoke-direct {p1}, Lcom/gpc/sdk/account/utils/keystore/KeyStoreCreatorJellyImpl;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->keyStoreCreator:Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->keyStoreCreator:Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;

    invoke-interface {p1}, Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;->init()V

    return-void
.end method

.method public static createRandomStr(I)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_3

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    if-eqz v3, :cond_2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double v6, v6, v4

    const-wide v3, 0x4058400000000000L    # 97.0

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    int-to-char v3, v4

    .line 18
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 19
    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double v6, v6, v4

    const-wide v3, 0x4050400000000000L    # 65.0

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    int-to-char v3, v4

    .line 20
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateIv()[B
    .locals 2

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    .line 2
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->keyStoreCreator:Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;

    iget-object v1, p0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->alias:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;->getKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    .line 6
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 8
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1, p2, p1, v0}, Lcom/gpc/util/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->generateIv()[B

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->keyStoreCreator:Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;

    iget-object v2, p0, Lcom/gpc/sdk/account/utils/keystore/KeystoreStorage;->alias:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/gpc/sdk/account/utils/keystore/IKeyStoreCreator;->getKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 7
    :cond_0
    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2, p2, p1, v0}, Lcom/gpc/util/AESUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/security/Key;[B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 11
    invoke-static {v0, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 12
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, p2

    const-string p2, "%04d"

    invoke-static {v1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method
