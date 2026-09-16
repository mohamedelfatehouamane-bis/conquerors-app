.class public final Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/ingamereporting/GPCInGameReportingCompatProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/gpc/sdk/ingamereporting/GPCInGameReportingDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/ingamereporting/GPCInGameReportingDefaultCompatProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;->a:Lcom/gpc/sdk/ingamereporting/GPCInGameReportingCompatProxy;

    return-void
.end method


# virtual methods
.method public final report(Lcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const-string v0, "violation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/gpc/sdk/misc/l;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;->a:Lcom/gpc/sdk/ingamereporting/GPCInGameReportingCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/ingamereporting/GPCInGameReportingCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-direct {v1, v0}, Lcom/gpc/sdk/misc/l;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getServerInfo()Lcom/gpc/sdk/bean/GPCServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCServerInfo;->getServerId()I

    move-result v4

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;->a:Lcom/gpc/sdk/ingamereporting/GPCInGameReportingCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/ingamereporting/GPCInGameReportingCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameDelegate()Lcom/gpc/sdk/GPCGameDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/GPCGameDelegate;->getCharacter()Lcom/gpc/sdk/bean/GPCCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/bean/GPCCharacter;->getCharName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "sharedInstance().configu\u2026legate.character.charName"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    move-object v6, p2

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/gpc/sdk/misc/l;->report(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/ingamereporting/bean/GPCRuleViolation;Lcom/gpc/sdk/ingamereporting/listener/GPCInGameReportingListener;)V

    return-void
.end method

.method public final setCompatProxy(Lcom/gpc/sdk/ingamereporting/GPCInGameReportingCompatProxy;)V
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/ingamereporting/GPCInGameReporting;->a:Lcom/gpc/sdk/ingamereporting/GPCInGameReportingCompatProxy;

    return-void
.end method
