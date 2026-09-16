.class public Lcom/gpc/operations/migrate/familyurl/AdaptedVersionParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/familyurl/IParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptedVersionParser"

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
    .locals 10

    .line 1
    const-string v0, "UTF-8"

    const-string v1, "AdaptedVersionParser"

    .line 0
    const-string v2, "signParth:"

    const-string v3, "version:"

    const-string v4, "read conf.toml.txt Plaint size: "

    .line 1
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 5
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v9, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 6
    const-string v8, "data"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const-string p1, "parse config Xml error, not found data element."

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    .line 21
    const-string v8, "parse config Xml error."

    invoke-static {v1, v8, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v5

    .line 25
    :goto_1
    const-string v5, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvy+yNAQqsGvvmx9QUqM8xmZ6dmzTln6ByDIE2NdPop+oAplXTPTqlauXNYVpzkFFmXv2VRyZzRwQ3q2Re42w34+leleBhNCSUsO/27aNtYAFRdaiy/w2VTS776F2xTPPq79tzPT6Dgp4kbLO2+DZ+W8lZWjUYyGf8YGkR3O9n7aXaSJ/DWqPeYzyoSvkhrrKQ0UdrvuvPuHLgTRQQnFV2SW7AF2m09rYAd1BRljoEC99TIJ5o97nSEiGTDFwEg3DvCxTJHr383r6OZiliIKpCAZgVpc56mj++9uwJ0CzBFoBGzW9W2WsqD1qBQSJLJcIHeE5FN0Geur7FYUmzzEGoQIDAQAB"

    .line 26
    const-string v8, "BYDMF9O4O5QRIZVu/nHyAi6Si1Buib19h5iZJKGo7yQdTDj+h6ewm+Gzl9AGPYkYH6LFoHh9kt5bUDhnqgVZmS+AhkWa+HbUj+RknO0vQGKRtXXm3Rbk3pWKnheZCHInVTNf5EF4AR9WP+0ec6/TbH6snSfoixEBpcxN+AKeko9UawozHIGeRj9I02EBrYOuk8AmxmLdyfkoUQU0XjdL+34CLkA6wrTdnfekB9df6ykKRCDtl1olEVKClo2w3QMH1VdbYFpOPjEWEAsnki1uAR2vH7AqNRaPZ+PriFhCh+EfoGKf7ls3ur8mAkJoIrQYpc6pZyhtSWF6i+DgCJGWrQ=="

    .line 27
    const-string v9, "coqn3OmiZeCjY6liUuQRcS579EO6POIqVHF5g45ZRdUSpROEZMoFtnFL/RE8HJujM98GuPeq6MXLYyew7eYHe9s+5gIqpKetdnGBRA7GfXDBjZbfz06GtPKEzpsC1QrDplAhfBt13u+RjKkaD//ORls09BkzXnQi/DGxRdGlawU2jLWI5NAfsXjTm6lbEMS9YezQ/2ejVeVCSEwtdeV1Sbcu8VkjRJ7ZrzzEnnTI7itwprNpocp8RryUQNeLnMLqXqds4SxxRn95ddtzUhczIVL2XjqvK8bJi8YyL20FM8WhuzwxrP8j/8as0crVl2WaCLiTXr4UY2al+nFdq9Zrbw=="

    .line 30
    :try_start_1
    invoke-static {v5, v8}, Lcom/gpc/operations/utils/RSAUtil;->decryptWithRSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 37
    :try_start_2
    invoke-static {v5, v9}, Lcom/gpc/operations/utils/RSAUtil;->decryptWithRSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 43
    :try_start_3
    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v8, v0}, Lcom/gpc/operations/migrate/utils/AESUtils;->decryptReturnBytes(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_2

    .line 45
    const-string p1, "decrypt error!"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v0, 0x4

    .line 57
    :try_start_4
    new-array v4, v0, [B

    .line 59
    invoke-static {p1, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-static {v4}, Lcom/gpc/operations/migrate/familyurl/AdaptedVersionParser;->toInt([B)I

    move-result v4

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eq v3, v4, :cond_3

    .line 66
    const-string p1, "config file version can\'t match!!!"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 71
    :cond_3
    new-array v3, v0, [B

    .line 72
    invoke-static {p1, v0, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-static {v3}, Lcom/gpc/operations/migrate/familyurl/AdaptedVersionParser;->toInt([B)I

    move-result v0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-array v2, v0, [B

    const/16 v3, 0x8

    .line 79
    invoke-static {p1, v3, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    .line 83
    array-length v3, p1

    sub-int/2addr v3, v0

    new-array v4, v3, [B

    .line 84
    invoke-static {p1, v0, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([B)V

    .line 90
    new-instance v0, Lcom/gpc/operations/migrate/utils/MD5;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/MD5;-><init>()V

    .line 91
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/MD5;->getMD5ofBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    invoke-static {v5, v0, v2}, Lcom/gpc/operations/utils/RSAUtil;->verifyRsaSign(Ljava/lang/String;[B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 96
    :cond_4
    const-string p1, "Verify signature with decrypted json data from config file error!!!!\n"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v7

    .line 100
    :catch_1
    const-string p1, "Parse decrypted json data from config file error!!"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :catch_2
    move-exception p1

    .line 101
    const-string v0, "AESUtils.decrypt Date error!"

    invoke-static {v1, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7

    :catch_3
    move-exception p1

    .line 102
    const-string v0, "RSAUtil.decryptWithRSA rsaVi Plaint error!"

    invoke-static {v1, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7

    :catch_4
    move-exception p1

    .line 103
    const-string v0, "RSAUtil.decryptWithRSA rsaKey Plaint error!"

    invoke-static {v1, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7
.end method
