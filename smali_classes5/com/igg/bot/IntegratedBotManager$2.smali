.class Lcom/igg/bot/IntegratedBotManager$2;
.super Ljava/lang/Object;
.source "IntegratedBotManager.java"

# interfaces
.implements Lcom/igg/bot/SavedPlotsPanel$PanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/IntegratedBotManager;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/bot/IntegratedBotManager;


# direct methods
.method constructor <init>(Lcom/igg/bot/IntegratedBotManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager$2;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosePanel()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$2;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$600(Lcom/igg/bot/IntegratedBotManager;)V

    .line 96
    return-void
.end method

.method public onRequestMarkNewPlot()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$2;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$300(Lcom/igg/bot/IntegratedBotManager;)V

    .line 85
    return-void
.end method

.method public onToggleMarkers(Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$2;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$400(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotMarkerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igg/bot/PlotMarkerView;->setMarkersVisible(Z)V

    .line 90
    iget-object p1, p0, Lcom/igg/bot/IntegratedBotManager$2;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {p1}, Lcom/igg/bot/IntegratedBotManager;->access$400(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotMarkerView;

    move-result-object p1

    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$2;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$500(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/bot/PlotStorage;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/igg/bot/PlotMarkerView;->updatePlots(Ljava/util/List;)V

    .line 91
    return-void
.end method
