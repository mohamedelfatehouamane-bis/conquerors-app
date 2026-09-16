.class Lcom/igg/bot/PlotSelectionOverlay$1;
.super Ljava/lang/Object;
.source "PlotSelectionOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/PlotSelectionOverlay;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/bot/PlotSelectionOverlay;


# direct methods
.method constructor <init>(Lcom/igg/bot/PlotSelectionOverlay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/igg/bot/PlotSelectionOverlay$1;->this$0:Lcom/igg/bot/PlotSelectionOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/igg/bot/PlotSelectionOverlay$1;->this$0:Lcom/igg/bot/PlotSelectionOverlay;

    invoke-static {p1}, Lcom/igg/bot/PlotSelectionOverlay;->access$000(Lcom/igg/bot/PlotSelectionOverlay;)Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/igg/bot/PlotSelectionOverlay$1;->this$0:Lcom/igg/bot/PlotSelectionOverlay;

    invoke-static {p1}, Lcom/igg/bot/PlotSelectionOverlay;->access$000(Lcom/igg/bot/PlotSelectionOverlay;)Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/igg/bot/PlotSelectionOverlay$OnPlotSelectedListener;->onSelectionCancelled()V

    .line 68
    :cond_0
    return-void
.end method
