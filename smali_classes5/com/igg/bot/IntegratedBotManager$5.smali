.class Lcom/igg/bot/IntegratedBotManager$5;
.super Ljava/lang/Object;
.source "IntegratedBotManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/IntegratedBotManager;->showPlotNamingDialog(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/bot/IntegratedBotManager;

.field final synthetic val$grid:Lcom/igg/bot/PlotGridHelper$GridCoord;

.field final synthetic val$nameInput:Landroid/widget/EditText;

.field final synthetic val$tapX:F

.field final synthetic val$tapY:F


# direct methods
.method constructor <init>(Lcom/igg/bot/IntegratedBotManager;Landroid/widget/EditText;FFLcom/igg/bot/PlotGridHelper$GridCoord;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 253
    iput-object p2, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$nameInput:Landroid/widget/EditText;

    iput p3, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$tapX:F

    iput p4, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$tapY:F

    iput-object p5, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$grid:Lcom/igg/bot/PlotGridHelper$GridCoord;

    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager$5;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    .line 256
    iget-object p1, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$nameInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 258
    const-string p1, "Plot"

    .line 261
    :cond_0
    new-instance p2, Lcom/igg/bot/SavedPlot;

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$tapX:F

    iget v4, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$tapY:F

    .line 266
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$grid:Lcom/igg/bot/PlotGridHelper$GridCoord;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$grid:Lcom/igg/bot/PlotGridHelper$GridCoord;

    iget v0, v0, Lcom/igg/bot/PlotGridHelper$GridCoord;->row:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, v2

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$grid:Lcom/igg/bot/PlotGridHelper$GridCoord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$5;->val$grid:Lcom/igg/bot/PlotGridHelper$GridCoord;

    iget v0, v0, Lcom/igg/bot/PlotGridHelper$GridCoord;->col:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v2

    .line 270
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/igg/bot/SavedPlot;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;J)V

    .line 273
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$5;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$500(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/igg/bot/PlotStorage;->save(Lcom/igg/bot/SavedPlot;)V

    .line 274
    iget-object p2, p0, Lcom/igg/bot/IntegratedBotManager$5;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {p2}, Lcom/igg/bot/IntegratedBotManager;->access$400(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotMarkerView;

    move-result-object p2

    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$5;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$500(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/bot/PlotStorage;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/igg/bot/PlotMarkerView;->updatePlots(Ljava/util/List;)V

    .line 275
    iget-object p2, p0, Lcom/igg/bot/IntegratedBotManager$5;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {p2}, Lcom/igg/bot/IntegratedBotManager;->access$1300(Lcom/igg/bot/IntegratedBotManager;)Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plot \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' saved!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 276
    iget-object p1, p0, Lcom/igg/bot/IntegratedBotManager$5;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {p1}, Lcom/igg/bot/IntegratedBotManager;->access$1200(Lcom/igg/bot/IntegratedBotManager;)V

    .line 277
    return-void
.end method
