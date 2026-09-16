.class Lcom/gpc/photoselector/util/ExPlayerHelper$ComponentListener;
.super Lcom/gpc/photoselector/util/DefaultPlayerListener;
.source "ExPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/photoselector/util/ExPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentListener"
.end annotation


# instance fields
.field private listener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

.field final synthetic this$0:Lcom/gpc/photoselector/util/ExPlayerHelper;


# direct methods
.method public constructor <init>(Lcom/gpc/photoselector/util/ExPlayerHelper;Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/gpc/photoselector/util/ExPlayerHelper$ComponentListener;->this$0:Lcom/gpc/photoselector/util/ExPlayerHelper;

    invoke-direct {p0}, Lcom/gpc/photoselector/util/DefaultPlayerListener;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/gpc/photoselector/util/ExPlayerHelper$ComponentListener;->listener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    return-void
.end method


# virtual methods
.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/gpc/photoselector/util/ExPlayerHelper$ComponentListener;->listener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    if-eqz p1, :cond_1

    .line 91
    invoke-interface {p1}, Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;->onReady()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 2

    .line 79
    const-string v0, "ExPlayerHelper"

    const-string v1, "onPlayerError"

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
