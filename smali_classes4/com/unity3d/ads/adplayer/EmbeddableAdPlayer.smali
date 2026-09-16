.class public interface abstract Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer;
.super Ljava/lang/Object;
.source "EmbeddableAdPlayer.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/AdPlayer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer;",
        "Lcom/unity3d/ads/adplayer/AdPlayer;",
        "getEmbeddable",
        "Landroid/view/ViewGroup;",
        "showOptions",
        "Lcom/unity3d/ads/adplayer/ShowOptions;",
        "size",
        "Lcom/unity3d/services/banners/UnityBannerSize;",
        "(Lcom/unity3d/ads/adplayer/ShowOptions;Lcom/unity3d/services/banners/UnityBannerSize;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getEmbeddable(Lcom/unity3d/ads/adplayer/ShowOptions;Lcom/unity3d/services/banners/UnityBannerSize;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/ShowOptions;",
            "Lcom/unity3d/services/banners/UnityBannerSize;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/view/ViewGroup;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
