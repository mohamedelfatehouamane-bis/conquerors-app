.class Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;
.super Ljava/lang/Object;
.source "MixedSelectorDomain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/domain/MixedSelectorDomain;->getAlbum(Ljava/lang/String;Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/domain/MixedSelectorDomain;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    iput-object p2, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-static {v0}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->access$000(Lcom/gpc/photoselector/domain/MixedSelectorDomain;)Lcom/gpc/photoselector/controller/AlbumController;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/controller/AlbumController;->getAlbum(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-static {v1}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->access$100(Lcom/gpc/photoselector/domain/MixedSelectorDomain;)Lcom/gpc/photoselector/controller/VideoController;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/gpc/photoselector/controller/VideoController;->getAlbum(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 156
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 157
    iget-object v3, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->this$0:Lcom/gpc/photoselector/domain/MixedSelectorDomain;

    invoke-virtual {v3, v0, v1}, Lcom/gpc/photoselector/domain/MixedSelectorDomain;->merge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/gpc/photoselector/domain/MixedSelectorDomain$6;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
