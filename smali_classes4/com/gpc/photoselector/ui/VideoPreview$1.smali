.class Lcom/gpc/photoselector/ui/VideoPreview$1;
.super Ljava/lang/Object;
.source "VideoPreview.java"

# interfaces
.implements Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/ui/VideoPreview;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/ui/VideoPreview;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/VideoPreview;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/gpc/photoselector/ui/VideoPreview$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControllerVisibilityChange(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/VideoPreview;->access$100(Lcom/gpc/photoselector/ui/VideoPreview;)Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/VideoPreview;->access$100(Lcom/gpc/photoselector/ui/VideoPreview;)Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;->onControllerVisibilityChange(I)V

    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/gpc/photoselector/ui/VideoPreview$1;->this$0:Lcom/gpc/photoselector/ui/VideoPreview;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/VideoPreview;->access$000(Lcom/gpc/photoselector/ui/VideoPreview;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
