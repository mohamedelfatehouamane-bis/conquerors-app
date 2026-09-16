.class Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;
.super Ljava/lang/Object;
.source "ColorChooserDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 492
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    .line 498
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object p3

    iget-boolean p3, p3, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->allowUserCustomAlpha:Z

    if-eqz p3, :cond_0

    .line 499
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    .line 501
    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    .line 502
    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    .line 503
    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    .line 504
    invoke-static {v2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 500
    invoke-static {p3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    .line 505
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1700(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v1, p2, [Ljava/lang/Object;

    aput-object p3, v1, p1

    const-string p3, "%08X"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 507
    :cond_0
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    .line 509
    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    .line 510
    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    .line 511
    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 508
    invoke-static {p3, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    .line 512
    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1700(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0xffffff

    and-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v1, p2, [Ljava/lang/Object;

    aput-object p3, v1, p1

    const-string p3, "%06X"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    aput-object v0, v1, p1

    const-string v0, "%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1800(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1900(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, p2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object p3, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p3}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$2000(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$6;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$1500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v1, p2, p1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
