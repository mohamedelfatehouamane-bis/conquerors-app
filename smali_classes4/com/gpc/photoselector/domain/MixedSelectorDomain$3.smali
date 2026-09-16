.class Lcom/gpc/photoselector/domain/MixedSelectorDomain$3;
.super Landroid/os/Handler;
.source "MixedSelectorDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/domain/MixedSelectorDomain;->updateAlbum(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

.field final synthetic val$listener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$3;->this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    iput-object p2, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$3;->val$listener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$3;->val$listener:Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;->onAlbumLoaded(Ljava/util/List;)V

    return-void
.end method
