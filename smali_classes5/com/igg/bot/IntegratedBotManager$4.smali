.class Lcom/igg/bot/IntegratedBotManager$4;
.super Ljava/lang/Object;
.source "IntegratedBotManager.java"

# interfaces
.implements Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/IntegratedBotManager;->startPlotSelectionMode()V
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

    .line 193
    iput-object p1, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlotSelected(FF)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$900(Lcom/igg/bot/IntegratedBotManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v1}, Lcom/igg/bot/IntegratedBotManager;->access$800(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotSelectionOverlay;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igg/bot/IntegratedBotManager;->access$802(Lcom/igg/bot/IntegratedBotManager;Lcom/igg/bot/PlotSelectionOverlay;)Lcom/igg/bot/PlotSelectionOverlay;

    .line 199
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$1100(Lcom/igg/bot/IntegratedBotManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/igg/bot/IntegratedBotManager$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/igg/bot/IntegratedBotManager$4$1;-><init>(Lcom/igg/bot/IntegratedBotManager$4;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public onSelectionCancelled()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$900(Lcom/igg/bot/IntegratedBotManager;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v1}, Lcom/igg/bot/IntegratedBotManager;->access$800(Lcom/igg/bot/IntegratedBotManager;)Lcom/igg/bot/PlotSelectionOverlay;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igg/bot/IntegratedBotManager;->access$802(Lcom/igg/bot/IntegratedBotManager;Lcom/igg/bot/PlotSelectionOverlay;)Lcom/igg/bot/PlotSelectionOverlay;

    .line 211
    iget-object v0, p0, Lcom/igg/bot/IntegratedBotManager$4;->this$0:Lcom/igg/bot/IntegratedBotManager;

    invoke-static {v0}, Lcom/igg/bot/IntegratedBotManager;->access$1200(Lcom/igg/bot/IntegratedBotManager;)V

    .line 212
    return-void
.end method
