.class public Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigAdaptedVersionParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/familyurl/IParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreDebugConfigAdaptedVersionParser"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toInt([B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "PreDebugConfigAdaptedVersionParser"

    const-string v1, "signParth:"

    const-string v2, "version:"

    const-string v3, "read conf.toml.txt Plaint size: "

    .line 1
    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1X1I0rI69gTNDF5RtBWZzvrQl1cnv9e552KPwXzo48klqJiBop8TFrUrnZVKDhCtSSXgRtTtW1r6/i8Rc+z8DLuYZKtU4RwUsw3CDu1AKwjEg40ggXYk4Atz3ymgzeYhqqQbU6YNUtRZ0Y+LpGQCJ1xXj4MMoalAQWr/CJ4tLKe9aIubWht9G5GEqmiVz3+ceTPfjSffNS4udLDiBeggK9bmEzCb5eGnUCLXE+psSKNemOTdTUfw3ByY4q+GA4ISb2UDeqebZRzC7sylEyyJQlxOnzh5XzpZNOVkwN7pTRwUodZRRBEF3m4nGEhB7BCt0mvIJQLXR6PlYe8YFuYX4wIDAQAB"

    .line 2
    const-string v5, "cF9djis+06bbGF2ncFn61Rw1hjAX4x/voOAOtgBQriEBLsHGWV7jEDw48s92JLITJ9fz/GmgNPjMK+Gk38MFOFZwJckZ0l79Um/MlaK3y/SOix8JE8pQ46M67i+2UhfOO8yPynfRXGrf00ltM4I+FLGFsb4Efg2YHAelLsVzoGRN6s7ArPrLLMiU5pQGQZ87tB60Eo+34BYQTpGYZ6Iyl/CEhQ80HzXAWjHnbl5DPnP4uSPTlE3LEo9tXHeJzm8FOywp3/nurHdyXqeOVz7GFKO91T9A/Ci43wDLJ+mMuQaYpqKAeaF+X9j4fcMTEWpiQz4NiYxrFYwCNmCVTaJNrw=="

    .line 3
    const-string v6, "WxMroP9X+2KuWPWVP4YWcFsDyM3AqizaEa7um3TUzPdgaUIOBdOpVDSd7hYK7j28tR3EGZRG4lkiGVLW/93IzMspHDEEZ28wkp7W36lxd6c6Zh68v1WM323i6sp92tQefZxklIJR4Xn4UG81lQib97GWgqXOaDDY6IfI43ao3qRxiFqogIIs9/ArQSe4pNST2FtafPR1S4LpQgslaAb59wueAaiNxvE9CIUDiGnCbufJz4wrOBl8FGt5IqtSKjLz/isvZWhHLud21amxVIifiV8FDlhV7Wqa4JxOkHOY9LT9R55n1GKNTBr3huFSOZyzJPEG3Csk/e7nNXRwLMN1rg=="

    const/4 v7, 0x0

    .line 6
    :try_start_0
    invoke-static {v4, v5}, Lcom/gpc/util/RSAUtil;->decryptWithRSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 13
    :try_start_1
    invoke-static {v4, v6}, Lcom/gpc/util/RSAUtil;->decryptWithRSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 19
    :try_start_2
    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/gpc/util/AESUtils;->decryptReturnBytes(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_0

    .line 21
    const-string p1, "decrypt error!"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 24
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x4

    .line 33
    :try_start_3
    new-array v5, v3, [B

    const/4 v6, 0x0

    .line 35
    invoke-static {p1, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-static {v5}, Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigAdaptedVersionParser;->toInt([B)I

    move-result v5

    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v2, v5, :cond_1

    .line 42
    const-string p1, "config file version can\'t match!!!"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 47
    :cond_1
    new-array v2, v3, [B

    .line 48
    invoke-static {p1, v3, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-static {v2}, Lcom/gpc/sdk/utils/modules/preenv/PreDebugConfigAdaptedVersionParser;->toInt([B)I

    move-result v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-array v1, v2, [B

    const/16 v3, 0x8

    .line 55
    invoke-static {p1, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    .line 59
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v5, v3, [B

    .line 60
    invoke-static {p1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5}, Ljava/lang/String;-><init>([B)V

    .line 66
    new-instance v2, Lcom/gpc/util/MD5;

    invoke-direct {v2}, Lcom/gpc/util/MD5;-><init>()V

    .line 67
    invoke-virtual {v2, p1}, Lcom/gpc/util/MD5;->getMD5ofBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 68
    invoke-static {v4, v2, v1}, Lcom/gpc/util/RSAUtil;->verifyRsaSign(Ljava/lang/String;[B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    .line 72
    :cond_2
    const-string p1, "Verify signature with decrypted json data from config file error!!!!\n"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v7

    .line 76
    :catch_0
    const-string p1, "Parse decrypted json data from config file error!!"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :catch_1
    move-exception p1

    .line 77
    const-string v1, "AESUtils.decrypt Date error!"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7

    :catch_2
    move-exception p1

    .line 78
    const-string v1, "RSAUtil.decryptWithRSA rsaVi Plaint error!"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7

    :catch_3
    move-exception p1

    .line 79
    const-string v1, "RSAUtil.decryptWithRSA rsaKey Plaint error!"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7
.end method
