.class public Lcom/gpc/sdk/kit/stub/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/kit/stub/Stub;


# static fields
.field public static final b:Ljava/lang/String; = "InstanceStub"

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Z


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/kit/stub/b;->c:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/sdk/kit/stub/b;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/gpc/sdk/kit/stub/b;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/gpc/sdk/kit/stub/b;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p0, Lcom/gpc/sdk/kit/stub/b;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/gpc/sdk/kit/stub/b;->c:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/gpc/sdk/kit/stub/b;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigning;
    .locals 1

    .line 17
    const-class v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 20
    :cond_0
    const-class p1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    return-object p1
.end method

.method public a(Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;)Lcom/gpc/sdk/apprating/GPCAppRating;
    .locals 1

    .line 21
    const-class v0, Lcom/gpc/sdk/apprating/GPCAppRating;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/gpc/sdk/apprating/GPCAppRating;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/apprating/GPCAppRating;-><init>(Lcom/gpc/sdk/apprating/bean/GPCAppRatingStatus;)V

    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 24
    :cond_0
    const-class p1, Lcom/gpc/sdk/apprating/GPCAppRating;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/apprating/GPCAppRating;

    return-object p1
.end method

.method public a()Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord;
    .locals 1

    .line 25
    const-class v0, Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/blacklistedword/GPCBlackListedWord;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "InstanceStub"

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-static {v1, v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 8
    invoke-static {v1, v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/gpc/sdk/payment/GPCPayment;

    invoke-direct {v0, p1, p2}, Lcom/gpc/sdk/payment/GPCPayment;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V

    .line 27
    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 28
    invoke-virtual {v0, p3}, Lcom/gpc/sdk/payment/GPCPayment;->initialize(Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V

    return-void
.end method

.method public declared-synchronized b()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    const-class v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-virtual {p0}, Lcom/gpc/sdk/kit/stub/b;->i()Lcom/gpc/sdk/account/GPCLogin;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;-><init>(Lcom/gpc/sdk/account/GPCLogin;)V

    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 8
    :cond_0
    const-class v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/gpc/sdk/kit/stub/b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/gpc/sdk/kit/stub/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningV2;
    .locals 2

    .line 2
    const-class v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    sget-object v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->INFORM_TYPE_ASAP:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 5
    :cond_0
    const-class v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()Lcom/gpc/sdk/compliance/GPCCompliance;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/compliance/GPCCompliance;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/compliance/GPCCompliance;

    return-object v0
.end method

.method public declared-synchronized e()Lcom/gpc/sdk/eventcollection/GPCEventCollection;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-class v0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/GPCEventCollection;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 4
    :cond_0
    const-class v0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/eventcollection/GPCEventCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized f()Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-class v0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;

    invoke-direct {v0}, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 4
    :cond_0
    const-class v0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/eventcollection/GPCExperimentalEventCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g()Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;

    return-object v0
.end method

.method public h()Lcom/gpc/sdk/incident/GPCIncidentCollector;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/incident/GPCIncidentCollector;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/incident/GPCIncidentCollector;

    return-object v0
.end method

.method public declared-synchronized i()Lcom/gpc/sdk/account/GPCLogin;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-class v0, Lcom/gpc/sdk/account/GPCLogin;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/account/GPCLogin;

    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/gpc/sdk/account/GPCLogin;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 4
    :cond_0
    const-class v0, Lcom/gpc/sdk/account/GPCLogin;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/account/GPCLogin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j()Lcom/gpc/sdk/payment/GPCPayment;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/GPCPayment;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/GPCPayment;

    return-object v0
.end method

.method public k()Lcom/gpc/sdk/risk/GPCRiskManagement;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/risk/GPCRiskManagement;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/risk/GPCRiskManagement;

    return-object v0
.end method

.method public declared-synchronized l()Lcom/gpc/sdk/storage/GPCStorage;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-class v0, Lcom/gpc/sdk/storage/GPCStorage;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/storage/GPCStorage;

    invoke-direct {v0}, Lcom/gpc/sdk/storage/GPCStorage;-><init>()V

    invoke-static {v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Object;)V

    .line 4
    :cond_0
    const-class v0, Lcom/gpc/sdk/storage/GPCStorage;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/storage/GPCStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m()Lcom/gpc/sdk/translate/GPCTranslator;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/translate/GPCTranslator;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/kit/stub/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/translate/GPCTranslator;

    return-object v0
.end method

.method public onCreate(Lcom/gpc/sdk/kit/stub/d;Landroid/content/Context;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/gpc/sdk/kit/stub/b;->e:Z

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "InstanceStub"

    const-string p2, "already created."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/gpc/sdk/kit/stub/b;->a:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/kit/stub/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    sget-object v0, Lcom/gpc/sdk/kit/stub/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/gpc/sdk/kit/stub/b;->e:Z

    return-void
.end method

.method public onStartUp(Lcom/gpc/sdk/GPCConfigurationProvider;)V
    .locals 0

    return-void
.end method
