.class public Lcom/gpc/gamecommunity/extended/GameCommunityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/gamecommunity/GameCommunity;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameCommunity"


# instance fields
.field protected appearance:Lcom/gpc/gamecommunity/bean/GameCommunityAppearance;

.field protected webApp:Lcom/gpc/webapp/extended/WebApp;


# direct methods
.method public constructor <init>(Lcom/gpc/webapp/extended/WebApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/gamecommunity/extended/GameCommunityImpl;->webApp:Lcom/gpc/webapp/extended/WebApp;

    return-void
.end method


# virtual methods
.method public closePanel()V
    .locals 3

    .line 1
    const-string v0, "GameCommunity"

    const-string v1, "closePanel"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    const-string v1, "ACTION_PANEL_CLOSE"

    const-string v2, "game_community"

    invoke-virtual {v0, v1, v2}, Lcom/gpc/operations/utils/EventHub$Companion;->postEvent(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setAppearance(Lcom/gpc/gamecommunity/bean/GameCommunityAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/gamecommunity/extended/GameCommunityImpl;->appearance:Lcom/gpc/gamecommunity/bean/GameCommunityAppearance;

    return-void
.end method

.method public showPanel(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/gpc/gamecommunity/extended/GameCommunityImpl;->showPanelWithPayload(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public showPanelWithPayload(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showPanelWithPayload pageUrl = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameCommunity"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showPanelWithPayload payload = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0, p2}, Lcom/gpc/operations/utils/APIHelperKt;->gameCommunity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    const-string p2, ""

    invoke-static {v0, p2}, Lcom/gpc/operations/utils/APIHelperKt;->gameCommunity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v1, p0, Lcom/gpc/gamecommunity/extended/GameCommunityImpl;->webApp:Lcom/gpc/webapp/extended/WebApp;

    iget-object v7, p0, Lcom/gpc/gamecommunity/extended/GameCommunityImpl;->appearance:Lcom/gpc/gamecommunity/bean/GameCommunityAppearance;

    const-string v3, "game_community"

    const/4 v8, 0x2

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/gpc/webapp/extended/WebApp;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/gpc/operations/base/BaseAppearance;I)V

    return-void
.end method
