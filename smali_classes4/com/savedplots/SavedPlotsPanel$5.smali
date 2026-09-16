.class Lcom/savedplots/SavedPlotsPanel$5;
.super Ljava/lang/Object;
.source "SavedPlotsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/SavedPlotsPanel;->refreshPlots()V
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

    .line 233
    iput-object p2, p0, Lcom/savedplots/SavedPlotsPanel$5;->val$plot:Lcom/savedplots/SavedPlot;

    iput-object p1, p0, Lcom/savedplots/SavedPlotsPanel$5;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lcom/savedplots/SavedPlotsPanel$5;->this$0:Lcom/savedplots/SavedPlotsPanel;

    iget-object v0, p0, Lcom/savedplots/SavedPlotsPanel$5;->val$plot:Lcom/savedplots/SavedPlot;

    invoke-static {p1, v0}, Lcom/savedplots/SavedPlotsPanel;->access$200(Lcom/savedplots/SavedPlotsPanel;Lcom/savedplots/SavedPlot;)V

    .line 237
    return-void
.end method
