.class public Lcom/photoselector/ui/PhotoSelectorAdapter;
.super Lcom/photoselector/ui/MBaseAdapter;
.source "PhotoSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/photoselector/ui/MBaseAdapter<",
        "Lcom/photoselector/model/PhotoModel;",
        ">;"
    }
.end annotation


# instance fields
.field private cameraListener:Landroid/view/View$OnClickListener;

.field private horizentalNum:I

.field private itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private itemWidth:I

.field private listener:Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

.field private mCallback:Lcom/photoselector/ui/PhotoItem$onItemClickListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/photoselector/ui/MBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 p1, 0x3

    .line 22
    iput p1, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->horizentalNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;Lcom/photoselector/ui/PhotoItem$onItemClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/photoselector/model/PhotoModel;",
            ">;I",
            "Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;",
            "Lcom/photoselector/ui/PhotoItem$onItemClickListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/photoselector/ui/PhotoSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 35
    invoke-virtual {p0, p3}, Lcom/photoselector/ui/PhotoSelectorAdapter;->setItemWidth(I)V

    .line 36
    iput-object p4, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->listener:Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    .line 37
    iput-object p5, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->mCallback:Lcom/photoselector/ui/PhotoItem$onItemClickListener;

    .line 38
    iput-object p6, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->cameraListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_2

    .line 52
    iget-object p3, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->models:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/photoselector/model/PhotoModel;

    invoke-virtual {p3}, Lcom/photoselector/model/PhotoModel;->getOriginalPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/photoselector/util/CommonUtils;->isNull(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->cameraListener:Landroid/view/View$OnClickListener;

    if-eqz p3, :cond_2

    if-eqz p2, :cond_0

    .line 53
    instance-of p1, p2, Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/photoselector/R$layout;->view_camera:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    .line 55
    iget p1, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->itemWidth:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 56
    iget p1, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->itemWidth:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->cameraListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_2
    if-eqz p2, :cond_4

    .line 61
    instance-of p3, p2, Lcom/photoselector/ui/PhotoItem;

    if-nez p3, :cond_3

    goto :goto_0

    .line 66
    :cond_3
    move-object p3, p2

    check-cast p3, Lcom/photoselector/ui/PhotoItem;

    goto :goto_1

    .line 62
    :cond_4
    :goto_0
    new-instance p2, Lcom/photoselector/ui/PhotoItem;

    iget-object p3, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->listener:Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    invoke-direct {p2, p3, v0}, Lcom/photoselector/ui/PhotoItem;-><init>(Landroid/content/Context;Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;)V

    .line 63
    iget-object p3, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, p3}, Lcom/photoselector/ui/PhotoItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p3, p2

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/photoselector/model/PhotoModel;

    invoke-virtual {p3, v0}, Lcom/photoselector/ui/PhotoItem;->setImageDrawable(Lcom/photoselector/model/PhotoModel;)V

    .line 69
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/photoselector/model/PhotoModel;

    invoke-virtual {v0}, Lcom/photoselector/model/PhotoModel;->isChecked()Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/photoselector/ui/PhotoItem;->setSelected(Z)V

    .line 70
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->mCallback:Lcom/photoselector/ui/PhotoItem$onItemClickListener;

    invoke-virtual {p3, v0, p1}, Lcom/photoselector/ui/PhotoItem;->setOnClickListener(Lcom/photoselector/ui/PhotoItem$onItemClickListener;I)V

    return-object p2
.end method

.method public setItemWidth(I)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/photoselector/R$dimen;->sticky_item_horizontalSpacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 44
    iget v1, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->horizentalNum:I

    add-int/lit8 v2, v1, -0x1

    mul-int v0, v0, v2

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    iput p1, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->itemWidth:I

    .line 45
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget v0, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->itemWidth:I

    invoke-direct {p1, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorAdapter;->itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    return-void
.end method
