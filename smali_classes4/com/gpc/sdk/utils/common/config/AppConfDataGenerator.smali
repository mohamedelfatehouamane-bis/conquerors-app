.class public Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final STORAGE_VERSION:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "AppConfDataGenerator"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;->context:Landroid/content/Context;

    return-void
.end method

.method public static toJson(Lcom/gpc/sdk/service/appconf/GPCAppConfData;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "updateAt"

    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getUpdateAt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    const-string v1, "rawString"

    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getRawString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v1, "protocolNumber"

    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getProtocolNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getSource()Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    const-string v1, "source"

    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getSource()Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    :cond_0
    const-string v1, "localTimestamp"

    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getLocalTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 12
    const-string v1, "_version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "_configType"

    invoke-virtual {p0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getConfigType()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 16
    const-string v0, "AppConfDataGenerator"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/gpc/sdk/bean/GPCExternalAppConfig;)Lcom/gpc/sdk/service/appconf/GPCAppConfData;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->isLocalConfig()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setLocalConfig(Z)V

    .line 3
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->getRaw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setRawString(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setLocalTimestamp(J)V

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->getXData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;->parseXData(Lcom/gpc/sdk/service/appconf/GPCAppConfData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    const-string v1, "AppConfDataGenerator"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCExternalAppConfig;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setConfigType(I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    .line 13
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setConfigType(I)V

    :goto_1
    return-object v0
.end method

.method public create(Landroid/content/Context;Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;Ljava/lang/String;)Lcom/gpc/sdk/service/appconf/GPCAppConfData;
    .locals 3

    .line 14
    new-instance v0, Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setLocalConfig(Z)V

    .line 16
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setRawString(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setLocalTimestamp(J)V

    .line 18
    const-string p3, "x-gpc-meta"

    invoke-virtual {p2, p3}, Lcom/gpc/sdk/service/network/http/response/HTTPResponseLowerCaseHeaders;->getHeadersWithLowerCaseKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 21
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;->parseXData(Lcom/gpc/sdk/service/appconf/GPCAppConfData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 25
    const-string p2, "AppConfDataGenerator"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public create(Ljava/lang/String;)Lcom/gpc/sdk/service/appconf/GPCAppConfData;
    .locals 10

    const-string v0, "_configType"

    const-string v1, "localTimestamp"

    const-string v2, "source"

    const-string v3, "protocolNumber"

    const-string v4, "rawString"

    const-string v5, "updateAt"

    const-string v6, "id"

    .line 26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    return-object v8

    .line 30
    :cond_0
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance p1, Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    iget-object v9, p0, Lcom/gpc/sdk/utils/common/config/AppConfDataGenerator;->context:Landroid/content/Context;

    invoke-direct {p1, v9}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 33
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setId(I)V

    .line 35
    :cond_1
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 36
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setUpdateAt(Ljava/lang/String;)V

    .line 38
    :cond_2
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 39
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setRawString(Ljava/lang/String;)V

    .line 41
    :cond_3
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 42
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setProtocolNumber(Ljava/lang/String;)V

    .line 44
    :cond_4
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 45
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    goto :goto_0

    .line 48
    :cond_5
    sget-object v2, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->UNKNOWN:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    invoke-virtual {p1, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    .line 50
    :goto_0
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 51
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setLocalTimestamp(J)V

    .line 54
    :cond_6
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 55
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setConfigType(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object p1

    :catch_0
    move-exception p1

    .line 59
    const-string v0, "AppConfDataGenerator"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v8
.end method

.method public parseXData(Lcom/gpc/sdk/service/appconf/GPCAppConfData;Ljava/lang/String;)V
    .locals 9

    const-string v0, "ip:"

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/gpc/util/collection/Arrays;->isValid([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 4
    aget-object v2, p2, v1

    .line 5
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcom/gpc/util/collection/Arrays;->isValid([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 8
    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setProtocolNumber(Ljava/lang/String;)V

    .line 10
    aget-object v1, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 11
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setId(I)V

    .line 13
    aget-object v1, v2, v4

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setUpdateAt(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 15
    aget-object v1, v2, v1

    .line 16
    const-string v3, "21"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->REMOTE:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    goto :goto_0

    .line 18
    :cond_0
    const-string v3, "11"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->LOCAL:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    goto :goto_0

    .line 20
    :cond_1
    const-string v3, "12"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->RESCUE:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    goto :goto_0

    .line 23
    :cond_2
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->UNKNOWN:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    :goto_0
    const/4 v1, 0x4

    .line 27
    aget-object v1, v2, v1

    .line 28
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setNode(Ljava/lang/String;)V

    .line 32
    :cond_3
    aget-object v1, p2, v5

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "serviceTime:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "AppConfDataGenerator"

    invoke-static {v6, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v3, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {v3}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 35
    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 36
    invoke-virtual {p1, v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setTime(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    .line 38
    aget-object p2, p2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clientInfo[1]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :try_start_0
    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/gpc/util/network/IPUtils;->longToIP(J)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const-string p2, ""

    .line 47
    :catch_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->setClientIP(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
