.class Lcom/igg/bot/SavedPlotsPanel$6;
.super Ljava/lang/Object;
.source "SavedPlotsPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/SavedPlotsPanel;->showEditDialog(Lcom/igg/bot/SavedPlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/bot/SavedPlotsPanel;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$plot:Lcom/igg/bot/SavedPlot;


# direct methods
.method constructor <init>(Lcom/igg/bot/SavedPlotsPanel;Landroid/widget/EditText;Lcom/igg/bot/SavedPlot;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 269
    iput-object p2, p0, Lcom/igg/bot/SavedPlotsPanel$6;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/igg/bot/SavedPlotsPanel$6;->val$plot:Lcom/igg/bot/SavedPlot;

    iput-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$6;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$6;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 274
    iget-object p2, p0, Lcom/igg/bot/SavedPlotsPanel$6;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p2}, Lcom/igg/bot/SavedPlotsPanel;->access$400(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/PlotStorage;

    move-result-object p2

    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel$6;->val$plot:Lcom/igg/bot/SavedPlot;

    iget-object v0, v0, Lcom/igg/bot/SavedPlot;->id:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/igg/bot/PlotStorage;->updateName(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$6;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-virtual {p1}, Lcom/igg/bot/SavedPlotsPanel;->refreshList()V

    .line 276
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$6;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$6;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    move-result-object p1

    iget-object p2, p0, Lcom/igg/bot/SavedPlotsPanel$6;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p2}, Lcom/igg/bot/SavedPlotsPanel;->access$000(Lcom/igg/bot/SavedPlotsPanel;)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/igg/bot/SavedPlotsPanel$PanelListener;->onToggleMarkers(Z)V

    .line 280
    :cond_0
    return-void
.end method
