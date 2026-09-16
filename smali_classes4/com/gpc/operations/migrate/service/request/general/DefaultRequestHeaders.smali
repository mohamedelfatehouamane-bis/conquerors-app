.class public Lcom/gpc/operations/migrate/service/request/general/DefaultRequestHeaders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/network/http/request/HTTPRequestHeadersDelegate;


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
    invoke-static {}, Lcom/gpc/operations/migrate/IdsManager;->sharedInstance()Lcom/gpc/operations/migrate/IdsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/IdsManager;->getUIID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    const-string v1, "x-gpc-uiid"

    invoke-static {}, Lcom/gpc/operations/migrate/IdsManager;->sharedInstance()Lcom/gpc/operations/migrate/IdsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/IdsManager;->getUIID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    const-string v1, "x-gpc-udid"

    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/operations/migrate/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 13
    const-string v2, "DefaultRequestHeaders"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/service/request/general/DefaultRequestHeaders;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
