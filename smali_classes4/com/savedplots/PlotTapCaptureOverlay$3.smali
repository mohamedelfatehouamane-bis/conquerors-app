.class Lcom/savedplots/PlotTapCaptureOverlay$3;
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

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$tapX:F

.field final synthetic val$tapY:F


# direct methods
.method constructor <init>(Lcom/savedplots/PlotTapCaptureOverlay;Landroid/widget/EditText;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iput-object p2, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->val$input:Landroid/widget/EditText;

    iput p3, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->val$tapX:F

    iput p4, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->val$tapY:F

    iput-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .line 182
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Plot ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->val$tapX:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->val$tapY:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 191
    new-instance p2, Lcom/savedplots/SavedPlot;

    iget v3, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->val$tapX:F

    iget v4, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->val$tapY:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/savedplots/SavedPlot;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;J)V

    .line 193
    iget-object v0, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-virtual {v0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/savedplots/PlotStorage;->addPlot(Landroid/content/Context;Lcom/savedplots/SavedPlot;)V

    .line 194
    iget-object v0, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-virtual {v0}, Lcom/savedplots/PlotTapCaptureOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 196
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p1}, Lcom/savedplots/PlotTapCaptureOverlay;->access$000(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotMarkerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p1}, Lcom/savedplots/PlotTapCaptureOverlay;->access$000(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotMarkerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/savedplots/PlotMarkerView;->clearTempMarker()V

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p1}, Lcom/savedplots/PlotTapCaptureOverlay;->access$100(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$3;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-static {p1}, Lcom/savedplots/PlotTapCaptureOverlay;->access$100(Lcom/savedplots/PlotTapCaptureOverlay;)Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/savedplots/PlotTapCaptureOverlay$OnPlotMarkedListener;->onPlotMarked(Lcom/savedplots/SavedPlot;)V

    .line 203
    :cond_2
    return-void
.end method
