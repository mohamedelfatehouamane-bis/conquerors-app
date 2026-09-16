.class Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "PhotoSelectorAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->update(ZILcom/gpc/photoselector/model/PhotoModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;

.field final synthetic val$photo:Lcom/gpc/photoselector/model/PhotoModel;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$2;->this$1:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;

    iput-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$2;->val$photo:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 198
    const-string v0, "PhotoSelectorAdapter"

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$2;->this$1:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;

    iget-object v0, v0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-static {v0}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->access$100(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;)Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$2;->val$photo:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-interface {v0, v1, p1, p2}, Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;->onCheckedChanged(Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
