.class public final synthetic Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/HashMap;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

.field public final synthetic f$5:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

.field public final synthetic f$6:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/sdk/service/request/general/LegacyServiceClient;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iput-object p2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$4:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    iput-object p6, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$5:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    iput-object p7, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$6:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/service/request/general/LegacyServiceClient;

    iget-object v1, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$4:Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;

    iget-object v5, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$5:Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;

    iget-object v6, p0, Lcom/gpc/sdk/service/request/general/LegacyServiceClient$$ExternalSyntheticLambda0;->f$6:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;

    invoke-virtual/range {v0 .. v6}, Lcom/gpc/sdk/service/request/general/LegacyServiceClient;->lambda$getRequestWithCache$0$com-gpc-sdk-service-request-general-LegacyServiceClient(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/Map;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/network/http/request/HTTPRequestConfig;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralCacheRequestListener;)V

    return-void
.end method
