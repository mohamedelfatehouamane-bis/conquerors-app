.class Lcom/savedplots/PlotOverlayManager$4;
.super Ljava/lang/Object;
.source "PlotOverlayManager.java"

# interfaces
.implements Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;


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

    .line 114
    iput-object p1, p0, Lcom/savedplots/PlotOverlayManager$4;->this$0:Lcom/savedplots/PlotOverlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkCancelled()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/savedplots/PlotOverlayManager$4;->this$0:Lcom/savedplots/PlotOverlayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/savedplots/PlotOverlayManager;->access$700(Lcom/savedplots/PlotOverlayManager;Z)V

    .line 123
    return-void
.end method

.method public onPlotMarked(Lcom/savedplots/SavedPlot;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/savedplots/PlotOverlayManager$4;->this$0:Lcom/savedplots/PlotOverlayManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/savedplots/PlotOverlayManager;->access$700(Lcom/savedplots/PlotOverlayManager;Z)V

    .line 118
    return-void
.end method
