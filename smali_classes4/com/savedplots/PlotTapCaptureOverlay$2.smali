.class Lcom/savedplots/PlotTapCaptureOverlay$2;
.super Ljava/lang/Object;
.source "PlotTapCaptureOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/savedplots/PlotTapCaptureOverlay;->showNameDialog(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/savedplots/PlotTapCaptureOverlay;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/savedplots/PlotTapCaptureOverlay;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p2, p0, Lcom/savedplots/PlotTapCaptureOverlay$2;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/savedplots/PlotTapCaptureOverlay$2;->val$s:Ljava/lang/String;

    iput-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$2;->this$0:Lcom/savedplots/PlotTapCaptureOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 168
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$2;->val$input:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/savedplots/PlotTapCaptureOverlay$2;->val$s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/savedplots/PlotTapCaptureOverlay$2;->val$input:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/savedplots/PlotTapCaptureOverlay$2;->val$s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 170
    return-void
.end method
