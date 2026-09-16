.class Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;
.super Ljava/lang/Object;
.source "PhotoSelectorActivity.java"

# interfaces
.implements Lcom/gpc/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/photoselector/ui/PhotoSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/photoselector/ui/PhotoSelectorActivity;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorActivity;

    invoke-static {v1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->access$100(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorActivity;

    iget-object v0, v0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->layoutAuthorizeTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorActivity;

    invoke-virtual {v0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->hideAuthorizeTip()V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorActivity;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->access$100(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->update(Ljava/util/List;)V

    .line 445
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorActivity$2;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorActivity;

    invoke-static {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorActivity;->access$200(Lcom/gpc/photoselector/ui/PhotoSelectorActivity;)V

    return-void
.end method
