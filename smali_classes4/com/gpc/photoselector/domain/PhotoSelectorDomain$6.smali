.class Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;
.super Ljava/lang/Object;
.source "PhotoSelectorDomain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/domain/PhotoSelectorDomain;->getAlbum(Ljava/lang/String;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;->this$0:Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

    iput-object p2, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;->this$0:Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

    invoke-static {v0}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;->access$000(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;)Lcom/gpc/photoselector/controller/AlbumController;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/controller/AlbumController;->getAlbum(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 96
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$6;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
