.class Lcom/photoselector/domain/PhotoSelectorDomain$1;
.super Landroid/os/Handler;
.source "PhotoSelectorDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/photoselector/domain/PhotoSelectorDomain;->getReccent(Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/photoselector/domain/PhotoSelectorDomain;

.field final synthetic val$listener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;


# direct methods
.method constructor <init>(Lcom/photoselector/domain/PhotoSelectorDomain;Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/photoselector/domain/PhotoSelectorDomain$1;->this$0:Lcom/photoselector/domain/PhotoSelectorDomain;

    iput-object p2, p0, Lcom/photoselector/domain/PhotoSelectorDomain$1;->val$listener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/photoselector/domain/PhotoSelectorDomain$1;->val$listener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;->onPhotoLoaded(Ljava/util/List;)V

    return-void
.end method
