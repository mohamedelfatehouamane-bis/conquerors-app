.class Lcom/igg/bot/SavedPlotsPanel$3;
.super Ljava/lang/Object;
.source "SavedPlotsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/bot/SavedPlotsPanel;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/bot/SavedPlotsPanel;


# direct methods
.method constructor <init>(Lcom/igg/bot/SavedPlotsPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$3;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$3;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$3;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/igg/bot/SavedPlotsPanel$PanelListener;->onRequestMarkNewPlot()V

    .line 131
    :cond_0
    return-void
.end method
