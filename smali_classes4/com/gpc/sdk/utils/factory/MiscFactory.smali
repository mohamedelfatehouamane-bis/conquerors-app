.class public final Lcom/gpc/sdk/utils/factory/MiscFactory;
.super Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "MiscFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;-><init>()V

    return-void
.end method

.method public static getAccountService()Lcom/gpc/sdk/account/service/AccountService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/account/service/AccountService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/account/service/AccountService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/account/service/AccountServiceAGImpl;

    invoke-direct {v0}, Lcom/gpc/sdk/account/service/AccountServiceAGImpl;-><init>()V

    return-object v0
.end method

.method public static getAgreementSigningService()Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/b;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/b;-><init>()V

    return-object v0
.end method

.method public static getAppRatingService()Lcom/gpc/sdk/apprating/service/AppRatingService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/apprating/service/AppRatingService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/apprating/service/AppRatingService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getGeneralUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/gpc/sdk/misc/e;

    invoke-direct {v1, v0}, Lcom/gpc/sdk/misc/e;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V

    return-object v1
.end method

.method public static getCDNUploader()Lcom/gpc/sdk/storage/GPCCDNUploader;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/storage/GPCCDNUploader;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/storage/GPCCDNUploader;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/h;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/h;-><init>()V

    return-object v0
.end method

.method public static getCDNUploaderV2()Lcom/gpc/sdk/storage/GPCCDNUploaderV2;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/storage/GPCCDNUploaderV2;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/storage/GPCCDNUploaderV2;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/i;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/i;-><init>()V

    return-object v0
.end method

.method public static getDeviceService()Lcom/gpc/sdk/push/service/DeviceService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/push/service/DeviceService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/push/service/DeviceService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/k;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/k;-><init>()V

    return-object v0
.end method

.method public static getIncidentService(Landroid/content/Context;)Lcom/gpc/sdk/incident/service/IncidentService;
    .locals 2

    .line 1
    const-class v0, Lcom/gpc/sdk/incident/service/IncidentService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/incident/service/IncidentService;

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is a spy."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiscFactory"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/m;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/misc/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getMobileDeviceService(Landroid/content/Context;)Lcom/gpc/sdk/misc/o;
    .locals 2

    .line 1
    const-class v0, Lcom/gpc/sdk/misc/o;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/misc/o;

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is a spy."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MiscFactory"

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/o;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/misc/o;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getRealNameVerification()Lcom/gpc/sdk/realname/helper/RealNameVerification;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/realname/helper/RealNameVerification;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/realname/helper/RealNameVerification;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/realname/GPCRealNameVerification;

    invoke-direct {v0}, Lcom/gpc/sdk/realname/GPCRealNameVerification;-><init>()V

    return-object v0
.end method

.method public static getRealNameVerificationCacheService()Lcom/gpc/sdk/misc/p;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/misc/p;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/misc/p;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/p;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/p;-><init>()V

    return-object v0
.end method

.method public static getRealNameVerificationService()Lcom/gpc/sdk/realname/service/RealNameVerificationService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/realname/service/RealNameVerificationService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/realname/service/RealNameVerificationService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/r;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/r;-><init>()V

    return-object v0
.end method

.method public static getRiskService()Lcom/gpc/sdk/risk/service/RiskService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/risk/service/RiskService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/risk/service/RiskService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/s;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/s;-><init>()V

    return-object v0
.end method

.method public static getStorageService()Lcom/gpc/sdk/storage/service/StorageService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/storage/service/StorageService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/storage/service/StorageService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/t;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/t;-><init>()V

    return-object v0
.end method

.method public static getTranslationService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/translate/service/TranslationService;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/translate/service/TranslationService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/translate/service/TranslationService;

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a spy."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiscFactory"

    invoke-static {p1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/misc/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/sdk/misc/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
