.class public Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
.super Ljava/lang/Object;
.source "ColorChooserDialog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field accentMode:Z

.field allowUserCustom:Z

.field allowUserCustomAlpha:Z

.field backBtn:I

.field cancelBtn:I

.field colorsSub:[[I

.field colorsTop:[I

.field final transient context:Landroid/content/Context;

.field customBtn:I

.field doneBtn:I

.field dynamicButtonColor:Z

.field mediumFont:Ljava/lang/String;

.field preselectColor:I

.field presetsBtn:I

.field regularFont:Ljava/lang/String;

.field setPreselectionColor:Z

.field tag:Ljava/lang/String;

.field theme:Lcom/afollestad/materialdialogs/Theme;

.field final title:I

.field titleSub:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_done_label:I

    iput v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->doneBtn:I

    .line 625
    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_back_label:I

    iput v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->backBtn:I

    .line 626
    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_cancel_label:I

    iput v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->cancelBtn:I

    .line 627
    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_custom_label:I

    iput v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->customBtn:I

    .line 628
    sget v0, Lcom/afollestad/materialdialogs/commons/R$string;->md_presets_label:I

    iput v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->presetsBtn:I

    const/4 v0, 0x0

    .line 634
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->accentMode:Z

    const/4 v1, 0x1

    .line 635
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->dynamicButtonColor:Z

    .line 636
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustom:Z

    .line 637
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustomAlpha:Z

    .line 638
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->setPreselectionColor:Z

    .line 641
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->context:Landroid/content/Context;

    .line 642
    iput p2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->title:I

    return-void
.end method


# virtual methods
.method public accentMode(Z)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 679
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->accentMode:Z

    return-object p0
.end method

.method public allowUserColorInput(Z)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 735
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustom:Z

    return-object p0
.end method

.method public allowUserColorInputAlpha(Z)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 741
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustomAlpha:Z

    return-object p0
.end method

.method public backButton(I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 691
    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->backBtn:I

    return-object p0
.end method

.method public build()Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
    .locals 3

    .line 747
    new-instance v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-direct {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;-><init>()V

    .line 748
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 749
    const-string v2, "builder"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 750
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public cancelButton(I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 697
    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->cancelBtn:I

    return-object p0
.end method

.method public customButton(I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 703
    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->customBtn:I

    return-object p0
.end method

.method public customColors(I[[I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->getColorArray(Landroid/content/Context;I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->colorsTop:[I

    .line 729
    iput-object p2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->colorsSub:[[I

    return-object p0
.end method

.method public customColors([I[[I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->colorsTop:[I

    .line 722
    iput-object p2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->colorsSub:[[I

    return-object p0
.end method

.method public doneButton(I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 685
    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->doneBtn:I

    return-object p0
.end method

.method public dynamicButtonColor(Z)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 715
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->dynamicButtonColor:Z

    return-object p0
.end method

.method public preselect(I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 672
    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->preselectColor:I

    const/4 p1, 0x1

    .line 673
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->setPreselectionColor:Z

    return-object p0
.end method

.method public presetsButton(I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 709
    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->presetsBtn:I

    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentActivity;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
    .locals 0

    .line 763
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    move-result-object p1

    return-object p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog;
    .locals 1

    .line 756
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->build()Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    move-result-object v0

    .line 757
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->show(Landroidx/fragment/app/FragmentManager;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    return-object v0
.end method

.method public tag(Ljava/lang/String;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public theme(Lcom/afollestad/materialdialogs/Theme;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    return-object p0
.end method

.method public titleSub(I)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 654
    iput p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->titleSub:I

    return-object p0
.end method

.method public typeface(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->mediumFont:Ljava/lang/String;

    .line 648
    iput-object p2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->regularFont:Ljava/lang/String;

    return-object p0
.end method
