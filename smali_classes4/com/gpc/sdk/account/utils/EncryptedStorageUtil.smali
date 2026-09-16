.class public Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;
    }
.end annotation


# static fields
.field private static final AMOUNT:I = 0xa

.field private static final NAME:Ljava/lang/String; = "VITAL"

.field private static final SECRET_KEY:Ljava/lang/String; = "aQDcSDhqy4JGH2QL"

.field private static final TAG:Ljava/lang/String; = "EncryptedStorageUtil"

.field private static final VERSION:Ljava/lang/String; = "2"


# instance fields
.field private cachePath:Ljava/lang/String;

.field private index:I

.field private indexSeed:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->list:Ljava/util/List;

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->indexSeed:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->path:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->cachePath:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/gpc/util/SecretKeyHelper;

    invoke-direct {p1}, Lcom/gpc/util/SecretKeyHelper;-><init>()V

    .line 12
    const-string v0, "aQDcSDhqy4JGH2QL"

    invoke-virtual {p1, v0}, Lcom/gpc/util/SecretKeyHelper;->mix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->key:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized deleteCacheData()V
    .locals 5

    const-string v0, "/VITAL"

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->cachePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->cachePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "VITAL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    :cond_2
    monitor-exit p0

    return-void
.end method

.method private generateIndex(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 3
    rem-int/lit8 p1, p1, 0xa

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    rsub-int/lit8 p1, p1, 0x9

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    iget-object v2, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->list:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static getRandomString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/gpc/util/RandomUtils;->getRandomStringIncludeCaseAndNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private readData()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->cachePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-direct {p0, v0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->writeData(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    const-string v3, "VITAL"

    const-string v4, "/"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->readVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->index:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    const/4 v2, 0x0

    .line 16
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/OptionalDataException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 p1, 0x400

    .line 17
    :try_start_3
    new-array p1, p1, [B

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 21
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_3

    .line 26
    iget-object v1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->key:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/gpc/util/AESUtils;->decryptWithECB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/OptionalDataException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    :catch_0
    return-object p1

    .line 39
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->key:Ljava/lang/String;

    const-string v2, "8705030532450895"

    invoke-static {v2}, Lcom/gpc/util/ObscureUtils;->getV(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/gpc/util/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/OptionalDataException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 49
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :catch_1
    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_2
    nop

    move-object v2, v3

    goto :goto_2

    :catch_3
    nop

    move-object v2, v3

    goto :goto_3

    :catch_4
    nop

    move-object v2, v3

    goto :goto_4

    :catch_5
    nop

    move-object v2, v3

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_4

    .line 50
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 54
    :catch_6
    :cond_4
    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    :catch_7
    nop

    :goto_2
    if-eqz v2, :cond_5

    goto :goto_6

    :catch_8
    nop

    :goto_3
    if-eqz v2, :cond_5

    goto :goto_6

    :catch_9
    nop

    :goto_4
    if-eqz v2, :cond_5

    goto :goto_6

    :catch_a
    nop

    :goto_5
    if-eqz v2, :cond_5

    .line 55
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    :catch_b
    :cond_5
    return-object v0
.end method

.method private readVersionFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/VITAL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    .line 5
    :try_start_1
    new-array p1, p1, [B

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 9
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    nop

    move-object v0, v1

    goto :goto_2

    :catch_2
    nop

    move-object v0, v1

    goto :goto_3

    :catch_3
    nop

    move-object v0, v1

    goto :goto_4

    :catch_4
    nop

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    .line 22
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 26
    :catch_5
    :cond_1
    throw p1

    :catch_6
    nop

    :goto_2
    if-eqz v0, :cond_2

    goto :goto_6

    :catch_7
    nop

    :goto_3
    if-eqz v0, :cond_2

    goto :goto_6

    :catch_8
    nop

    :goto_4
    if-eqz v0, :cond_2

    goto :goto_6

    :catch_9
    nop

    :goto_5
    if-eqz v0, :cond_2

    .line 27
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 32
    :catch_a
    :cond_2
    const-string p1, "1"

    return-object p1
.end method

.method private writeData(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->deleteCacheData()V

    .line 3
    invoke-direct {p0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->writeVersionFile()V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/util/ObscureUtils;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    const-string v1, "8705030532450895"

    invoke-static {v1}, Lcom/gpc/util/ObscureUtils;->getV(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/gpc/util/AESUtils;->encrypt(Ljava/lang/String;Ljava/security/Key;[B)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    iget v3, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->index:I

    if-ne v2, v3, :cond_0

    .line 12
    invoke-direct {p0, p1, v2}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->writeFile(Ljava/lang/String;I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-direct {p0, v3, v2}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->writeFile(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method private writeFile(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/VITAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    move-object v0, v1

    goto :goto_1

    :catch_1
    nop

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 13
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 18
    :catch_2
    :cond_0
    throw p1

    :catch_3
    nop

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_3

    :catch_4
    nop

    :goto_2
    if-eqz v0, :cond_1

    .line 19
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_1
    return-void
.end method

.method private writeVersionFile()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/VITAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    const-string v0, "2"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    move-object v1, v2

    goto :goto_1

    :catch_1
    nop

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    .line 13
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 18
    :catch_2
    :cond_0
    throw v0

    :catch_3
    nop

    :goto_1
    if-eqz v1, :cond_1

    goto :goto_3

    :catch_4
    nop

    :goto_2
    if-eqz v1, :cond_1

    .line 19
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized read()Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->readData()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->createFromJson(Ljava/lang/String;)Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setIndexSeed(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->indexSeed:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->generateIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->index:I

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->indexSeed:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized write(Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil$DataStruct;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpc/sdk/account/utils/EncryptedStorageUtil;->writeData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
