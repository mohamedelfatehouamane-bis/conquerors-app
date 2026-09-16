.class public Lcom/gpc/sdk/utils/modules/familyurl/AdaptedVersionParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/familyurl/IParser;


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
    const-string v0, "AdaptedVersionParser"

    .line 0
    const-string v1, "signParth:"

    const-string v2, "version:"

    const-string v3, "read conf.toml.txt Plaint size: "

    .line 1
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 5
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    new-instance v8, Lcom/gpc/aws/util/StringInputStream;

    invoke-direct {v8, p1}, Lcom/gpc/aws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 6
    const-string v7, "data"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const-string p1, "parse config Xml error, not found data element."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p1

    .line 21
    const-string v7, "parse config Xml error."

    invoke-static {v0, v7, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v4

    .line 25
    :goto_1
    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvy+yNAQqsGvvmx9QUqM8xmZ6dmzTln6ByDIE2NdPop+oAplXTPTqlauXNYVpzkFFmXv2VRyZzRwQ3q2Re42w34+leleBhNCSUsO/27aNtYAFRdaiy/w2VTS776F2xTPPq79tzPT6Dgp4kbLO2+DZ+W8lZWjUYyGf8YGkR3O9n7aXaSJ/DWqPeYzyoSvkhrrKQ0UdrvuvPuHLgTRQQnFV2SW7AF2m09rYAd1BRljoEC99TIJ5o97nSEiGTDFwEg3DvCxTJHr383r6OZiliIKpCAZgVpc56mj++9uwJ0CzBFoBGzW9W2WsqD1qBQSJLJcIHeE5FN0Geur7FYUmzzEGoQIDAQAB"

    .line 26
    const-string v7, "BYDMF9O4O5QRIZVu/nHyAi6Si1Buib19h5iZJKGo7yQdTDj+h6ewm+Gzl9AGPYkYH6LFoHh9kt5bUDhnqgVZmS+AhkWa+HbUj+RknO0vQGKRtXXm3Rbk3pWKnheZCHInVTNf5EF4AR9WP+0ec6/TbH6snSfoixEBpcxN+AKeko9UawozHIGeRj9I02EBrYOuk8AmxmLdyfkoUQU0XjdL+34CLkA6wrTdnfekB9df6ykKRCDtl1olEVKClo2w3QMH1VdbYFpOPjEWEAsnki1uAR2vH7AqNRaPZ+PriFhCh+EfoGKf7ls3ur8mAkJoIrQYpc6pZyhtSWF6i+DgCJGWrQ=="

    .line 27
    const-string v8, "coqn3OmiZeCjY6liUuQRcS579EO6POIqVHF5g45ZRdUSpROEZMoFtnFL/RE8HJujM98GuPeq6MXLYyew7eYHe9s+5gIqpKetdnGBRA7GfXDBjZbfz06GtPKEzpsC1QrDplAhfBt13u+RjKkaD//ORls09BkzXnQi/DGxRdGlawU2jLWI5NAfsXjTm6lbEMS9YezQ/2ejVeVCSEwtdeV1Sbcu8VkjRJ7ZrzzEnnTI7itwprNpocp8RryUQNeLnMLqXqds4SxxRn95ddtzUhczIVL2XjqvK8bJi8YyL20FM8WhuzwxrP8j/8as0crVl2WaCLiTXr4UY2al+nFdq9Zrbw=="

    .line 30
    :try_start_1
    invoke-static {v4, v7}, Lcom/gpc/util/RSAUtil;->decryptWithRSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 37
    :try_start_2
    invoke-static {v4, v8}, Lcom/gpc/util/RSAUtil;->decryptWithRSA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 43
    :try_start_3
    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {p1, v7, v8}, Lcom/gpc/util/AESUtils;->decryptReturnBytes(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_2

    .line 45
    const-string p1, "decrypt error!"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 48
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v3, 0x4

    .line 57
    :try_start_4
    new-array v7, v3, [B

    .line 59
    invoke-static {p1, v5, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-static {v7}, Lcom/gpc/sdk/utils/modules/familyurl/AdaptedVersionParser;->toInt([B)I

    move-result v7

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v2, v7, :cond_3

    .line 66
    const-string p1, "config file version can\'t match!!!"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 71
    :cond_3
    new-array v2, v3, [B

    .line 72
    invoke-static {p1, v3, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-static {v2}, Lcom/gpc/sdk/utils/modules/familyurl/AdaptedVersionParser;->toInt([B)I

    move-result v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-array v1, v2, [B

    const/16 v3, 0x8

    .line 79
    invoke-static {p1, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    .line 83
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v7, v3, [B

    .line 84
    invoke-static {p1, v2, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v7}, Ljava/lang/String;-><init>([B)V

    .line 90
    new-instance v2, Lcom/gpc/util/MD5;

    invoke-direct {v2}, Lcom/gpc/util/MD5;-><init>()V

    .line 91
    invoke-virtual {v2, p1}, Lcom/gpc/util/MD5;->getMD5ofBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 92
    invoke-static {v4, v2, v1}, Lcom/gpc/util/RSAUtil;->verifyRsaSign(Ljava/lang/String;[B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p1

    .line 96
    :cond_4
    const-string p1, "Verify signature with decrypted json data from config file error!!!!\n"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v6

    .line 100
    :catch_1
    const-string p1, "Parse decrypted json data from config file error!!"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :catch_2
    move-exception p1

    .line 101
    const-string v1, "AESUtils.decrypt Date error!"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6

    :catch_3
    move-exception p1

    .line 102
    const-string v1, "RSAUtil.decryptWithRSA rsaVi Plaint error!"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6

    :catch_4
    move-exception p1

    .line 103
    const-string v1, "RSAUtil.decryptWithRSA rsaKey Plaint error!"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method
