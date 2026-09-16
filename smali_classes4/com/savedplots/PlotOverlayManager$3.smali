.class Lcom/savedplots/PlotOverlayManager$3;
.super Ljava/lang/Object;
.source "PlotOverlayManager.java"

# interfaces
.implements Lcom/savedplots/SavedPlotsPanel$PanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/PlotOverlayManager;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/savedplots/PlotOverlayManager;


# direct methods
.method constructor <init>(Lcom/savedplots/PlotOverlayManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/savedplots/PlotOverlayManager$3;->this$0:Lcom/savedplots/PlotOverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosePanel()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager$3;->this$0:Lcom/savedplots/PlotOverlayManager;

    invoke-static {v0}, Lcom/savedplots/PlotOverlayManager;->access$400(Lcom/savedplots/PlotOverlayManager;)V

    .line 95
    return-void
.end method

.method public onPlotsChanged()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager$3;->this$0:Lcom/savedplots/PlotOverlayManager;

    invoke-static {v0}, Lcom/savedplots/PlotOverlayManager;->access$600(Lcom/savedplots/PlotOverlayManager;)Lcom/savedplots/PlotMarkerView;

    move-result-object v0

    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager$3;->this$0:Lcom/savedplots/PlotOverlayManager;

    invoke-static {v1}, Lcom/savedplots/PlotOverlayManager;->access$500(Lcom/savedplots/PlotOverlayManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/savedplots/PlotStorage;->loadPlots(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/savedplots/PlotMarkerView;->setPlots(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method public onRequestMarkNewPlot()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager$3;->this$0:Lcom/savedplots/PlotOverlayManager;

    invoke-static {v0}, Lcom/savedplots/PlotOverlayManager;->access$300(Lcom/savedplots/PlotOverlayManager;)V

    .line 90
    return-void
.end method

.method public onToggleMarkers(Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager$3;->this$0:Lcom/savedplots/PlotOverlayManager;

    invoke-static {v0}, Lcom/savedplots/PlotOverlayManager;->access$600(Lcom/savedplots/PlotOverlayManager;)Lcom/savedplots/PlotMarkerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/savedplots/PlotMarkerView;->setMarkersVisible(Z)V

    .line 105
    return-void
.end method
