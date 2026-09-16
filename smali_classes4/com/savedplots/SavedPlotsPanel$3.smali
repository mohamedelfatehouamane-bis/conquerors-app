.class Lcom/savedplots/SavedPlotsPanel$3;
.super Ljava/lang/Object;
.source "SavedPlotsPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/SavedPlotsPanel;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/savedplots/SavedPlotsPanel;


# direct methods
.method constructor <init>(Lcom/savedplots/SavedPlotsPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/savedplots/SavedPlotsPanel$3;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/savedplots/SavedPlotsPanel$3;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-static {p1}, Lcom/savedplots/SavedPlotsPanel;->access$000(Lcom/savedplots/SavedPlotsPanel;)Lcom/savedplots/SavedPlotsPanel$PanelListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/savedplots/SavedPlotsPanel$3;->this$0:Lcom/savedplots/SavedPlotsPanel;

    invoke-static {p1}, Lcom/savedplots/SavedPlotsPanel;->access$000(Lcom/savedplots/SavedPlotsPanel;)Lcom/savedplots/SavedPlotsPanel$PanelListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/savedplots/SavedPlotsPanel$PanelListener;->onToggleMarkers(Z)V

    .line 133
    :cond_0
    return-void
.end method
