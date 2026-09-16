.class Lcom/igg/bot/SavedPlotsPanel$5;
.super Ljava/lang/Object;
.source "SavedPlotsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/SavedPlotsPanel;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/bot/SavedPlotsPanel;

.field final synthetic val$plot:Lcom/igg/bot/SavedPlot;


# direct methods
.method constructor <init>(Lcom/igg/bot/SavedPlotsPanel;Lcom/igg/bot/SavedPlot;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 235
    iput-object p2, p0, Lcom/igg/bot/SavedPlotsPanel$5;->val$plot:Lcom/igg/bot/SavedPlot;

    iput-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$5;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$5;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$400(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/PlotStorage;

    move-result-object p1

    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel$5;->val$plot:Lcom/igg/bot/SavedPlot;

    iget-object v0, v0, Lcom/igg/bot/SavedPlot;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/igg/bot/PlotStorage;->delete(Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$5;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-virtual {p1}, Lcom/igg/bot/SavedPlotsPanel;->refreshList()V

    .line 240
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$5;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$5;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    move-result-object p1

    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel$5;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {v0}, Lcom/igg/bot/SavedPlotsPanel;->access$000(Lcom/igg/bot/SavedPlotsPanel;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/igg/bot/SavedPlotsPanel$PanelListener;->onToggleMarkers(Z)V

    .line 243
    :cond_0
    return-void
.end method
