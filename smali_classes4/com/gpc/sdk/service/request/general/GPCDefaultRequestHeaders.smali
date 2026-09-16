.class public Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultRequestHeaders"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "x-gpc-uiid"

    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCIdsManager;->getUIID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string v1, "x-gpc-udid"

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 7
    const-string v2, "DefaultRequestHeaders"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
