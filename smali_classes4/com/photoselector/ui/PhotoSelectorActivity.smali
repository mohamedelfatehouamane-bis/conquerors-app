.class public Lcom/photoselector/ui/PhotoSelectorActivity;
.super Landroid/app/Activity;
.source "PhotoSelectorActivity.java"

# interfaces
.implements Lcom/photoselector/ui/PhotoItem$onItemClickListener;
.implements Lcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;,
        Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;
    }
.end annotation


# static fields
.field public static final KEY_CAMERA_ENABEL:Ljava/lang/String; = "camera_enabel"

.field public static final RECCENT_PHOTO:Ljava/lang/String; = "\u6700\u8fd1\u7167\u7247"

.field private static final REQUEST_CAMERA:I = 0x1

.field public static final REQUEST_PHOTO:I = 0x0

.field private static final REQUEST_SELECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PhotoSelectorActivity"

.field private static picFileFullName:Ljava/lang/String;


# instance fields
.field private albumAdapter:Lcom/photoselector/ui/AlbumAdapter;

.field private albumListener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

.field private btnOk:Landroid/widget/Button;

.field private currentPriview:Lcom/photoselector/model/PhotoModel;

.field private gvPhotos:Landroid/widget/GridView;

.field private isCameraEnabel:Z

.field private layoutAlbum:Landroid/widget/RelativeLayout;

.field private lvAblum:Landroid/widget/ListView;

.field private photoAdapter:Lcom/photoselector/ui/PhotoSelectorAdapter;

.field private photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

.field private reccentListener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

.field private selected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation
.end field

.field private tvAlbum:Landroid/widget/TextView;

.field private tvPreview:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->isCameraEnabel:Z

    .line 356
    new-instance v0, Lcom/photoselector/ui/PhotoSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/photoselector/ui/PhotoSelectorActivity$1;-><init>(Lcom/photoselector/ui/PhotoSelectorActivity;)V

    iput-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->albumListener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    .line 363
    new-instance v0, Lcom/photoselector/ui/PhotoSelectorActivity$2;

    invoke-direct {v0, p0}, Lcom/photoselector/ui/PhotoSelectorActivity$2;-><init>(Lcom/photoselector/ui/PhotoSelectorActivity;)V

    iput-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    return-void
.end method

.method static synthetic access$000(Lcom/photoselector/ui/PhotoSelectorActivity;)Lcom/photoselector/ui/AlbumAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->albumAdapter:Lcom/photoselector/ui/AlbumAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/photoselector/ui/PhotoSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/photoselector/ui/PhotoSelectorActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->isCameraEnabel:Z

    return p0
.end method

.method static synthetic access$300(Lcom/photoselector/ui/PhotoSelectorActivity;)Lcom/photoselector/ui/PhotoSelectorAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/photoselector/ui/PhotoSelectorAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/photoselector/ui/PhotoSelectorActivity;)Landroid/widget/GridView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->gvPhotos:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/photoselector/ui/PhotoSelectorActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->reset()V

    return-void
.end method

.method private album()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->popAlbum()V

    return-void

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->hideAlbum()V

    return-void
.end method

.method private catchPicture()V
    .locals 6

    .line 159
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 167
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/photoselector/ui/PhotoSelectorActivity;->picFileFullName:Ljava/lang/String;

    .line 169
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x1

    const-string v5, "output"

    if-lt v1, v3, :cond_1

    .line 170
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    sget-object v1, Lcom/photoselector/PhotoSelectorConfig;->PHOTO_SELECTOR_FILEPROVIDER_AUTHORITY:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    :goto_0
    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    const-string v0, "PhotoSelectorActivity"

    const-string v1, "Please request permission android.permission.CAMERA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_2
    invoke-static {p0, v0, v4}, Lcom/photoselector/util/CommonUtils;->launchActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void

    .line 184
    :cond_3
    sget v0, Lcom/photoselector/R$string;->insert_sdcard:I

    invoke-virtual {p0, v0}, Lcom/photoselector/ui/PhotoSelectorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private hideAlbum()V
    .locals 3

    .line 264
    new-instance v0, Lcom/photoselector/util/AnimationUtil;

    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselector/R$anim;->translate_down:I

    invoke-direct {v0, v1, v2}, Lcom/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/photoselector/util/AnimationUtil;->setLinearInterpolator()Lcom/photoselector/util/AnimationUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    .line 266
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private ok()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/photoselector/ui/PhotoSelectorActivity;->setResult(I)V

    goto :goto_0

    .line 230
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 232
    const-string v2, "photos"

    iget-object v3, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 234
    invoke-virtual {p0, v1, v0}, Lcom/photoselector/ui/PhotoSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->finish()V

    return-void
