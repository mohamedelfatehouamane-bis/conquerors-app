.class public Lcom/gpc/sdk/risk/GPCRiskManagement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT_REGION_FOR_CHECK_ERROR:Ljava/lang/String; = "OTHER"

.field public static final c:Ljava/lang/String; = "GPCRiskManagement"

.field public static final d:Ljava/lang/String; = "region_cache"

.field public static final e:Ljava/lang/String; = "region_current"


# instance fields
.field public a:Lcom/gpc/sdk/risk/service/RiskService;

.field public b:Lcom/gpc/util/LocalStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getRiskService()Lcom/gpc/sdk/risk/service/RiskService;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/risk/GPCRiskManagement;->a:Lcom/gpc/sdk/risk/service/RiskService;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/risk/GPCRiskManagement;)Lcom/gpc/util/LocalStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/risk/GPCRiskManagement;->b:Lcom/gpc/util/LocalStorage;

    return-object p0
.end method


# virtual methods
.method public checkIfInRegion(Lcom/gpc/sdk/risk/bean/GPCCountryRegion;Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/risk/GPCRiskManagement;->a:Lcom/gpc/sdk/risk/service/RiskService;

    new-instance v1, Lcom/gpc/sdk/risk/GPCRiskManagement$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/gpc/sdk/risk/GPCRiskManagement$a;-><init>(Lcom/gpc/sdk/risk/GPCRiskManagement;Lcom/gpc/sdk/risk/listener/GPCRegionCheckingListener;Lcom/gpc/sdk/risk/bean/GPCCountryRegion;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/risk/service/RiskService;->getCurrentRegion(Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V

    return-void
.end method

.method public getCachedRegion(Landroid/content/Context;Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/gpc/sdk/utils/modules/ModulesManager;->setContext(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "region_cache"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/risk/GPCRiskManagement;->b:Lcom/gpc/util/LocalStorage;

    .line 3
    const-string p1, "region_current"

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->keyExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/risk/GPCRiskManagement;->b:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getCachedRegion] use cached region:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCRiskManagement"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement;->a:Lcom/gpc/sdk/risk/service/RiskService;

    new-instance p2, Lcom/gpc/sdk/risk/GPCRiskManagement$b;

    invoke-direct {p2, p0}, Lcom/gpc/sdk/risk/GPCRiskManagement$b;-><init>(Lcom/gpc/sdk/risk/GPCRiskManagement;)V

    invoke-interface {p1, p2}, Lcom/gpc/sdk/risk/service/RiskService;->getCurrentRegion(Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V

    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/risk/GPCRiskManagement;->a:Lcom/gpc/sdk/risk/service/RiskService;

    new-instance v0, Lcom/gpc/sdk/risk/GPCRiskManagement$c;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/risk/GPCRiskManagement$c;-><init>(Lcom/gpc/sdk/risk/GPCRiskManagement;Lcom/gpc/sdk/risk/listener/GPCGetCachedRegionListener;)V

    const/16 p2, 0xbb8

    const/16 v1, 0x7d0

    invoke-interface {p1, p2, v1, v0}, Lcom/gpc/sdk/risk/service/RiskService;->getCurrentRegion(IILcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V

    return-void
.end method
