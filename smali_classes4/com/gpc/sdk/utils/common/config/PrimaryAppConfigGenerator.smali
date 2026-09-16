.class public Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PrimaryAppConfigGenerat"


# instance fields
.field private appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/service/appconf/GPCAppConfData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->context:Landroid/content/Context;

    return-void
.end method

.method public static generatePeriodTime(Lorg/json/JSONObject;)Lcom/gpc/sdk/bean/GPCTimePeriod;
    .locals 11

    const-string v0, "endAt"

    const-string v1, "startAt"

    const-string v2, "offset"

    const-string v3, "PrimaryAppConfigGenerat"

    const-string v4, ""

    const-string v5, "GMT"

    .line 1
    new-instance v6, Lcom/gpc/sdk/bean/GPCTimePeriod;

    invoke-direct {v6}, Lcom/gpc/sdk/bean/GPCTimePeriod;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 7
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    const-string v2, "Json offset data is null, using default."

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v2, "-05:00"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 14
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 16
    :try_start_2
    invoke-static {v3, v4, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 20
    const-string v2, "Json offset data is illegal, using default."

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v2, "GMT-05:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 25
    :cond_2
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v7, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->Companion:Lcom/gpc/sdk/bean/GPCEasternStandardTime$Companion;

    invoke-virtual {v7}, Lcom/gpc/sdk/bean/GPCEasternStandardTime$Companion;->getFORMAT_WITHOUT_SECOND()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v4

    .line 33
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    const-wide/16 v7, 0x3e8

    if-nez v2, :cond_4

    .line 35
    :try_start_3
    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {v2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 37
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    div-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 38
    invoke-virtual {v6, v2}, Lcom/gpc/sdk/bean/GPCTimePeriod;->setStartAt(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_1
    move-exception v1

    .line 40
    :try_start_4
    invoke-static {v3, v4, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 47
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_5
    move-object p0, v4

    .line 50
    :goto_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v0, :cond_6

    .line 52
    :try_start_5
    invoke-virtual {v5, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 53
    new-instance v0, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 55
    invoke-virtual {v6, v0}, Lcom/gpc/sdk/bean/GPCTimePeriod;->setEndAt(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_2
    move-exception p0

    .line 57
    :try_start_6
    invoke-static {v3, v4, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 62
    invoke-static {v3, v4, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    return-object v6
.end method


# virtual methods
.method public createPrimaryAppConfig()Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;
    .locals 5

    .line 1
    const-string v0, "PrimaryAppConfigGenerat"

    .line 0
    const-string v1, "metaData:"

    .line 1
    new-instance v2, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    invoke-direct {v2}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;-><init>()V

    .line 3
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCAppConfig;->setId(I)V

    .line 4
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getClientIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCAppConfig;->setClientIP(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->isLocalConfig()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCAppConfig;->setLocalConfig(Z)V

    .line 6
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getNode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCAppConfig;->setNode(Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getProtocolNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCAppConfig;->setProtocolNumber(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getRawString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCAppConfig;->setRawString(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getSource()Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCAppConfig;->setSource(Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;)V

    .line 10
    iget-object v3, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v3}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getUpdateAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCAppConfig;->setUpdateAt(Ljava/lang/String;)V

    .line 12
    const-string v3, ""

    .line 14
    :try_start_0
    iget-object v4, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v4}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getRawString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15
    iget-object v4, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v4}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getRawString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->decryptMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "rawString is null"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 22
    const-string v4, "parse metadata error."

    invoke-static {v0, v4, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :goto_0
    invoke-virtual {v2, v3}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->setMetaData(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getRawString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v1}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getTime()Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->generateGameMaintenance(Ljava/lang/String;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)Lcom/gpc/sdk/bean/GPCGameMaintenance;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->setMaintenance(Lcom/gpc/sdk/bean/GPCGameMaintenance;)V

    .line 27
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getRawString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->generateGameAnnouncements(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGameAnnouncements;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->setAnnouncements(Lcom/gpc/sdk/bean/GPCGameAnnouncements;)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->generateGameFlags(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->setGameFlags(Ljava/lang/Integer;)V

    .line 29
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getRawString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->generateInformType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->setInformType(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->appConfData:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/appconf/GPCAppConfData;->getRawString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->generateAppRatingStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;->setAppRatingStatus(Ljava/lang/String;)V

    return-object v2
.end method

.method public decryptMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "PrimaryAppConfigGenerat"

    const-string v1, "metaData(from json):"

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->decryptMetaDataFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 4
    const-string v2, "parse metadata error."

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->decryptMetaDataFromXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "metaData(from xml):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public decryptMetaDataFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "_"

    invoke-static {p1, v0}, Lcom/gpc/util/DataInterchangeFormatUtils;->getValueByKeyFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string p1, ""

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decryptMetaDataFromXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->context:Landroid/content/Context;

    .line 2
    const-string v2, "_"

    invoke-static {p1, v2}, Lcom/gpc/util/DataInterchangeFormatUtils;->getValueByKeyFromXml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/gpc/sdk/utils/common/GPCServerListDecryptUtil;->decrypt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateAppRatingStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "Misc"

    const-string v1, "PrimaryAppConfigGenerat"

    const-string v2, "modeValue:"

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_0

    .line 5
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "rating"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-static {v1, v4, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v4
.end method

.method public generateGameAnnouncements(Ljava/lang/String;)Lcom/gpc/sdk/bean/GPCGameAnnouncements;
    .locals 8

    const-string v0, "login"

    const-string v1, "forceUpdate"

    const-string v2, "update"

    const-string v3, "content"

    const-string v4, "Messages"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "PrimaryAppConfigGenerat"

    if-eqz v5, :cond_0

    .line 2
    const-string p1, "Appconf data is null."

    invoke-static {v7, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 7
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 10
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    new-instance v4, Lcom/gpc/sdk/bean/GPCGameAnnouncements;

    invoke-direct {v4, p1}, Lcom/gpc/sdk/bean/GPCGameAnnouncements;-><init>(Lorg/json/JSONObject;)V

    .line 12
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 13
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->setUpdate(Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->setMandatoryUpdate(Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 21
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->setOnLogin(Ljava/lang/String;)V

    :cond_3
    return-object v4

    .line 24
    :cond_4
    const-string p1, "Json Messages.content struct is null."

    invoke-static {v7, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 28
    :cond_5
    const-string p1, "Json Update struct is null."

    invoke-static {v7, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p1

    .line 33
    const-string v0, ""

    invoke-static {v7, v0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
.end method

.method public generateGameFlags(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "PrimaryAppConfigGenerat"

    const-string v1, "gameFlags:"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 5
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    const-string p1, "flags"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "game"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 9
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public generateGameMaintenance(Ljava/lang/String;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)Lcom/gpc/sdk/bean/GPCGameMaintenance;
    .locals 13

    const-string v0, "state"

    const-string v1, "isMaintain"

    const-string v2, "maintain"

    const-string v3, "message"

    const-string v4, "bundleURL"

    const-string v5, "maintain_title"

    const-string v6, "title"

    const-string v7, "content"

    const-string v8, "Update"

    const-string v9, "Messages"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "PrimaryAppConfigGenerat"

    if-eqz v10, :cond_0

    .line 2
    const-string p1, "Appconf data is null."

    invoke-static {v11, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    new-instance v10, Lcom/gpc/sdk/bean/GPCGameMaintenance;

    invoke-direct {v10}, Lcom/gpc/sdk/bean/GPCGameMaintenance;-><init>()V

    .line 8
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 12
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 14
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 16
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->setTitle(Ljava/lang/String;)V

    .line 18
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 19
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->setMessage(Ljava/lang/String;)V

    .line 23
    :cond_2
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 24
    const-string p1, "Json Update struct is null."

    invoke-static {v11, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 28
    :cond_3
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 30
    invoke-virtual {v10}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 32
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->setTitle(Ljava/lang/String;)V

    .line 36
    :cond_4
    invoke-virtual {v10}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 38
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->setMessage(Ljava/lang/String;)V

    .line 43
    :cond_5
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 44
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->setBundleURL(Ljava/lang/String;)V

    .line 47
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 48
    const-string p1, "Json isMaintain struct is null."

    invoke-static {v11, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 52
    :cond_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->setState(Ljava/lang/String;)V

    .line 57
    :cond_8
    invoke-static {p1}, Lcom/gpc/sdk/utils/common/config/PrimaryAppConfigGenerator;->generatePeriodTime(Lorg/json/JSONObject;)Lcom/gpc/sdk/bean/GPCTimePeriod;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->setPeriod(Lcom/gpc/sdk/bean/GPCTimePeriod;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    const-string v0, ""

    invoke-static {v11, v0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    invoke-virtual {v10, p2}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->setServerTime(Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    .line 66
    invoke-virtual {v10}, Lcom/gpc/sdk/bean/GPCGameMaintenance;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public generateInformType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "InformedConsent"

    const-string v1, "PrimaryAppConfigGenerat"

    const-string v2, "informType:"

    .line 1
    const-string v3, ""

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    return-object v3

    :catch_1
    move-exception v0

    move-object p1, v3

    .line 12
    :goto_0
    invoke-static {v1, v3, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method
