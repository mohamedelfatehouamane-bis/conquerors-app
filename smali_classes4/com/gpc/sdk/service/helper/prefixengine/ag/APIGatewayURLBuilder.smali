.class public Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "APIGatewayURLBuilder"


# instance fields
.field private final DEFAULT_LINKS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/matcher/IURLsMatcher;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->DEFAULT_LINKS:Ljava/util/List;

    .line 9
    invoke-interface {p1}, Lcom/gpc/sdk/utils/modules/matcher/IURLsMatcher;->URLs()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->DEFAULT_LINKS:Ljava/util/List;

    new-instance v2, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    const-wide/16 v3, 0xa

    invoke-direct {v2, v0, v3, v4}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPrefixes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->links:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->links:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8
    const-string v1, "APIGateway_PREFIXES"

    const-string v2, "Use Default Prefixes."

    invoke-static {v1, v2}, Lcom/gpc/util/BusinessFlowLogger;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->DEFAULT_LINKS:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
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

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->path:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setPickPrefix(Landroid/content/Context;Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V
    .locals 1

    const-string p1, "select:"

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "APIGatewayURLBuilder"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->links:Ljava/util/List;

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceURLBuilderManager()Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;

    move-result-object p1

    sget-object v0, Lcom/gpc/sdk/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/sdk/service/helper/prefixengine/RuleType;

    invoke-virtual {p1, v0, p2}, Lcom/gpc/sdk/service/helper/prefixengine/ServiceURLBuilderManager;->setPickPrefix(Lcom/gpc/sdk/service/helper/prefixengine/RuleType;Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_2
    const-string p2, "APIGatewayURLBuilder"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public declared-synchronized setPrefixes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ag/APIGatewayURLBuilder;->links:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
