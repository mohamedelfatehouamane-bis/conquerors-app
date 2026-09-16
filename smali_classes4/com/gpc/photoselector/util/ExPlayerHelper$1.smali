.class Lcom/gpc/photoselector/util/ExPlayerHelper$1;
.super Ljava/lang/Object;
.source "ExPlayerHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/util/ExPlayerHelper;->initializePlayer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/util/ExPlayerHelper;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/util/ExPlayerHelper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/gpc/photoselector/util/ExPlayerHelper$1;->this$0:Lcom/gpc/photoselector/util/ExPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper$1;->this$0:Lcom/gpc/photoselector/util/ExPlayerHelper;

    invoke-static {v0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->access$000(Lcom/gpc/photoselector/util/ExPlayerHelper;)Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper$1;->this$0:Lcom/gpc/photoselector/util/ExPlayerHelper;

    invoke-static {v0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->access$000(Lcom/gpc/photoselector/util/ExPlayerHelper;)Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;->onControllerVisibilityChange(I)V

    :cond_0
    return-void
.end method
