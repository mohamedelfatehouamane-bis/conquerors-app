.class public Lcom/gpc/photoselector/util/ExPlayerHelper;
.super Ljava/lang/Object;
.source "ExPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;,
        Lcom/gpc/photoselector/util/ExPlayerHelper$ComponentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExPlayerHelper"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private playerView:Lcom/gpc/photoselector/util/ExPlayerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/photoselector/util/ExPlayerView;Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    .line 33
    iput-object p3, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->listener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/util/ExPlayerHelper;)Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->listener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public initializePlayer()Z
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-virtual {p0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 39
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    .line 40
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance v2, Lcom/gpc/photoselector/util/ExPlayerHelper$ComponentListener;

    iget-object v3, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->listener:Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;

    invoke-direct {v2, p0, v3}, Lcom/gpc/photoselector/util/ExPlayerHelper$ComponentListener;-><init>(Lcom/gpc/photoselector/util/ExPlayerHelper;Lcom/gpc/photoselector/util/ExPlayerHelper$OnPlayerListener;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    .line 41
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 42
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/gpc/photoselector/util/ExPlayerView;->setShowPreviousButton(Z)V

    .line 43
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    invoke-virtual {v0, v2}, Lcom/gpc/photoselector/util/ExPlayerView;->setShowNextButton(Z)V

    .line 44
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    invoke-virtual {v0, v2}, Lcom/gpc/photoselector/util/ExPlayerView;->setShowRewindButton(Z)V

    .line 45
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    invoke-virtual {v0, v2}, Lcom/gpc/photoselector/util/ExPlayerView;->setShowFastForwardButton(Z)V

    .line 46
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    new-instance v2, Lcom/gpc/photoselector/util/ExPlayerHelper$1;

    invoke-direct {v2, p0}, Lcom/gpc/photoselector/util/ExPlayerHelper$1;-><init>(Lcom/gpc/photoselector/util/ExPlayerHelper;)V

    invoke-virtual {v0, v2}, Lcom/gpc/photoselector/util/ExPlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    .line 55
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    iget-object v2, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v2}, Lcom/gpc/photoselector/util/ExPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_0
    return v1
.end method

.method public onDestroy()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerView;->getOverlayFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerView;->getOverlayFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->releasePlayer()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 149
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerView;->onPause()V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->releasePlayer()V

    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerView;->onPause()V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 135
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerView;->onResume()V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->play()V

    return-void

    .line 136
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/photoselector/util/ExPlayerHelper;->initializePlayer()Z

    .line 137
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerView;->onResume()V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 125
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerView;->onResume()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->play()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 163
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->playerView:Lcom/gpc/photoselector/util/ExPlayerView;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/gpc/photoselector/util/ExPlayerView;->onPause()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->pause()V

    :cond_1
    return-void
.end method

.method public play(Landroid/net/Uri;)V
    .locals 1

    .line 111
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 115
    iget-object p1, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    .line 117
    iget-object p1, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->play()V

    return-void
.end method

.method protected releasePlayer()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/gpc/photoselector/util/ExPlayerHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    :cond_0
    return-void
.end method
