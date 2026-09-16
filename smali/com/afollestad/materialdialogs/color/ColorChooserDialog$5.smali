.class Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;
.super Ljava/lang/Object;
.source "ColorChooserDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->toggleCustom(Lcom/afollestad/materialdialogs/MaterialDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const-string p2, "#"

    .line 464
    :try_start_0
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p3, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$902(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    const/high16 p2, -0x1000000

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$902(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)I

    .line 468
    :goto_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1000(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$900(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 469
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$900(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    .line 471
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 472
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;

    move-result-object p3

    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p2

    const-string p1, "%d"

    invoke-static {p4, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$900(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 475
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 476
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$900(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    .line 477
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 478
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$900(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 479
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 480
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;Z)V

    .line 481
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1600(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)V

    .line 482
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)V

    .line 483
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$5;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$000(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    return-void
.end method
