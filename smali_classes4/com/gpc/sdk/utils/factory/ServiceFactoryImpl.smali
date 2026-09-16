.class public Lcom/gpc/sdk/utils/factory/ServiceFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/factory/IServiceFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCGIService()Lcom/gpc/sdk/service/request/cgi/ICGIService;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/cgi/CGIService;

    invoke-direct {v0}, Lcom/gpc/sdk/service/request/cgi/CGIService;-><init>()V

    return-object v0
.end method

.method public createService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    invoke-direct {v0}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;-><init>()V

    return-object v0
.end method
