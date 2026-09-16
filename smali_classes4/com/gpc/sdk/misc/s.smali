.class public Lcom/gpc/sdk/misc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/risk/service/RiskService;


# static fields
.field public static final c:Ljava/lang/String; = "RiskServiceImpl"

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

.field public final b:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/misc/s;->d:Ljava/util/Map;

    .line 4
    const-string v1, "3000"

    const-string v2, "350102"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string v1, "4000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string v1, "6000"

    const-string v2, "350103"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/factory/Factory;->serviceFactory()Lcom/gpc/sdk/utils/factory/IServiceFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/factory/IServiceFactory;->createService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/s;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    const-string v1, "client-region"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getGeneralUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/s;->b:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    return-void
.end method


# virtual methods
.method public getCurrentRegion(IILcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V
    .locals 9

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/misc/s;->b:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/locale.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v2, p0, Lcom/gpc/sdk/misc/s;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v8, Lcom/gpc/sdk/misc/s$b;

    invoke-direct {v8, p0, p3}, Lcom/gpc/sdk/misc/s$b;-><init>(Lcom/gpc/sdk/misc/s;Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-interface/range {v2 .. v8}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;IILcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public getCurrentRegion(Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/misc/s;->b:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/locale.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/misc/s;->a:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v2, Lcom/gpc/sdk/misc/s$a;

    invoke-direct {v2, p0, p1}, Lcom/gpc/sdk/misc/s$a;-><init>(Lcom/gpc/sdk/misc/s;Lcom/gpc/sdk/risk/service/OnCurrentRegionListener;)V

    const/4 p1, 0x0

    invoke-interface {v1, v0, p1, p1, v2}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method
