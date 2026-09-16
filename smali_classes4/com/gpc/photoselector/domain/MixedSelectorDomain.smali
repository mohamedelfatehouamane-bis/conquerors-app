.class public Lcom/gpc/photoselector/domain/MixedSelectorDomain;
.super Ljava/lang/Object;
.source "MixedSelectorDomain.java"

# interfaces
.implements Lcom/gpc/photoselector/domain/SelectorDomain;


# instance fields
.field private albumController:Lcom/gpc/photoselector/controller/AlbumController;

.field private videoController:Lcom/gpc/photoselector/controller/VideoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/gpc/photoselector/controller/AlbumController;

    invoke-direct {v0, p1}, Lcom/gpc/photoselector/controller/AlbumController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->albumController:Lcom/gpc/photoselector/controller/AlbumController;

    .line 30
    new-instance v0, Lcom/gpc/photoselector/controller/VideoController;

    invoke-direct {v0, p1}, Lcom/gpc/photoselector/controller/VideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->videoController:Lcom/gpc/photoselector/controller/VideoController;

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/domain/MixedSelectorDomain;)Lcom/gpc/photoselector/controller/AlbumController;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->albumController:Lcom/gpc/photoselector/controller/AlbumController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gpc/photoselector/domain/MixedSelectorDomain;)Lcom/gpc/photoselector/controller/VideoController;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->videoController:Lcom/gpc/photoselector/controller/VideoController;

    return-object p0
.end method


# virtual methods
.method public getAlbum(Ljava/lang/String;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
    .locals 2

    .line 143
    new-instance v0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$5;

    invoke-direct {v0, p0, p2}, Lcom/gpc/photoselector/domain/MixedSelectorDomain$5;-><init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 151
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;-><init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
    .locals 2

    .line 39
    new-instance v0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$1;

    invoke-direct {v0, p0, p1}, Lcom/gpc/photoselector/domain/MixedSelectorDomain$1;-><init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 47
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/gpc/photoselector/domain/MixedSelectorDomain$2;

    invoke-direct {v1, p0, v0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain$2;-><init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Landroid/os/Handler;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public updateAlbum(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V
    .locals 2

    .line 72
    new-instance v0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$3;

    invoke-direct {v0, p0, p1}, Lcom/gpc/photoselector/domain/MixedSelectorDomain$3;-><init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V

    .line 80
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/gpc/photoselector/domain/MixedSelectorDomain$4;

    invoke-direct {v1, p0, v0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain$4;-><init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Landroid/os/Handler;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
