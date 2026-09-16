.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;
.implements Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;


# static fields
.field public static INFORM_TYPE_ASAP:Ljava/lang/String; = "asap"

.field public static INFORM_TYPE_KINDLY:Ljava/lang/String; = "kindly"

.field public static LAST_SIGNING_TIMESTAMP:Ljava/lang/String; = "last_signing_timestamp_v2"

.field public static SIGNING_STATUS_PROFILE:Ljava/lang/String; = "signing_status.profile"

.field public static final TAG:Ljava/lang/String; = "GPCAgreementSigning"


# instance fields
.field public a:Lcom/gpc/util/LocalStorage;

.field public b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

.field public c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

.field public d:Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;

.field public e:Ljava/lang/String;

.field public f:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

.field public g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

.field public h:Lcom/gpc/sdk/misc/c;

.field public i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

.field public j:Lcom/gpc/sdk/misc/d;

.field public k:Lcom/gpc/sdk/misc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/util/LocalStorage;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->SIGNING_STATUS_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a:Lcom/gpc/util/LocalStorage;

    .line 38
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e:Ljava/lang/String;

    .line 39
    new-instance p1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningDefaultCompatProxy;

    invoke-direct {p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningDefaultCompatProxy;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    .line 40
    new-instance p1, Lcom/gpc/sdk/misc/d;

    invoke-direct {p1}, Lcom/gpc/sdk/misc/d;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    .line 41
    new-instance p1, Lcom/gpc/sdk/misc/a;

    invoke-direct {p1}, Lcom/gpc/sdk/misc/a;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->k:Lcom/gpc/sdk/misc/a;

    .line 42
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getAgreementSigningService()Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    .line 43
    new-instance p1, Lcom/gpc/sdk/misc/c;

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->k:Lcom/gpc/sdk/misc/a;

    invoke-direct {p1, v0}, Lcom/gpc/sdk/misc/c;-><init>(Lcom/gpc/sdk/misc/a;)V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    .line 44
    new-instance p1, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;

    invoke-direct {p1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerification;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->f:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->d:Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;

    return-object p1
.end method

.method public static synthetic a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/util/LocalStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a:Lcom/gpc/util/LocalStorage;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    return-object p0
.end method

.method public static synthetic d(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->f:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    return-object p0
.end method

.method public static synthetic e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    return-object p0
.end method

.method public static synthetic f(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->k:Lcom/gpc/sdk/misc/a;

    return-object p0
.end method

.method public static lastSigningTimestampKey(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->LAST_SIGNING_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;)Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"id\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"version\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"innerVersion\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getInnerVersion()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 44
    invoke-virtual {p0, v3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    .line 46
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_2
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 35
    const-string p2, "GPCAgreementSigning"

    const-string v1, ""

    invoke-static {p2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 6

    .line 17
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "GPCAgreementSigning"

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/gpc/sdk/misc/d;->a(Ljava/lang/String;Z)V

    .line 20
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/gpc/sdk/misc/d;->b(Ljava/lang/String;Z)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CMP] presignedCacheCommonState session invalid. the user id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "[CMP] presignedCacheCommonState session valid. the user id:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Lcom/gpc/sdk/misc/d;->a(Ljava/lang/String;Z)V

    .line 25
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/misc/d;->a(Z)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V
    .locals 6

    .line 6
    new-instance v0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;-><init>()V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setPopUp(I)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v1}, Lcom/gpc/sdk/misc/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setUserRegion(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningStatusValue(I)V

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v1}, Lcom/gpc/sdk/misc/d;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v1}, Lcom/gpc/sdk/misc/d;->d()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getDps()Ljava/util/List;

    move-result-object v1

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v2}, Lcom/gpc/sdk/misc/d;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v2}, Lcom/gpc/sdk/misc/d;->e()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 12
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[CMP] checkAgreementsPendingSigning postphoned status popup:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getPopUp()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPCAgreementSigning"

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[CMP] checkAgreementsPendingSigning postphoned status value:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningStatusValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[CMP] checkAgreementsPendingSigning postphoned agrees:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[CMP] checkAgreementsPendingSigning postphoned disagrees:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, v0, v1, v2}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;->onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public checkAgreementsPendingSigning(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->checkAgreementsPendingSigning(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V

    return-void
.end method

.method public checkAgreementsPendingSigning(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->i()Z

    move-result v0

    const-string v1, "GPCAgreementSigning"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    const-string p1, "[CMP] checkAgreementsPendingSigning:The user has already performed operations without logging in"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/misc/d;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/misc/d;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    const-string p1, "[CMP] checkAgreementsPendingSigning:The user has logged in and has performed operations"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V

    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->signing()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;

    invoke-direct {v2, p0, v0, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V

    invoke-virtual {v1, p1, v2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->checkAgreementsPendingSigning(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    return-void
.end method

.method public checkCOPPAStatus(Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$e;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$e;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method

.method public checkCOPPAStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$d;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$d;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/misc/c;->checkCOPPAStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V

    return-void
.end method

.method public presigned(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] presigned file:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodePresigned(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/misc/d;->a(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1, v3}, Lcom/gpc/sdk/misc/d;->b(I)V

    .line 7
    invoke-virtual {p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a()V

    return-void
.end method

.method public presignedEUSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] presignedEUSpecialConditions file:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[CMP] presignedEUSpecialConditions agrees:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[CMP] presignedEUSpecialConditions disagrees:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, p3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodePresigned(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/misc/d;->a(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1}, Lcom/gpc/sdk/misc/d;->d()Ljava/util/List;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->e()Ljava/util/List;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 14
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 16
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 17
    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 26
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz p3, :cond_4

    .line 29
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 30
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[CMP] presignedEUSpecialConditions cache agree:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[CMP] presignedEUSpecialConditions cache disagree:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getDps()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_8

    .line 39
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 41
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 43
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :cond_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 50
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 58
    :cond_8
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/misc/d;->b(Ljava/util/List;)V

    .line 59
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/misc/d;->c(Ljava/util/List;)V

    .line 61
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1, v5}, Lcom/gpc/sdk/misc/d;->b(I)V

    .line 62
    invoke-virtual {p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a()V

    return-void
.end method

.method public presignedKRSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] presignedKRSpecialConditions file:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[CMP] presignedKRSpecialConditions value:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodePresigned(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/misc/d;->a(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/misc/d;->a(I)V

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->j:Lcom/gpc/sdk/misc/d;

    invoke-virtual {p1, v4}, Lcom/gpc/sdk/misc/d;->b(I)V

    .line 9
    invoke-virtual {p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a()V

    return-void
.end method

.method public requestAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->d:Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;->getAgreements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->d:Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;->getAgreements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->d:Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAssignedAgreements;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$j;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$j;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;->requestAssignedAgreementsForSetting(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestListener;)V

    return-void
.end method

.method public requestGuardianVerificationState(Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getWebSSOToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getWebSSOToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    new-instance v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$h;

    invoke-direct {v2, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$h;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V

    invoke-interface {v1, v0, v2}, Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;->requestGuardianVerificationState(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCGuardianVerificationRequestListener;)V

    return-void
.end method

.method public requestStatus(Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a:Lcom/gpc/util/LocalStorage;

    iget-object v3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    invoke-static {v3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->lastSigningTimestampKey(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setPopUp(I)V

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->setAgreementSigningStatusValue(I)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method

.method public restoreAllAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V
    .locals 2

    .line 1
    const-string v0, "GPCAgreementSigning"

    const-string v1, "[CMP] restoreAllAgreements."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$c;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$c;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/misc/c;->restoreAllAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V

    return-void
.end method

.method public restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V
    .locals 2

    .line 1
    const-string v0, "GPCAgreementSigning"

    const-string v1, "[CMP] restoreAssignedAgreements."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/misc/c;->restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V

    return-void
.end method

.method public setCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    const-string v0, "GPCAgreementSigning"

    const-string v1, "setCompatProxy"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    .line 3
    new-instance v0, Lcom/gpc/sdk/misc/b;

    invoke-direct {v0}, Lcom/gpc/sdk/misc/b;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    .line 4
    new-instance v0, Lcom/gpc/sdk/misc/c;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->k:Lcom/gpc/sdk/misc/a;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/misc/c;-><init>(Lcom/gpc/sdk/misc/a;)V

    iput-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->setAgreementSigningService(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->setAgreementSigningServiceV2(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->setAgreementSigningCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->f:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    if-eqz v0, :cond_2

    .line 15
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->setAgreementSigningService(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;)V

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->setAgreementSigningServiceV2(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;)V

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->setAgreementSigningCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->f:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$a;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;->setGuardianVerificationCompatProxy(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationCompatProxy;)V

    return-void
.end method

.method public setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V
    .locals 2

    .line 1
    const-string v0, "GPCAgreementSigning"

    const-string v1, "setGuardianVerification"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->f:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    return-void
.end method

.method public setTimeout(J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] setTimeout "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/misc/c;->a(J)V

    return-void
.end method

.method public sign(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$f;

    invoke-direct {v1, p0, p2, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$f;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method

.method public sign(Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    invoke-static {v0}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signKRSpecialConditions(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$g;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;I)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method

.method public signing()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->setAgreementSigningService(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->setAgreementSigningServiceV2(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->setAgreementSigningCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->f:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    return-object v0
.end method

.method public termination()Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->g:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->setAgreementSigningService(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->h:Lcom/gpc/sdk/misc/c;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->setAgreementSigningServiceV2(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->setAgreementSigningCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;

    return-object v0
.end method

.method public updateUserConsent(Ljava/util/List;Ljava/util/List;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] updateUserConsent agrees:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[CMP] updateUserConsent disagrees:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->i:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$l;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method
