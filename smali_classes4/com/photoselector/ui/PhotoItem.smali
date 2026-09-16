.class public Lcom/photoselector/ui/PhotoItem;
.super Landroid/widget/LinearLayout;
.source "PhotoItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/photoselector/ui/PhotoItem$onItemClickListener;,
        Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;
    }
.end annotation


# instance fields
.field private cbPhoto:Landroid/widget/CheckBox;

.field private isCheckAll:Z

.field private ivPhoto:Landroid/widget/ImageView;

.field private l:Lcom/photoselector/ui/PhotoItem$onItemClickListener;

.field private listener:Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

.field private photo:Lcom/photoselector/model/PhotoModel;

.field private position:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/photoselector/ui/PhotoItem;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/photoselector/R$layout;->layout_photoitem:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    iput-object p2, p0, Lcom/photoselector/ui/PhotoItem;->listener:Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    .line 41
    invoke-virtual {p0, p0}, Lcom/photoselector/ui/PhotoItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget p1, Lcom/photoselector/R$id;->iv_photo_lpsi:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    .line 43
    sget p1, Lcom/photoselector/R$id;->cb_photo_lpsi:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoItem;->cbPhoto:Landroid/widget/CheckBox;

    .line 45
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/photoselector/ui/PhotoItem;)Landroid/widget/ImageView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    return-object p0
.end method

.method private setDrawingable()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/photoselector/ui/PhotoItem;->isCheckAll:Z

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/photoselector/ui/PhotoItem;->listener:Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    iget-object v1, p0, Lcom/photoselector/ui/PhotoItem;->photo:Lcom/photoselector/model/PhotoModel;

    invoke-interface {v0, v1, p1, p2}, Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;->onCheckedChanged(Lcom/photoselector/model/PhotoModel;Landroid/widget/CompoundButton;Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoItem;->setDrawingable()V

    .line 56
    iget-object p1, p0, Lcom/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    const v0, -0x777778

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 60
    :goto_0
    iget-object p1, p0, Lcom/photoselector/ui/PhotoItem;->photo:Lcom/photoselector/model/PhotoModel;

    invoke-virtual {p1, p2}, Lcom/photoselector/model/PhotoModel;->setChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/photoselector/ui/PhotoItem;->l:Lcom/photoselector/ui/PhotoItem$onItemClickListener;

    if-eqz p1, :cond_0

    .line 97
    iget v0, p0, Lcom/photoselector/ui/PhotoItem;->position:I

    invoke-interface {p1, v0}, Lcom/photoselector/ui/PhotoItem$onItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Lcom/photoselector/model/PhotoModel;)V
    .locals 4

    .line 65
    iput-object p1, p0, Lcom/photoselector/ui/PhotoItem;->photo:Lcom/photoselector/model/PhotoModel;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/photoselector/ui/PhotoItem$1;

    invoke-direct {v1, p0, p1}, Lcom/photoselector/ui/PhotoItem$1;-><init>(Lcom/photoselector/ui/PhotoItem;Lcom/photoselector/model/PhotoModel;)V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xa

    .line 71
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long v2, p1

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnClickListener(Lcom/photoselector/ui/PhotoItem$onItemClickListener;I)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/photoselector/ui/PhotoItem;->l:Lcom/photoselector/ui/PhotoItem$onItemClickListener;

    .line 91
    iput p2, p0, Lcom/photoselector/ui/PhotoItem;->position:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/photoselector/ui/PhotoItem;->photo:Lcom/photoselector/model/PhotoModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/photoselector/ui/PhotoItem;->isCheckAll:Z

    .line 85
    iget-object v0, p0, Lcom/photoselector/ui/PhotoItem;->cbPhoto:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/photoselector/ui/PhotoItem;->isCheckAll:Z

    return-void
.end method
