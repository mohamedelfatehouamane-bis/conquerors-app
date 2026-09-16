.class public Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final CONF_FILE_NAME:Ljava/lang/String; = "conf.toml.txt"

.field private static final FAMILY_CONF_ERROR_SERVER:Ljava/lang/String; = "error"

.field private static final FAMILY_CONF_ERROR_TIP:Ljava/lang/String; = "familyConf.error"

.field private static final SIGN_SIZE:I = 0x4

.field public static S_CONF_FILE_NAME:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "FamilyUrlManager"


# instance fields
.field private configuration:Lcom/gpc/operations/migrate/Configuration;

.field private context:Landroid/content/Context;

.field private familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

.field private familyConfTxt:Ljava/lang/String;


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

.method private readFamilyConf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConfTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->readFamilyConfFromTxt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConfTxt:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConfTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FamilyUrlManager"

    if-eqz v0, :cond_1

    .line 5
    const-string v0, "OperationsSDK read family conf error,data is null !"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "familyConfTxt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConfTxt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/gpc/operations/migrate/familyurl/AdaptedVersionParser;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/familyurl/AdaptedVersionParser;-><init>()V

    .line 10
    new-instance v2, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    iget-object v3, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConfTxt:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/gpc/operations/migrate/familyurl/IParser;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    .line 11
    invoke-virtual {v2}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->isFamilyConfDataError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    const-string v0, " read family conf error!"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    :cond_2
    return-void
.end method

.method private readFamilyConfFromTxt()Ljava/lang/String;
    .locals 4

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->S_CONF_FILE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->S_CONF_FILE_NAME:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "conf.toml.txt"

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/FileHelper;->isFileExistsInAssets(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "FamilyUrlManager"

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

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/gpc/operations/migrate/utils/FileHelper;->readTxtFileFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApisUrls()Lcom/gpc/operations/migrate/utils/modules/matcher/IURLsMatcher;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;

    new-instance v2, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;

    const-string v3, "error"

    invoke-direct {v2, v3}, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;

    const-string v4, "familyConf.error"

    invoke-direct {v3, v4}, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;)V

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/matcher/BaseURLMatcher;->URL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/gpc/operations/migrate/familyurl/FamilyApisUrlMatcher;

    invoke-direct {v1, v0}, Lcom/gpc/operations/migrate/familyurl/FamilyApisUrlMatcher;-><init>(Ljava/util/List;)V

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Lcom/gpc/operations/migrate/familyurl/FamilyApisUrlMatcher;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getApis()Lcom/gpc/operations/migrate/bean/conf/Apis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/conf/Apis;->getPrefixes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/gpc/operations/migrate/familyurl/FamilyApisUrlMatcher;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getGeneralUrl(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;

    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;

    const-string v2, "familyConf.error"

    invoke-direct {v1, v2}, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;)V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;

    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;

    invoke-direct {v1, p1}, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;

    iget-object v2, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getFamily()Lcom/gpc/operations/migrate/bean/conf/Family;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/bean/conf/Family;->getGeneralDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;)V

    return-object v0
.end method

.method public getIdAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "familyConf.error"

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getFamily()Lcom/gpc/operations/migrate/bean/conf/Family;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/conf/Family;->getIdAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStaticsUrl(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;

    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;

    const-string v2, "familyConf.error"

    invoke-direct {v1, v2}, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;)V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;

    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;

    invoke-direct {v1, p1}, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;

    iget-object v2, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getFamily()Lcom/gpc/operations/migrate/bean/conf/Family;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/bean/conf/Family;->getStaticsDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;)V

    return-object v0
.end method

.method public getWebUrl(Ljava/lang/String;)Lcom/gpc/operations/migrate/utils/modules/matcher/IURLMatcher;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;

    new-instance v0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;

    const-string v2, "familyConf.error"

    invoke-direct {v1, v2}, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;)V

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;

    new-instance v1, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;

    invoke-direct {v1, p1}, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NormalURLService;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;

    iget-object v2, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getFamily()Lcom/gpc/operations/migrate/bean/conf/Family;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/bean/conf/Family;->getWebDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/gpc/operations/migrate/utils/modules/matcher/domain/NormalURLDomain;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlMatcher;-><init>(Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;Lcom/gpc/operations/migrate/utils/modules/matcher/domain/IURLDomain;)V

    return-object v0
.end method

.method public onAsyncInit()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->readFamilyConf()V

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/Configuration;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FamilyUrlManager"

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getApis()Lcom/gpc/operations/migrate/bean/conf/Apis;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getApis()Lcom/gpc/operations/migrate/bean/conf/Apis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/bean/conf/Apis;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    iget-object v1, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConf:Lcom/gpc/operations/migrate/bean/conf/FamilyConf;

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getApis()Lcom/gpc/operations/migrate/bean/conf/Apis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/bean/conf/Apis;->getSecretKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/Configuration;->setSecretKey(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    const-string v0, "Parse secret key error!"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    const-string v0, "set SecretKey yet!"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/gpc/operations/migrate/Configuration;->getFamilyConfTxt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->familyConfTxt:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/migrate/familyurl/FamilyUrlManager;->configuration:Lcom/gpc/operations/migrate/Configuration;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
