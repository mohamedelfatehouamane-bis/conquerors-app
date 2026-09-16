.class public Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ColorChooserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;,
        Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;,
        Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;,
        Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorChooserTag;
    }
.end annotation


# static fields
.field public static final TAG_ACCENT:Ljava/lang/String; = "[MD_COLOR_CHOOSER]"

.field public static final TAG_CUSTOM:Ljava/lang/String; = "[MD_COLOR_CHOOSER]"

.field public static final TAG_PRIMARY:Ljava/lang/String; = "[MD_COLOR_CHOOSER]"


# instance fields
.field private callback:Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

.field private circleSize:I

.field private colorChooserCustomFrame:Landroid/view/View;

.field private colorsSub:[[I

.field private colorsTop:[I

.field private customColorHex:Landroid/widget/EditText;

.field private customColorIndicator:Landroid/view/View;

.field private customColorRgbListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private customColorTextWatcher:Landroid/text/TextWatcher;

.field private customSeekA:Landroid/widget/SeekBar;

.field private customSeekAValue:Landroid/widget/TextView;

.field private customSeekB:Landroid/widget/SeekBar;

.field private customSeekBValue:Landroid/widget/TextView;

.field private customSeekG:Landroid/widget/SeekBar;

.field private customSeekGValue:Landroid/widget/TextView;

.field private customSeekR:Landroid/widget/SeekBar;

.field private customSeekRValue:Landroid/widget/TextView;

.field private grid:Landroid/widget/GridView;

.field private selectedCustomColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->invalidateDynamicButtonColors()V

    return-void
.end method

.method static synthetic access$100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->toggleCustom(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekA:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekAValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekR:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekG:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekB:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekRValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekGValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->isInSub()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekBValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)[[I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    return-object p0
.end method

.method static synthetic access$2200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)[I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsTop:[I

    return-object p0
.end method

.method static synthetic access$2400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->circleSize:I

    return p0
.end method

.method static synthetic access$2500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->isInSub(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->invalidate()V

    return-void
.end method

.method static synthetic access$700(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getSelectedColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->callback:Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->selectedCustomColor:I

    return p0
.end method

.method static synthetic access$902(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->selectedCustomColor:I

    return p1
.end method

.method private dismissIfNecessary(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 577
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 579
    move-object v0, p2

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 580
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private findSubIndexForColor(II)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    if-eqz v0, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p1, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 283
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 284
    aget v1, p1, v0

    if-ne v1, p2, :cond_1

    .line 285
    invoke-direct {p0, v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static findVisible(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 76
    instance-of p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    if-eqz p1, :cond_0

    .line 77
    check-cast p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateColors()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v0

    .line 84
    iget-object v1, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->colorsTop:[I

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->colorsTop:[I

    iput-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsTop:[I

    .line 86
    iget-object v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->colorsSub:[[I

    iput-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    return-void

    .line 90
    :cond_0
    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->accentMode:Z

    if-eqz v0, :cond_1

    .line 91
    sget-object v0, Lcom/afollestad/materialdialogs/color/ColorPalette;->ACCENT_COLORS:[I

    iput-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsTop:[I

    .line 92
    sget-object v0, Lcom/afollestad/materialdialogs/color/ColorPalette;->ACCENT_COLORS_SUB:[[I

    iput-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/afollestad/materialdialogs/color/ColorPalette;->PRIMARY_COLORS:[I

    iput-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsTop:[I

    .line 95
    sget-object v0, Lcom/afollestad/materialdialogs/color/ColorPalette;->PRIMARY_COLORS_SUB:[[I

    iput-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    return-void
.end method

.method private getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 2

    .line 570
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "builder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSelectedColor()I
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorChooserCustomFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->selectedCustomColor:I

    return v0

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 266
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsTop:[I

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1010435

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 273
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/afollestad/materialdialogs/commons/R$attr;->colorAccent:I

    invoke-static {v1, v2, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v0

    :cond_3
    return v0
.end method

.method private invalidate()V
    .locals 4

    .line 557
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->grid:Landroid/widget/GridView;

    new-instance v1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorGridAdapter;-><init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 559
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->grid:Landroid/widget/GridView;

    .line 560
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/afollestad/materialdialogs/commons/R$drawable;->md_transparent:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 559
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 564
    :goto_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    :cond_1
    return-void
.end method

.method private invalidateDynamicButtonColors()V
    .locals 4

    .line 222
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v1

    .line 227
    iget-boolean v1, v1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->dynamicButtonColor:Z

    if-eqz v1, :cond_5

    .line 228
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getSelectedColor()I

    move-result v1

    .line 229
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    .line 230
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    const/16 v3, 0xf7

    if-le v2, v3, :cond_2

    .line 231
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    if-le v2, v3, :cond_2

    .line 232
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-le v2, v3, :cond_2

    .line 235
    :cond_1
    const-string v1, "#DEDEDE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 238
    :cond_2
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v2

    iget-boolean v2, v2, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->dynamicButtonColor:Z

    if-eqz v2, :cond_3

    .line 239
    sget-object v2, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getActionButton(Lcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(I)V

    .line 240
    sget-object v2, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getActionButton(Lcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(I)V

    .line 241
    sget-object v2, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getActionButton(Lcom/afollestad/materialdialogs/DialogAction;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(I)V

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekR:Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekA:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekA:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/SeekBar;I)V

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekR:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/SeekBar;I)V

    .line 249
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekG:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/SeekBar;I)V

    .line 250
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekB:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/SeekBar;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private isInSub(Z)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_sub"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private isInSub()Z
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "in_sub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private subIndex()I
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sub_index"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private subIndex(I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sub_index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private toggleCustom(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    if-nez p1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 450
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v0

    iget v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->customBtn:I

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(I)V

    .line 451
    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v2

    iget v2, v2, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->presetsBtn:I

    invoke-virtual {p1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setActionButton(Lcom/afollestad/materialdialogs/DialogAction;I)V

    .line 452
    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v2

    iget v2, v2, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->cancelBtn:I

    invoke-virtual {p1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setActionButton(Lcom/afollestad/materialdialogs/DialogAction;I)V

    .line 453
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->grid:Landroid/widget/GridView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 454
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorChooserCustomFrame:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    new-instance p1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;

    invoke-direct {p1, p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;-><init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorTextWatcher:Landroid/text/TextWatcher;

    .line 490
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 491
    new-instance p1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;

    invoke-direct {p1, p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;-><init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorRgbListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 528
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekR:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 529
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekG:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorRgbListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 530
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekB:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorRgbListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 531
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekA:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 532
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekA:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorRgbListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 533
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    iget v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->selectedCustomColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "%08X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 535
    :cond_1
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    const v2, 0xffffff

    iget v3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->selectedCustomColor:I

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "%06X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 538
    :cond_2
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v0

    iget v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->title:I

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(I)V

    .line 539
    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v2

    iget v2, v2, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->customBtn:I

    invoke-virtual {p1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setActionButton(Lcom/afollestad/materialdialogs/DialogAction;I)V

    .line 540
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->isInSub()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v2

    iget v2, v2, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->backBtn:I

    invoke-virtual {p1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setActionButton(Lcom/afollestad/materialdialogs/DialogAction;I)V

    goto :goto_0

    .line 543
    :cond_3
    sget-object v0, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v2

    iget v2, v2, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->cancelBtn:I

    invoke-virtual {p1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setActionButton(Lcom/afollestad/materialdialogs/DialogAction;I)V

    .line 545
    :goto_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->grid:Landroid/widget/GridView;

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 546
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorChooserCustomFrame:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p1, 0x0

    .line 548
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorTextWatcher:Landroid/text/TextWatcher;

    .line 549
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekR:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 550
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekG:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 551
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekB:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 552
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorRgbListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method private topIndex()I
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "top_index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private topIndex(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsTop:[I

    aget v0, v0, p1

    invoke-direct {p0, p1, v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->findSubIndexForColor(II)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "top_index"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getTitle()I
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v0

    .line 160
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->isInSub()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget v1, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->titleSub:I

    goto :goto_0

    .line 163
    :cond_0
    iget v1, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->title:I

    :goto_0
    if-nez v1, :cond_1

    .line 166
    iget v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->title:I

    return v0

    :cond_1
    return v1
.end method

.method public isAccentMode()Z
    .locals 1

    .line 181
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v0

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->accentMode:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->callback:Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->callback:Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    return-void

    .line 118
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ColorChooserDialog needs to be shown from an Activity/Fragment implementing ColorCallback."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 188
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 189
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 190
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v1

    .line 192
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->isInSub()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex(I)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex(I)V

    .line 196
    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    if-eqz v2, :cond_1

    array-length v2, v2

    if-ge p1, v2, :cond_1

    .line 197
    sget-object p1, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    iget v2, v1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->backBtn:I

    invoke-virtual {v0, p1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setActionButton(Lcom/afollestad/materialdialogs/DialogAction;I)V

    const/4 p1, 0x1

    .line 198
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->isInSub(Z)V

    .line 202
    :cond_1
    :goto_0
    iget-boolean p1, v1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustom:Z

    if-eqz p1, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getSelectedColor()I

    move-result p1

    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->selectedCustomColor:I

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->invalidateDynamicButtonColors()V

    .line 206
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->invalidate()V

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 294
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "builder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 298
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->generateColors()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 304
    const-string v2, "in_custom"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v0

    .line 305
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getSelectedColor()I

    move-result v2

    goto :goto_5

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object p1

    iget-boolean p1, p1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->setPreselectionColor:Z

    if-eqz p1, :cond_8

    .line 308
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object p1

    iget v2, p1, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->preselectColor:I

    const/4 p1, 0x0

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    .line 310
    :goto_0
    iget-object v4, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsTop:[I

    array-length v5, v4

    if-ge p1, v5, :cond_7

    .line 311
    aget v4, v4, p1

    if-ne v4, v2, :cond_3

    .line 313
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex(I)V

    .line 314
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v3

    iget-boolean v3, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->accentMode:Z

    if-eqz v3, :cond_1

    const/4 p1, 0x2

    .line 315
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex(I)V

    goto :goto_4

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    if-eqz v3, :cond_2

    .line 317
    invoke-direct {p0, p1, v2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->findSubIndexForColor(II)V

    goto :goto_4

    :cond_2
    const/4 p1, 0x5

    .line 319
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex(I)V

    goto :goto_4

    .line 324
    :cond_3
    iget-object v4, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 325
    :goto_1
    iget-object v5, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorsSub:[[I

    aget-object v5, v5, p1

    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 326
    aget v5, v5, v4

    if-ne v5, v2, :cond_4

    .line 328
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex(I)V

    .line 329
    invoke-direct {p0, v4}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex(I)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    move p1, v3

    goto :goto_5

    :cond_8
    const/high16 v2, -0x1000000

    :goto_4
    const/4 p1, 0x1

    .line 345
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/afollestad/materialdialogs/commons/R$dimen;->md_colorchooser_circlesize:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->circleSize:I

    .line 346
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v3

    .line 348
    new-instance v4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 349
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getTitle()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    .line 351
    invoke-virtual {v4, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    sget v5, Lcom/afollestad/materialdialogs/commons/R$layout;->md_dialog_colorchooser:I

    .line 352
    invoke-virtual {v4, v5, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    iget v5, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->cancelBtn:I

    .line 353
    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    iget v5, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->doneBtn:I

    .line 354
    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustom:Z

    if-eqz v5, :cond_a

    iget v5, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->customBtn:I

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 355
    :goto_6
    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->mediumFont:Ljava/lang/String;

    iget-object v6, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->regularFont:Ljava/lang/String;

    .line 356
    invoke-virtual {v4, v5, v6}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->typeface(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$4;

    invoke-direct {v5, p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$4;-><init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    .line 357
    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;

    invoke-direct {v5, p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;-><init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    .line 365
    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$2;

    invoke-direct {v5, p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$2;-><init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    .line 379
    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNeutral(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$1;

    invoke-direct {v5, p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$1;-><init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    .line 386
    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v4

    .line 394
    iget-object v5, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    if-eqz v5, :cond_b

    .line 395
    iget-object v5, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme(Lcom/afollestad/materialdialogs/Theme;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 398
    :cond_b
    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v4

    .line 399
    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/MaterialDialog;->getCustomView()Landroid/view/View;

    move-result-object v5

    .line 400
    sget v6, Lcom/afollestad/materialdialogs/commons/R$id;->md_grid:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->grid:Landroid/widget/GridView;

    .line 402
    iget-boolean v6, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustom:Z

    if-eqz v6, :cond_d

    .line 403
    iput v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->selectedCustomColor:I

    .line 404
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorChooserCustomFrame:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorChooserCustomFrame:Landroid/view/View;

    .line 405
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_hexInput:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    .line 406
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorIndicator:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorIndicator:Landroid/view/View;

    .line 407
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorA:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekA:Landroid/widget/SeekBar;

    .line 408
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorAValue:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekAValue:Landroid/widget/TextView;

    .line 409
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorR:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekR:Landroid/widget/SeekBar;

    .line 410
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorRValue:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekRValue:Landroid/widget/TextView;

    .line 411
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorG:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekG:Landroid/widget/SeekBar;

    .line 412
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorGValue:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekGValue:Landroid/widget/TextView;

    .line 413
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorB:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekB:Landroid/widget/SeekBar;

    .line 414
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorBValue:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekBValue:Landroid/widget/TextView;

    .line 416
    iget-boolean v2, v3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustomAlpha:Z

    const/16 v3, 0x8

    if-nez v2, :cond_c

    .line 417
    sget v2, Lcom/afollestad/materialdialogs/commons/R$id;->md_colorALabel:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekA:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 419
    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customSeekAValue:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    const-string v3, "2196F3"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x6

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_7

    .line 423
    :cond_c
    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    const-string v5, "FF2196F3"

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->customColorHex:Landroid/widget/EditText;

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_7
    if-nez p1, :cond_d

    .line 429
    invoke-direct {p0, v4}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->toggleCustom(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 433
    :cond_d
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->invalidate()V

    return-object v4

    .line 295
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ColorChooserDialog should be created using its Builder interface."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 439
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 440
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->callback:Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    if-eqz p1, :cond_0

    .line 441
    invoke-interface {p1, p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;->onColorChooserDismissed(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 214
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 215
    check-cast p1, Lcom/afollestad/materialdialogs/color/CircleView;

    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/color/CircleView;->showHint(I)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    const-string v0, "top_index"

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->topIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v0, "in_sub"

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->isInSub()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v0, "sub_index"

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->subIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->colorChooserCustomFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    const-string v1, "in_custom"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentActivity;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
    .locals 0

    .line 602
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
    .locals 2

    .line 587
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v0

    .line 588
    iget-object v1, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->colorsTop:[I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->accentMode:Z

    .line 595
    :goto_0
    const-string v0, "[MD_COLOR_CHOOSER]"

    invoke-direct {p0, p1, v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->dismissIfNecessary(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p0
.end method

.method public tag()Ljava/lang/String;
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->getBuilder()Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v0

    .line 173
    iget-object v1, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 174
    iget-object v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->tag:Ljava/lang/String;

    return-object v0

    .line 176
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
