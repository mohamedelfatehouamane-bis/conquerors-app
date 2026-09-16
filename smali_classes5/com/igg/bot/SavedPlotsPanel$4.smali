.class Lcom/igg/bot/SavedPlotsPanel$4;
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

    .line 221
    iput-object p2, p0, Lcom/igg/bot/SavedPlotsPanel$4;->val$plot:Lcom/igg/bot/SavedPlot;

    iput-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$4;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$4;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel$4;->val$plot:Lcom/igg/bot/SavedPlot;

    invoke-static {p1, v0}, Lcom/igg/bot/SavedPlotsPanel;->access$300(Lcom/igg/bot/SavedPlotsPanel;Lcom/igg/bot/SavedPlot;)V

    .line 225
    return-void
.end method
