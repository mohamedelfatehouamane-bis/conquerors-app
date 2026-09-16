.class Lcom/photoselector/domain/PhotoSelectorDomain$4;
.super Ljava/lang/Object;
.source "PhotoSelectorDomain.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/photoselector/domain/PhotoSelectorDomain;Landroid/os/Handler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/photoselector/domain/PhotoSelectorDomain$4;->this$0:Lcom/photoselector/domain/PhotoSelectorDomain;

    iput-object p2, p0, Lcom/photoselector/domain/PhotoSelectorDomain$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/photoselector/domain/PhotoSelectorDomain$4;->this$0:Lcom/photoselector/domain/PhotoSelectorDomain;

    invoke-static {v0}, Lcom/photoselector/domain/PhotoSelectorDomain;->access$000(Lcom/photoselector/domain/PhotoSelectorDomain;)Lcom/photoselector/controller/AlbumController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/photoselector/controller/AlbumController;->getAlbums()Ljava/util/List;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 66
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/photoselector/domain/PhotoSelectorDomain$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