.end method

.method private popAlbum()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    new-instance v0, Lcom/photoselector/util/AnimationUtil;

    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/photoselector/R$anim;->translate_up_current:I

    invoke-direct {v0, v1, v2}, Lcom/photoselector/util/AnimationUtil;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/photoselector/util/AnimationUtil;->setLinearInterpolator()Lcom/photoselector/util/AnimationUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/photoselector/util/AnimationUtil;->startAnimation(Landroid/view/View;)V

    return-void
.end method

.method private priview()V
    .locals 3

    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    const-string v1, "photos"

    iget-object v2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 244
    const-class v1, Lcom/photoselector/ui/PhotoPreviewActivity;

    invoke-static {p0, v1, v0}, Lcom/photoselector/util/CommonUtils;->launchActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    const-string v1, "\u9884\u89c8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 204
    new-instance v0, Lcom/photoselector/model/PhotoModel;

    sget-object v2, Lcom/photoselector/ui/PhotoSelectorActivity;->picFileFullName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/photoselector/model/PhotoModel;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->ok()V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 212
    const-string p1, "position"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 213
    iget-object p2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object p2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    sget p3, Lcom/photoselector/R$string;->recent_pictures:I

    invoke-virtual {p0, p3}, Lcom/photoselector/ui/PhotoSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->isCameraEnabel:Z

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 218
    :cond_1
    iget-object p2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p3, p1}, Lcom/photoselector/ui/PhotoSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/photoselector/model/PhotoModel;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->ok()V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->hideAlbum()V

    return-void

    .line 320
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCheckedChanged(Lcom/photoselector/model/PhotoModel;Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 293
    iget-object p3, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->gvPhotos:Landroid/widget/GridView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getChildCount()I

    move-result p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 295
    iget-object v2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->gvPhotos:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 296
    sget v3, Lcom/photoselector/R$id;->cb_photo_lpsi:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    if-eq v2, p2, :cond_0

    .line 297
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_1
    iget-object p2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object p2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 305
    :cond_2
    iget-object p2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 307
    :goto_1
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u9884\u89c8("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 310
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    const-string p2, "\u9884\u89c8"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselector/R$id;->btn_right_lh:I

    if-ne v0, v1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->ok()V

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselector/R$id;->tv_album_ar:I

    if-ne v0, v1, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->album()V

    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselector/R$id;->tv_preview_ar:I

    if-ne v0, v1, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->priview()V

    return-void

    .line 134
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/photoselector/R$id;->tv_camera_vc:I

    if-ne v0, v1, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->catchPicture()V

    return-void

    .line 136
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/photoselector/R$id;->bv_back_lh:I

    if-ne p1, v0, :cond_4

    .line 137
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->finish()V

    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->requestWindowFeature(I)Z

    .line 70
    sget p1, Lcom/photoselector/R$layout;->activity_photoselector:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->setContentView(I)V

    .line 84
    new-instance p1, Lcom/photoselector/domain/PhotoSelectorDomain;

    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/photoselector/domain/PhotoSelectorDomain;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->selected:Ljava/util/ArrayList;

    .line 88
    sget p1, Lcom/photoselector/R$id;->tv_title_lh:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvTitle:Landroid/widget/TextView;

    .line 89
    sget p1, Lcom/photoselector/R$id;->gv_photos_ar:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->gvPhotos:Landroid/widget/GridView;

    .line 90
    sget p1, Lcom/photoselector/R$id;->lv_ablum_ar:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->lvAblum:Landroid/widget/ListView;

    .line 91
    sget p1, Lcom/photoselector/R$id;->btn_right_lh:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->btnOk:Landroid/widget/Button;

    .line 92
    sget p1, Lcom/photoselector/R$id;->tv_album_ar:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    .line 93
    sget p1, Lcom/photoselector/R$id;->tv_preview_ar:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    .line 94
    sget p1, Lcom/photoselector/R$id;->layout_album_ar:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->layoutAlbum:Landroid/widget/RelativeLayout;

    .line 96
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvPreview:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "camera_enabel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->isCameraEnabel:Z

    .line 105
    :cond_0
    iget-boolean p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->isCameraEnabel:Z

    if-eqz p1, :cond_2

    .line 107
    const-string p1, "android.permission.CAMERA"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 109
    const-string p1, "PhotoSelectorActivity"

    const-string v0, "The lack of permissions,Please request permission.CAMERA or setCameraEnabel(faslse)!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v6, p0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    move-object v6, p1

    .line 112
    :goto_0
    new-instance v0, Lcom/photoselector/ui/PhotoSelectorAdapter;

    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-static {p0}, Lcom/photoselector/util/CommonUtils;->getWidthPixels(Landroid/app/Activity;)I

    move-result v3

    move-object v5, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/photoselector/ui/PhotoSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/photoselector/ui/PhotoItem$onPhotoItemCheckedListener;Lcom/photoselector/ui/PhotoItem$onItemClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->photoAdapter:Lcom/photoselector/ui/PhotoSelectorAdapter;

    .line 114
    iget-object p1, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->gvPhotos:Landroid/widget/GridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    new-instance p1, Lcom/photoselector/ui/AlbumAdapter;

    invoke-virtual {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/photoselector/ui/AlbumAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->albumAdapter:Lcom/photoselector/ui/AlbumAdapter;

    .line 117
    iget-object v0, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->lvAblum:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object p1, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->lvAblum:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    sget p1, Lcom/photoselector/R$id;->bv_back_lh:I

    invoke-virtual {p0, p1}, Lcom/photoselector/ui/PhotoSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

    iget-object v0, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-virtual {p1, v0}, Lcom/photoselector/domain/PhotoSelectorDomain;->getReccent(Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    .line 123
    iget-object p1, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

    iget-object v0, v4, Lcom/photoselector/ui/PhotoSelectorActivity;->albumListener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;

    invoke-virtual {p1, v0}, Lcom/photoselector/domain/PhotoSelectorDomain;->updateAlbum(Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalAlbumListener;)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 3

    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/photoselector/R$string;->recent_pictures:I

    invoke-virtual {p0, v2}, Lcom/photoselector/ui/PhotoSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "position"

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->isCameraEnabel:Z

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 281
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    :goto_0
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "album"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-class p1, Lcom/photoselector/ui/PhotoPreviewActivity;

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/photoselector/util/CommonUtils;->launchActivityForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 326
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/photoselector/model/AlbumModel;

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 327
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 328
    invoke-virtual {p1, p5}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/photoselector/model/AlbumModel;

    if-ne p5, p3, :cond_0

    const/4 v1, 0x1

    .line 330
    invoke-virtual {v0, v1}, Lcom/photoselector/model/AlbumModel;->setCheck(Z)V

    goto :goto_1

    .line 332
    :cond_0
    invoke-virtual {v0, p4}, Lcom/photoselector/model/AlbumModel;->setCheck(Z)V

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->albumAdapter:Lcom/photoselector/ui/AlbumAdapter;

    invoke-virtual {p1}, Lcom/photoselector/ui/AlbumAdapter;->notifyDataSetChanged()V

    .line 335
    invoke-direct {p0}, Lcom/photoselector/ui/PhotoSelectorActivity;->hideAlbum()V

    .line 336
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvAlbum:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {p2}, Lcom/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p1

    sget p3, Lcom/photoselector/R$string;->recent_pictures:I

    invoke-virtual {p0, p3}, Lcom/photoselector/ui/PhotoSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 341
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

    iget-object p2, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-virtual {p1, p2}, Lcom/photoselector/domain/PhotoSelectorDomain;->getReccent(Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    return-void

    .line 343
    :cond_2
    iget-object p1, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->photoSelectorDomain:Lcom/photoselector/domain/PhotoSelectorDomain;

    invoke-virtual {p2}, Lcom/photoselector/model/AlbumModel;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/photoselector/ui/PhotoSelectorActivity;->reccentListener:Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;

    invoke-virtual {p1, p2, p3}, Lcom/photoselector/domain/PhotoSelectorDomain;->getAlbum(Ljava/lang/String;Lcom/photoselector/ui/PhotoSelectorActivity$OnLocalReccentListener;)V

    return-void
.end method
