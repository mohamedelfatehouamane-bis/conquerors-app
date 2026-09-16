.class Lcom/savedplots/PlotTapCaptureOverlay$4;
.super Ljava/lang/Object;
.source "PlotTapCaptureOverlay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/PlotTapCaptureOverlay;->showNameDialog(FF)V
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

    .line 206
    iput-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$4;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 209
    iget-object p2, p0, Lcom/savedplots/PlotTapCaptureOverlay$4;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p2}, Lcom/savedplots/PlotTapCaptureOverlay;->access$000(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotMarkerView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 210
    iget-object p2, p0, Lcom/savedplots/PlotTapCaptureOverlay$4;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p2}, Lcom/savedplots/PlotTapCaptureOverlay;->access$000(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotMarkerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/savedplots/PlotMarkerView;->clearTempMarker()V

    .line 212
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 213
    return-void
.end method
