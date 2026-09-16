.class public Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/passport/view/IGPCPassportParamsProxy;


# instance fields
.field private headerBackground:Ljava/lang/String;

.field private isForAudting:Z

.field private scenario:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;->scenario:I

    .line 3
    iput-boolean p2, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;->isForAudting:Z

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;->headerBackground:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommonWebViewRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getCommonWebViewRequestHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderBackground()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;->headerBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/gpc/util/MD5;

    invoke-direct {v1}, Lcom/gpc/util/MD5;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_0
    new-instance v2, Lcom/gpc/sdk/service/request/prefixe/ServiceCallDefaultCommonHeadsBuilder;

    const-string v3, "3.0"

    invoke-direct {v2, v0, v1, v3}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallDefaultCommonHeadsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getWebUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, p1, v1}, Lcom/gpc/sdk/service/request/prefixe/IServiceCallCommonHeadsBuilder;->build(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getIsForAudting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;->isForAudting:Z

    return v0
.end method

.method public getScenario()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/account/passport/view/GPCPassportParamsDefaultProxy;->scenario:I

    return v0
.end method
