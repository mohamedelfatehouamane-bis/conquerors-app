.class Lcom/gpc/photoselector/domain/PhotoSelectorDomain$2;
.super Ljava/lang/Object;
.source "PhotoSelectorDomain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/domain/PhotoSelectorDomain;->getReccent(Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$2;->this$0:Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

    iput-object p2, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$2;->this$0:Lcom/gpc/photoselector/domain/PhotoSelectorDomain;

    invoke-static {v0}, Lcom/gpc/photoselector/domain/PhotoSelectorDomain;->access$000(Lcom/gpc/photoselector/domain/PhotoSelectorDomain;)Lcom/gpc/photoselector/controller/AlbumController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/photoselector/controller/AlbumController;->getCurrent()Ljava/util/List;

    move-result-object v0

    .line 47
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 48
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/gpc/photoselector/domain/PhotoSelectorDomain$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
