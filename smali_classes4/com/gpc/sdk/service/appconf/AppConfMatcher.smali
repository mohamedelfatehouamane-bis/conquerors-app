.class public Lcom/gpc/sdk/service/appconf/AppConfMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;


# instance fields
.field protected cdnType:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

.field protected configuration:Lcom/gpc/sdk/GPCConfiguration;

.field protected format:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;Lcom/gpc/sdk/GPCSDKConstant$CDNType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    .line 3
    iput-object p4, p0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;->cdnType:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    .line 4
    iput-object p2, p0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;->name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;->format:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

    return-void
.end method


# virtual methods
.method public URL()Ljava/lang/String;
    .locals 9

    .line 2
    sget-object v0, Lcom/gpc/sdk/service/appconf/AppConfMatcher$a;->a:[I

    iget-object v1, p0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;->format:Lcom/gpc/sdk/GPCSDKConstant$GPCAppConfigContentFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ".xml"

    goto :goto_0

    .line 9
    :cond_1
    const-string v0, ".json"

    .line 19
    :goto_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v5

    iget-object v6, p0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;->cdnType:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-virtual {v5, v6}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getAppConfUrl(Lcom/gpc/sdk/GPCSDKConstant$CDNType;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v5

    invoke-interface {v5}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/appconf/%s/%s%s?v=5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v5}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/gpc/sdk/service/appconf/AppConfMatcher;->name:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v6, v7, v2

    aput-object v0, v7, v1

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
