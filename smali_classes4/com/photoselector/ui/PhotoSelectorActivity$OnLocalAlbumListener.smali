.class public interface abstract Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;
.super Ljava/lang/Object;
.source "PhotoSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/photoselector/ui/PhotoSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLocalAlbumListener"
.end annotation


# virtual methods
.method public abstract onAlbumLoaded(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/photoselector/model/AlbumModel;",
            ">;)V"
        }
    .end annotation
.end method
