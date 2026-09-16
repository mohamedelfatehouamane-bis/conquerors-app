.class public Lcom/photoselector/domain/PhotoSelectorDomain;
.super Ljava/lang/Object;
.source "PhotoSelectorDomain.java"


# instance fields
.field private albumController:Lcom/photoselector/controller/AlbumController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/photoselector/controller/AlbumController;

    invoke-direct {v0, p1}, Lcom/photoselector/controller/AlbumController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/photoselector/domain/PhotoSelectorDomain;->albumController:Lcom/photoselector/controller/AlbumController;

    return-void
.end method

.method static synthetic access$000(Lcom/photoselector/domain/PhotoSelectorDomain;)Lcom/photoselector/controller/AlbumController;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/photoselector/domain/PhotoSelectorDomain;->albumController:Lcom/photoselector/controller/AlbumController;

    return-object p0
.end method


# virtual methods
.method public getAlbum(Ljava/lang/String;Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
    .locals 2

    .line 74
    new-instance v0, Lcom/photoselector/domain/PhotoSelectorDomain$5;

    invoke-direct {v0, p0, p2}, Lcom/photoselector/domain/PhotoSelectorDomain$5;-><init>(Lcom/photoselector/domain/PhotoSelectorDomain;Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 82
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/photoselector/domain/PhotoSelectorDomain$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/photoselector/domain/PhotoSelectorDomain$6;-><init>(Lcom/photoselector/domain/PhotoSelectorDomain;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 90
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getReccent(Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
    .locals 2

    .line 32
    new-instance v0, Lcom/photoselector/domain/PhotoSelectorDomain$1;

    invoke-direct {v0, p0, p1}, Lcom/photoselector/domain/PhotoSelectorDomain$1;-><init>(Lcom/photoselector/domain/PhotoSelectorDomain;Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 40
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/photoselector/domain/PhotoSelectorDomain$2;

    invoke-direct {v1, p0, v0}, Lcom/photoselector/domain/PhotoSelectorDomain$2;-><init>(Lcom/photoselector/domain/PhotoSelectorDomain;Landroid/os/Handler;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateAlbum(Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V
    .locals 2

    .line 53
    new-instance v0, Lcom/photoselector/domain/PhotoSelectorDomain$3;

    invoke-direct {v0, p0, p1}, Lcom/photoselector/domain/PhotoSelectorDomain$3;-><init>(Lcom/photoselector/domain/PhotoSelectorDomain;Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V

    .line 61
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/photoselector/domain/PhotoSelectorDomain$4;

    invoke-direct {v1, p0, v0}, Lcom/photoselector/domain/PhotoSelectorDomain$4;-><init>(Lcom/photoselector/domain/PhotoSelectorDomain;Landroid/os/Handler;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
