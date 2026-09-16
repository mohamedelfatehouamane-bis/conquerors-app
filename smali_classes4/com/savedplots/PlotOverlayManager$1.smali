.class Lcom/savedplots/PlotOverlayManager$1;
.super Ljava/lang/Object;
.source "PlotOverlayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/PlotOverlayManager;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/savedplots/PlotOverlayManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 33
    :try_start_0
    invoke-static {}, Lcom/savedplots/PlotOverlayManager;->access$000()Lcom/savedplots/PlotOverlayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/savedplots/PlotOverlayManager;

    iget-object v1, p0, Lcom/savedplots/PlotOverlayManager$1;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/savedplots/PlotOverlayManager;-><init>(Landroid/app/Activity;Lcom/savedplots/PlotOverlayManager$1;)V

    invoke-static {v0}, Lcom/savedplots/PlotOverlayManager;->access$002(Lcom/savedplots/PlotOverlayManager;)Lcom/savedplots/PlotOverlayManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_0
    return-void
.end method
