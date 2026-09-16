.class public Lcom/gpc/photoselector/ui/PhotoItem;
.super Landroid/widget/LinearLayout;
.source "PhotoItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;,
        Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoItem"


# instance fields
.field private cbPhoto:Landroid/widget/CheckBox;

.field private isForceGray:Z

.field private ivPhoto:Landroid/widget/ImageView;

.field private ivSelectTip:Landroid/widget/ImageView;

.field private l:Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;

.field private listener:Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

.field private photo:Lcom/gpc/photoselector/model/PhotoModel;

.field private position:I

.field private tvSelectTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->isForceGray:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/ui/PhotoItem;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/photoselectorforts/R$layout;->ops_a_layout_ts_photoitem:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    iput-object p2, p0, Lcom/gpc/photoselector/ui/PhotoItem;->listener:Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    .line 47
    invoke-virtual {p0, p0}, Lcom/gpc/photoselector/ui/PhotoItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget p1, Lcom/photoselectorforts/R$id;->iv_photo_lpsi:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    .line 49
    sget p1, Lcom/photoselectorforts/R$id;->cb_photo_lpsi:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->cbPhoto:Landroid/widget/CheckBox;

    .line 50
    sget p1, Lcom/photoselectorforts/R$id;->iv_select_tip:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivSelectTip:Landroid/widget/ImageView;

    .line 51
    sget p1, Lcom/photoselectorforts/R$id;->tv_select_tip:I

    invoke-virtual {p0, p1}, Lcom/gpc/photoselector/ui/PhotoItem;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->tvSelectTip:Landroid/widget/TextView;

    .line 53
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->cbPhoto:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/gpc/photoselector/ui/PhotoItem;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->photo:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-virtual {v0, p2}, Lcom/gpc/photoselector/model/PhotoModel;->setChecked(Z)V

    .line 64
    const-string v0, "PhotoItem"

    const-string v1, "onCheckedChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->listener:Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;

    iget-object v1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->photo:Lcom/gpc/photoselector/model/PhotoModel;

    invoke-interface {v0, v1, p1, p2}, Lcom/gpc/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;->onCheckedChanged(Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->l:Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;

    if-eqz p1, :cond_0

    .line 130
    iget v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->position:I

    invoke-interface {p1, v0}, Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public setDrawingable()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildDrawingCache()V

    .line 105
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    const v1, -0x777778

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setImageDrawable(Lcom/gpc/photoselector/model/PhotoModel;)V
    .locals 4

    .line 72
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->photo:Lcom/gpc/photoselector/model/PhotoModel;

    .line 73
    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->isChecked()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivSelectTip:Landroid/widget/ImageView;

    sget v2, Lcom/photoselectorforts/R$drawable;->ops_a_photo_number_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->tvSelectTip:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoItem;->setDrawingable()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivSelectTip:Landroid/widget/ImageView;

    sget v2, Lcom/photoselectorforts/R$drawable;->ops_a_photo_def_photo_picker_vc:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->tvSelectTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isForceGray\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->isForceGray:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoItem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-boolean v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->isForceGray:Z

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoItem;->setDrawingable()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/photoselector/ui/PhotoItem;->unsetDrawingable()V

    .line 89
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/gpc/photoselector/ui/PhotoItem$1;

    invoke-direct {v1, p0, p1}, Lcom/gpc/photoselector/ui/PhotoItem$1;-><init>(Lcom/gpc/photoselector/ui/PhotoItem;Lcom/gpc/photoselector/model/PhotoModel;)V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xa

    .line 94
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long v2, p1

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setIsForceGray(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->isForceGray:Z

    return-void
.end method

.method public setOnClickListener(Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;I)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoItem;->l:Lcom/gpc/photoselector/ui/PhotoItem$onItemClickListener;

    .line 124
    iput p2, p0, Lcom/gpc/photoselector/ui/PhotoItem;->position:I

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->photo:Lcom/gpc/photoselector/model/PhotoModel;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->cbPhoto:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public unsetDrawingable()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoItem;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method
