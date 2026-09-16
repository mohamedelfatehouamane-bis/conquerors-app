.class Lcom/savedplots/SavedPlotsPanel$7;
.super Ljava/lang/Object;
.source "SavedPlotsPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/SavedPlotsPanel;->showDeleteDialog(Lcom/savedplots/SavedPlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/savedplots/SavedPlotsPanel;

.field final synthetic val$plot:Lcom/savedplots/SavedPlot;


# direct methods
.method constructor <init>(Lcom/savedplots/SavedPlotsPanel;Lcom/savedplots/SavedPlot;)V
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

    .line 301
    iput-object p2, p0, Lcom/savedplots/SavedPlotsPanel$7;->val$plot:Lcom/savedplots/SavedPlot;

    iput-object p1, p0, Lcom/savedplots/SavedPlotsPanel$7;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 304
    iget-object p1, p0, Lcom/savedplots/SavedPlotsPanel$7;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-virtual {p1}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/savedplots/SavedPlotsPanel$7;->val$plot:Lcom/savedplots/SavedPlot;

    invoke-virtual {p2}, Lcom/savedplots/SavedPlot;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/savedplots/PlotStorage;->deletePlot(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/savedplots/SavedPlotsPanel$7;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-virtual {p1}, Lcom/savedplots/SavedPlotsPanel;->refreshPlots()V

    .line 306
    iget-object p1, p0, Lcom/savedplots/SavedPlotsPanel$7;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-static {p1}, Lcom/savedplots/SavedPlotsPanel;->access$000(Lcom/savedplots/SavedPlotsPanel;)Lcom/savedplots/SavedPlotsPanel$PanelListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/savedplots/SavedPlotsPanel$7;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-static {p1}, Lcom/savedplots/SavedPlotsPanel;->access$000(Lcom/savedplots/SavedPlotsPanel;)Lcom/savedplots/SavedPlotsPanel$PanelListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/savedplots/SavedPlotsPanel$PanelListener;->onPlotsChanged()V

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/savedplots/SavedPlotsPanel$7;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-virtual {p1}, Lcom/savedplots/SavedPlotsPanel;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Deleted"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 308
    return-void
.end method
