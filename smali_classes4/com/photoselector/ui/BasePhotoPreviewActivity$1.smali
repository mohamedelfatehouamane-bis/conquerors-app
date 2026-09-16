.class Lcom/photoselector/ui/BasePhotoPreviewActivity$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "BasePhotoPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/photoselector/ui/BasePhotoPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/photoselector/ui/BasePhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/photoselector/ui/BasePhotoPreviewActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/photoselector/ui/BasePhotoPreviewActivity$1;->this$0:Lcom/photoselector/ui/BasePhotoPreviewActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/photoselector/ui/BasePhotoPreviewActivity$1;->this$0:Lcom/photoselector/ui/BasePhotoPreviewActivity;

    iget-object v0, v0, Lcom/photoselector/ui/BasePhotoPreviewActivity;->photos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/photoselector/ui/BasePhotoPreviewActivity$1;->this$0:Lcom/photoselector/ui/BasePhotoPreviewActivity;

    iget-object v0, v0, Lcom/photoselector/ui/BasePhotoPreviewActivity;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    .line 73
    new-instance v0, Lcom/photoselector/ui/PhotoPreview;

    iget-object v1, p0, Lcom/photoselector/ui/BasePhotoPreviewActivity$1;->this$0:Lcom/photoselector/ui/BasePhotoPreviewActivity;

    invoke-virtual {v1}, Lcom/photoselector/ui/BasePhotoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/photoselector/ui/PhotoPreview;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    iget-object p1, p0, Lcom/photoselector/ui/BasePhotoPreviewActivity$1;->this$0:Lcom/photoselector/ui/BasePhotoPreviewActivity;

    iget-object p1, p1, Lcom/photoselector/ui/BasePhotoPreviewActivity;->photos:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/photoselector/model/PhotoModel;

    invoke-virtual {v0, p1}, Lcom/photoselector/ui/PhotoPreview;->loadImage(Lcom/photoselector/model/PhotoModel;)V

    .line 76
    iget-object p1, p0, Lcom/photoselector/ui/BasePhotoPreviewActivity$1;->this$0:Lcom/photoselector/ui/BasePhotoPreviewActivity;

    invoke-static {p1}, Lcom/photoselector/ui/BasePhotoPreviewActivity;->access$000(Lcom/photoselector/ui/BasePhotoPreviewActivity;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/photoselector/ui/PhotoPreview;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/photoselector/ui/BasePhotoPreviewActivity$1;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
