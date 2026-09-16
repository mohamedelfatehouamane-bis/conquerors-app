.class public Lcom/gpc/photoselector/domain/PhotoSelectorDomain;
.super Ljava/lang/Object;
.source "PhotoSelectorDomain.java"

# interfaces
.implements Lcom/gpc/photoselector/domain/SelectorDomain;


# instance fields
.field private albumController:Lcom/gpc/photoselector/controller/AlbumController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/gpc/photoselector/controller/AlbumController;

    invoke-direct {v0, p1}, Lcom/gpc/photoselector/controller/AlbumController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;->albumController:Lcom/gpc/photoselector/controller/AlbumController;

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;)Lcom/gpc/photoselector/controller/AlbumController;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;->albumController:Lcom/gpc/photoselector/controller/AlbumController;

    return-object p0
.end method


# virtual methods
.method public getAlbum(Ljava/lang/String;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
    .locals 2

    .line 83
    new-instance v0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$5;

    invoke-direct {v0, p0, p2}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$5;-><init>(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 91
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;-><init>(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
    .locals 2

    .line 35
    new-instance v0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$1;

    invoke-direct {v0, p0, p1}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$1;-><init>(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 43
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$2;

    invoke-direct {v1, p0, v0}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$2;-><init>(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;Landroid/os/Handler;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateAlbum(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V
    .locals 2

    .line 59
    new-instance v0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$3;

    invoke-direct {v0, p0, p1}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$3;-><init>(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V

    .line 67
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$4;

    invoke-direct {v1, p0, v0}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$4;-><init>(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;Landroid/os/Handler;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
