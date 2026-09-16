.class public Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/Module;


# static fields
.field private static final CONF_FILE_NAME:Ljava/lang/String; = "conf.toml.txt"

.field private static final FAMILY_CONF_ERROR_SERVER:Ljava/lang/String; = "error"

.field private static final FAMILY_CONF_ERROR_TIP:Ljava/lang/String; = "familyConf.error"

.field private static final KEY:Ljava/lang/String; = "asxU5HsJC3dsdbDe"

.field public static S_CONF_FILE_NAME:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "LocalConfigManager"

.field private static final VI:Ljava/lang/String; = "1715433702338832"


# instance fields
.field private confTxt:Ljava/lang/String;

.field private configuration:Lcom/gpc/sdk/GPCConfiguration;

.field private context:Landroid/content/Context;

.field private localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

.field private streamConfig:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readConf()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->confTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->readFamilyConfFromTxt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->confTxt:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->confTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LocalConfigManager"

    if-eqz v0, :cond_1

    .line 5
    const-string v0, "read conf error, data is null !!!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "conf txt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->confTxt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/gpc/sdk/utils/modules/familyurl/AdaptedVersionParser;

    invoke-direct {v0}, Lcom/gpc/sdk/utils/modules/familyurl/AdaptedVersionParser;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->confTxt:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/gpc/sdk/utils/modules/familyurl/IParser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->createFromJson(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->isFamilyConfDataError()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 13
    :cond_3
    :goto_0
    const-string v0, " read conf error!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    return-void
.end method

.method private readFamilyConfFromTxt()Ljava/lang/String;
    .locals 4

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->S_CONF_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->S_CONF_FILE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "conf.toml.txt"

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/gpc/util/FileUtils;->isFileExistsInAssets(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "LocalConfigManager"

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "conf file:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not in assets, Please CHECK IT OUT!!!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v0, ""

    return-object v0

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "read conf file:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/gpc/util/FileUtils;->readTxtFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApisUrls()Lcom/gpc/sdk/utils/modules/matcher/IURLsMatcher;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v2, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    const-string v3, "error"

    invoke-direct {v2, v3}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    const-string v4, "familyConf.error"

    invoke-direct {v3, v4}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/matcher/BaseURLMatcher;->URL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/gpc/sdk/utils/modules/familyurl/FamilyApisUrlMatcher;

    invoke-direct {v1, v0}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyApisUrlMatcher;-><init>(Ljava/util/List;)V

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Lcom/gpc/sdk/utils/modules/familyurl/FamilyApisUrlMatcher;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getSystemItem()Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/SystemItem;->getApis()Lcom/gpc/sdk/utils/modules/conf/Apis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/Apis;->getPrefixes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyApisUrlMatcher;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getAppConfUrl(Lcom/gpc/sdk/GPCSDKConstant$CDNType;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    const-string v1, "familyConf.error"

    const-string v2, "error"

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v0, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    invoke-direct {v0, v2}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    invoke-direct {v2, v1}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v2}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getAppConfDomain(Lcom/gpc/sdk/GPCSDKConstant$CDNType;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance p1, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v0, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    invoke-direct {v0, v2}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    invoke-direct {v2, v1}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v2}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    return-object p1

    .line 10
    :cond_1
    new-instance v0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager$a;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager$a;-><init>(Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getAgreementSigningItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-object v0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getAgreementSigningItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$AgreementSigningItem;->getDps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v0, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    const-string v2, "familyConf.error"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v1, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    invoke-direct {v1, p1}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getFamilyItem()Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/conf/FamilyItem;->getGeneralDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    return-object v0
.end method

.method public getIdAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "familyConf.error"

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getFamilyItem()Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/FamilyItem;->getIdAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticsUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v0, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    const-string v2, "familyConf.error"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v1, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    invoke-direct {v1, p1}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getFamilyItem()Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/conf/FamilyItem;->getStaticsDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    return-object v0
.end method

.method public getStreamConfig()Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->streamConfig:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    return-object v0
.end method

.method public getWebUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v0, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    const-string v2, "familyConf.error"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;

    new-instance v1, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;

    invoke-direct {v1, p1}, Lcom/gpc/sdk/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;

    iget-object v2, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getFamilyItem()Lcom/gpc/sdk/utils/modules/conf/FamilyItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/conf/FamilyItem;->getWebDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/gpc/sdk/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/gpc/sdk/utils/modules/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/sdk/utils/modules/matcher/service/IURLService;Lcom/gpc/sdk/utils/modules/matcher/domain/IURLDomain;)V

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 8

    const-string v0, "UTF-8"

    const-string v1, "1715433702338832"

    const-string v2, "asxU5HsJC3dsdbDe"

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->readConf()V

    .line 4
    iget-object v3, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    const-string v4, "LocalConfigManager"

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getEventCollectionItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getEventCollectionItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;

    move-result-object v3

    .line 6
    new-instance v5, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-direct {v5}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;-><init>()V

    iput-object v5, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->streamConfig:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    .line 8
    :try_start_0
    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->getAccessKeyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/gpc/util/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setAccessKeyId(Ljava/lang/String;)V

    .line 9
    iget-object v5, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->streamConfig:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->getSecretKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v6, v2, v0}, Lcom/gpc/util/AESUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setSecretKey(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->streamConfig:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setRegion(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->streamConfig:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    invoke-virtual {v3}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$EventCollectionItem;->getStreamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;->setStreamName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    const-string v1, ""

    invoke-static {v4, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getSystemItem()Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getSystemItem()Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/SystemItem;->getApis()Lcom/gpc/sdk/utils/modules/conf/Apis;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getSystemItem()Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/SystemItem;->getApis()Lcom/gpc/sdk/utils/modules/conf/Apis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/Apis;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getSystemItem()Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/SystemItem;->getApis()Lcom/gpc/sdk/utils/modules/conf/Apis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/Apis;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/GPCConfiguration;->setSecretKey(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_1
    const-string v0, "Parse secret key error!"

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_2
    const-string v0, "set SecretKey yet!"

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getComplianceReviewConfiguration()Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    move-result-object v0

    if-nez v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    .line 30
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getPaymentItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getPaymentItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;->getMockItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    .line 31
    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getPaymentItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;->getMockItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;->getWalletId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32
    new-instance v0, Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->localConf:Lcom/gpc/sdk/utils/modules/conf/LocalConf;

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/LocalConf;->getModuleItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem;->getPaymentItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;->getMockItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;->getWalletId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;->setWalletId(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/GPCConfiguration;->setComplianceReviewConfiguration(Lcom/gpc/sdk/bean/ComplianceReviewConfiguration;)V

    goto :goto_2

    .line 36
    :cond_3
    const-string v0, "complianceReviewConfiguration not config"

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :cond_4
    const-string v0, "set complianceReviewConfiguration yet!"

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onDelayedInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->streamConfig:Lcom/gpc/sdk/eventcollection/internal/bean/StreamConfig;

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->configuration:Lcom/gpc/sdk/GPCConfiguration;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUserIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
