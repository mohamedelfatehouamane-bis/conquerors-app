.class Lcom/igg/bot/SavedPlotsPanel$1;
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

    .line 82
    iput-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {v0}, Lcom/igg/bot/SavedPlotsPanel;->access$000(Lcom/igg/bot/SavedPlotsPanel;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/igg/bot/SavedPlotsPanel;->access$002(Lcom/igg/bot/SavedPlotsPanel;Z)Z

    .line 86
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$100(Lcom/igg/bot/SavedPlotsPanel;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {v0}, Lcom/igg/bot/SavedPlotsPanel;->access$000(Lcom/igg/bot/SavedPlotsPanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\ud83d\udc41 Visible"

    goto :goto_0

    :cond_0
    const-string v0, "\ud83d\udc41 Hidden"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$100(Lcom/igg/bot/SavedPlotsPanel;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {v0}, Lcom/igg/bot/SavedPlotsPanel;->access$000(Lcom/igg/bot/SavedPlotsPanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xc74208

    goto :goto_1

    :cond_1
    const v0, -0x6b5c48

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {p1}, Lcom/igg/bot/SavedPlotsPanel;->access$200(Lcom/igg/bot/SavedPlotsPanel;)Lcom/igg/bot/SavedPlotsPanel$PanelListener;

    move-result-object p1

    iget-object v0, p0, Lcom/igg/bot/SavedPlotsPanel$1;->this$0:Lcom/igg/bot/SavedPlotsPanel;

    invoke-static {v0}, Lcom/igg/bot/SavedPlotsPanel;->access$000(Lcom/igg/bot/SavedPlotsPanel;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/igg/bot/SavedPlotsPanel$PanelListener;->onToggleMarkers(Z)V

    .line 91
    :cond_2
    return-void
.end method
