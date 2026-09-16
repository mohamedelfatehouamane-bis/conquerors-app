.class Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "PhotoSelectorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$1;->this$1:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;

    iput p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$1;->this$1:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;

    iget-object p1, p1, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-static {p1}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->access$000(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;)Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;->onItemClick(I)V

    return-void
.end method
