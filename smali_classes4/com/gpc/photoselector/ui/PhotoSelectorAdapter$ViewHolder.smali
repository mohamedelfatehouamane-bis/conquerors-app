.class Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PhotoSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cbPhoto:Landroid/widget/CheckBox;

.field ivPhoto:Landroid/widget/ImageView;

.field ivSelectTip:Landroid/widget/ImageView;

.field ivVideo:Landroid/widget/ImageView;

.field layout_select:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

.field tvSelectTip:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThumbnailSize(Landroid/view/View;)Landroid/util/Size;
    .locals 2

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x5a

    if-gtz v0, :cond_1

    const/16 v0, 0x5a

    :cond_1
    if-gtz p1, :cond_2

    const/16 p1, 0x5a

    .line 141
    :cond_2
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 109
    sget v0, Lcom/photoselectorforts/R$id;->iv_photo_lpsi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivPhoto:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/photoselectorforts/R$id;->cb_photo_lpsi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->cbPhoto:Landroid/widget/CheckBox;

    .line 111
    sget v0, Lcom/photoselectorforts/R$id;->iv_select_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivSelectTip:Landroid/widget/ImageView;

    .line 112
    sget v0, Lcom/photoselectorforts/R$id;->tv_select_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->tvSelectTip:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/photoselectorforts/R$id;->iv_video_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivVideo:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/photoselectorforts/R$id;->layout_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->layout_select:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setCheckBoxVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->layout_select:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->layout_select:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public update(ZILcom/gpc/photoselector/model/PhotoModel;Landroid/view/View;)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->cbPhoto:Landroid/widget/CheckBox;

    invoke-virtual {p3}, Lcom/gpc/photoselector/model/PhotoModel;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    invoke-virtual {p3}, Lcom/gpc/photoselector/model/PhotoModel;->isChecked()Z

    move-result v0

    const v1, -0x777778

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 147
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivSelectTip:Landroid/widget/ImageView;

    sget v0, Lcom/photoselectorforts/R$drawable;->ops_a_photo_number_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->tvSelectTip:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/gpc/photoselector/model/PhotoModel;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivPhoto:Landroid/widget/ImageView;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivSelectTip:Landroid/widget/ImageView;

    sget v3, Lcom/photoselectorforts/R$drawable;->ops_a_photo_def_photo_picker_vc:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->tvSelectTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivPhoto:Landroid/widget/ImageView;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 161
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "OriginalPath:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotoSelectorAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->this$0:Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;

    iget-object p1, p1, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->getThumbnailSize(Landroid/view/View;)Landroid/util/Size;

    move-result-object p4

    iget-object v0, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivPhoto:Landroid/widget/ImageView;

    invoke-static {p1, p4, p3, v0}, Lcom/gpc/photoselector/util/ThumbnailUtils;->loadThumbnailAsync(Landroid/content/Context;Landroid/util/Size;Lcom/gpc/photoselector/model/PhotoModel;Landroid/widget/ImageView;)V

    .line 183
    const-string p1, "video"

    invoke-virtual {p3}, Lcom/gpc/photoselector/model/PhotoModel;->getType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivVideo:Landroid/widget/ImageView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivVideo:Landroid/widget/ImageView;

    const/16 p4, 0x8

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    :goto_1
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->ivPhoto:Landroid/widget/ImageView;

    new-instance p4, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$1;

    invoke-direct {p4, p0, p2}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$1;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;I)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;->cbPhoto:Landroid/widget/CheckBox;

    new-instance p2, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$2;

    invoke-direct {p2, p0, p3}, Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder$2;-><init>(Lcom/gpc/photoselector/ui/PhotoSelectorAdapter$ViewHolder;Lcom/gpc/photoselector/model/PhotoModel;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
