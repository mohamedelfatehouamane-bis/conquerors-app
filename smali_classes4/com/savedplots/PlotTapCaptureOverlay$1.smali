.class Lcom/savedplots/PlotTapCaptureOverlay$1;
.super Ljava/lang/Object;
.source "PlotTapCaptureOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/PlotTapCaptureOverlay;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/savedplots/PlotTapCaptureOverlay;


# direct methods
.method constructor <init>(Lcom/savedplots/PlotTapCaptureOverlay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$1;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$1;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p1}, Lcom/savedplots/PlotTapCaptureOverlay;->access$000(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotMarkerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$1;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p1}, Lcom/savedplots/PlotTapCaptureOverlay;->access$000(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotMarkerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/savedplots/PlotMarkerView;->clearTempMarker()V

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$1;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p1}, Lcom/savedplots/PlotTapCaptureOverlay;->access$100(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$1;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p1}, Lcom/savedplots/PlotTapCaptureOverlay;->access$100(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;->onMarkCancelled()V

    .line 78
    :cond_1
    return-void
.end method
