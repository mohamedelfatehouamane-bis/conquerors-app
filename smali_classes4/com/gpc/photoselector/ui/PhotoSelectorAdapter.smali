.class public Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;
.super Lcom/gpc/photoselector/ui/MBaseAdapter;
.source "PhotoSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gpc/photoselector/ui/MBaseAdapter<",
        "Lcom/gpc/photoselector/model/PhotoModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoSelectorAdapter"


# instance fields
.field private horizentalNum:I

.field private isCheckBoxShow:Z

.field private isLimitSelect:Z

.field private itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

.field private itemWidth:I

.field private listener:Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

.field private mCallback:Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/gpc/photoselector/ui/MBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 p1, 0x3

    .line 39
    iput p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->horizentalNum:I

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->isLimitSelect:Z

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->isCheckBoxShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;I",
            "Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;",
            "Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 53
    invoke-virtual {p0, p3}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->setItemWidth(I)V

    .line 54
    iput-object p4, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->listener:Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    .line 55
    iput-object p5, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->mCallback:Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;I",
            "Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;",
            "Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;",
            "Z)V"
        }
    .end annotation

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;)V

    move-object p1, p0

    .line 61
    iput-boolean p6, p1, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->isCheckBoxShow:Z

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;)Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->mCallback:Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;)Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->listener:Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    return-object p0
.end method


# virtual methods
.method public enableSelect()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->isLimitSelect:Z

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "isLimitSelect\uff1a"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->isLimitSelect:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->models:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {v0}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PhotoSelectorAdapter"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 85
    instance-of p3, p2, Lcom/gpc/photoselector/ui/PhotoItem;

    if-nez p3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->context:Landroid/content/Context;

    sget p3, Lcom/photoselectorforts/R$layout;->ops_a_layout_ts_photoitem:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    iget-object p3, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance p3, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;)V

    .line 89
    invoke-virtual {p3, p2}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->initView(Landroid/view/View;)V

    .line 90
    iget-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->isCheckBoxShow:Z

    invoke-virtual {p3, v0}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->setCheckBoxVisibility(Z)V

    .line 94
    :goto_1
    iget-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->isLimitSelect:Z

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->models:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {p3, v0, p1, v1, p2}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->update(ZILcom/gpc/photoselector/model/PhotoModel;Landroid/view/View;)V

    .line 95
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public limitSelect()V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->isLimitSelect:Z

    return-void
.end method

.method public setItemWidth(I)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/photoselectorforts/R$dimen;->ops_a_sticky_item_horizontalSpacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 69
    iget v1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->horizentalNum:I

    add-int/lit8 v2, v1, -0x1

    mul-int v0, v0, v2

    sub-int/2addr p1, v0

    div-int/2addr p1, v1

    iput p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->itemWidth:I

    .line 70
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    iget v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->itemWidth:I

    invoke-direct {p1, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->itemLayoutParams:Landroid/widget/AbsListView$LayoutParams;

    return-void
.end method
