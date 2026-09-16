.class Lcom/photoselector/domain/PhotoSelectorDomain$3;
.super Landroid/os/Handler;
.source "PhotoSelectorDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/photoselector/domain/PhotoSelectorDomain;->updateAlbum(Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/photoselector/domain/PhotoSelectorDomain;

.field final synthetic val$listener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;


# direct methods
.method constructor <init>(Lcom/photoselector/domain/PhotoSelectorDomain;Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/photoselector/domain/PhotoSelectorDomain$3;->this$0:Lcom/photoselector/domain/PhotoSelectorDomain;

    iput-object p2, p0, Lcom/photoselector/domain/PhotoSelectorDomain$3;->val$listener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/photoselector/domain/PhotoSelectorDomain$3;->val$listener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;->onAlbumLoaded(Ljava/util/List;)V

    return-void
.end method
