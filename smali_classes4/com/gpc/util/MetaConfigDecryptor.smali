.class public abstract Lcom/gpc/util/MetaConfigDecryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MetaConfigDecryptor"


# instance fields
.field private pixelCol:I

.field private pixelRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charToInt(C)I
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x57

    return p1

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x1d

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private convertToByte(CC)B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/util/MetaConfigDecryptor;->charToInt(C)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3e

    invoke-direct {p0, p2}, Lcom/gpc/util/MetaConfigDecryptor;->charToInt(C)I

    move-result p2

    add-int/2addr p1, p2

    int-to-byte p1, p1

    return p1
.end method

.method private createPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/gpc/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private decryptByRSA([BLjava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 6
    invoke-interface {p2}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    invoke-direct {p0, v0, p1, p2}, Lcom/gpc/util/MetaConfigDecryptor;->rsaSplitCodec(Ljavax/crypto/Cipher;[BI)[B

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method private decryptInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/gpc/util/MetaConfigDecryptor;->encryptDataToBinary(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0}, Lcom/gpc/util/MetaConfigDecryptor;->decryptRSAPKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gpc/util/MetaConfigDecryptor;->createPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/gpc/util/MetaConfigDecryptor;->decryptByRSA([BLjava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method private decryptRSAPKey()Ljava/lang/String;
    .locals 13

    const-string v0, "MetaConfigDecryptor"

    const/4 v1, 0x0

    .line 1
    iput v1, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    .line 2
    iput v1, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/util/MetaConfigDecryptor;->decryptKeyFile()Ljava/io/InputStream;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v8, 0x40

    if-ge v4, v8, :cond_4

    .line 13
    rem-int/lit8 v8, v4, 0x3

    if-nez v8, :cond_0

    .line 15
    iget v8, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    iget v9, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_3

    goto :goto_1

    .line 18
    :cond_0
    rem-int/lit8 v8, v4, 0x3

    if-ne v8, v5, :cond_1

    .line 20
    iget v8, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    iget v9, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_3

    :goto_1
    rsub-int/lit8 v8, v4, 0x3f

    shl-int v8, v5, v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    goto :goto_2

    .line 25
    :cond_1
    iget v8, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    iget v9, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_2

    rsub-int/lit8 v8, v4, 0x3f

    shl-int v8, v5, v8

    int-to-long v8, v8

    or-long/2addr v6, v8

    .line 28
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/gpc/util/MetaConfigDecryptor;->incrementPixel(I)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 32
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "numBytes:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v4, "got number of bytes from overhead"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/gpc/util/MetaConfigDecryptor;->incrementPixel(I)V

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_3
    int-to-long v9, v4

    cmp-long v11, v9, v6

    if-gez v11, :cond_a

    const/4 v9, 0x7

    const/4 v10, 0x0

    :goto_4
    if-ltz v9, :cond_9

    .line 40
    rem-int/lit8 v11, v8, 0x3

    if-nez v11, :cond_5

    .line 42
    iget v11, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    iget v12, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    and-int/2addr v11, v5

    if-ne v11, v5, :cond_8

    goto :goto_5

    .line 45
    :cond_5
    rem-int/lit8 v11, v8, 0x3

    if-ne v11, v5, :cond_6

    .line 47
    iget v11, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    iget v12, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    and-int/2addr v11, v5

    if-ne v11, v5, :cond_8

    :goto_5
    shl-int v11, v5, v9

    or-int/2addr v10, v11

    goto :goto_6

    .line 52
    :cond_6
    iget v11, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    iget v12, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    invoke-virtual {v2, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    and-int/2addr v11, v5

    if-ne v11, v5, :cond_7

    shl-int v11, v5, v9

    or-int/2addr v10, v11

    .line 55
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/gpc/util/MetaConfigDecryptor;->incrementPixel(I)V

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 59
    :cond_9
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 63
    :cond_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 65
    const-string v2, "exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const-string v0, ""

    return-object v0
.end method

.method private encryptDataToBinary(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/gpc/util/MetaConfigDecryptor;->convertToByte(CC)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private incrementPixel(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelCol:I

    .line 4
    iget p1, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gpc/util/MetaConfigDecryptor;->pixelRow:I

    :cond_0
    return-void
.end method

.method private static printHexString([B)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private rsaSplitCodec(Ljavax/crypto/Cipher;[BI)[B
    .locals 5

    .line 1
    div-int/lit8 p3, p3, 0x8

    .line 3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    :try_start_0
    array-length v4, p2

    if-le v4, v2, :cond_1

    .line 9
    array-length v4, p2

    sub-int/2addr v4, v2

    if-le v4, p3, :cond_0

    .line 10
    invoke-virtual {p1, p2, v2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    goto :goto_1

    .line 12
    :cond_0
    array-length v4, p2

    sub-int/2addr v4, v2

    invoke-virtual {p1, p2, v2, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 14
    :goto_1
    array-length v4, v2

    invoke-virtual {v0, v2, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v3, p3

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catch_1
    move-exception p1

    .line 25
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u52a0\u89e3\u5bc6\u9600\u503c\u4e3a["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]\u7684\u6570\u636e\u65f6\u53d1\u751f\u5f02\u5e38"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/util/MetaConfigDecryptor;->decryptInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract decryptKeyFile()Ljava/io/InputStream;
.end method
