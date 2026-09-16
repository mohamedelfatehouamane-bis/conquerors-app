.class public Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerListDecrypt"


# instance fields
.field private pixelCol:I

.field private pixelRow:I


# direct methods
.method public constructor <init>()V
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
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->charToInt(C)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3e

    invoke-direct {p0, p2}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->charToInt(C)I

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
    const-string v0, "ServerListDecrypt"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

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

    invoke-direct {p0, v0, p1, p2}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->rsaSplitCodec(Ljavax/crypto/Cipher;[BI)[B

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2
.end method

.method private decryptRSAPKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    const-string v0, "ServerListDecrypt"

    const/4 v1, 0x0

    .line 1
    iput v1, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    .line 2
    iput v1, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 6
    const-string v2, "gpc_asset_transparent_bg.png"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v7, 0x40

    if-ge v3, v7, :cond_4

    .line 15
    rem-int/lit8 v7, v3, 0x3

    if-nez v7, :cond_0

    .line 17
    iget v7, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    iget v8, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_3

    goto :goto_1

    .line 20
    :cond_0
    rem-int/lit8 v7, v3, 0x3

    if-ne v7, v4, :cond_1

    .line 22
    iget v7, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    iget v8, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_3

    :goto_1
    rsub-int/lit8 v7, v3, 0x3f

    shl-int v7, v4, v7

    int-to-long v7, v7

    or-long/2addr v5, v7

    goto :goto_2

    .line 27
    :cond_1
    iget v7, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    iget v8, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_2

    rsub-int/lit8 v7, v3, 0x3f

    shl-int v7, v4, v7

    int-to-long v7, v7

    or-long/2addr v5, v7

    .line 30
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->incrementPixel(I)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numBytes:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v3, "got number of bytes from overhead"

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->incrementPixel(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_3
    int-to-long v8, v3

    cmp-long v10, v8, v5

    if-gez v10, :cond_a

    const/4 v8, 0x7

    const/4 v9, 0x0

    :goto_4
    if-ltz v8, :cond_9

    .line 42
    rem-int/lit8 v10, v7, 0x3

    if-nez v10, :cond_5

    .line 44
    iget v10, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    iget v11, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    and-int/2addr v10, v4

    if-ne v10, v4, :cond_8

    goto :goto_5

    .line 47
    :cond_5
    rem-int/lit8 v10, v7, 0x3

    if-ne v10, v4, :cond_6

    .line 49
    iget v10, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    iget v11, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    and-int/2addr v10, v4

    if-ne v10, v4, :cond_8

    :goto_5
    shl-int v10, v4, v8

    or-int/2addr v9, v10

    goto :goto_6

    .line 54
    :cond_6
    iget v10, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    iget v11, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v10

    and-int/2addr v10, v4

    if-ne v10, v4, :cond_7

    shl-int v10, v4, v8

    or-int/2addr v9, v10

    .line 57
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->incrementPixel(I)V

    :cond_8
    :goto_6
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 61
    :cond_9
    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 64
    :cond_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    const-string v1, "exception"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const-string p1, ""

    return-object p1
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

    invoke-direct {p0, v3, v2}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->convertToByte(CC)B

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
    iget v0, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelCol:I

    .line 4
    iget p1, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->pixelRow:I

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
.method public decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    :try_start_0
    invoke-direct {p0, p2}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->encryptDataToBinary(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->decryptRSAPKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->createPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->decryptByRSA([BLjava/security/interfaces/RSAPublicKey;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    const-string p2, "ServerListDecrypt"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
