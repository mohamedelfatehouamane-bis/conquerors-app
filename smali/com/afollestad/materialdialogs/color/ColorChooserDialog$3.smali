.class Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;
.super Ljava/lang/Object;
.source "ColorChooserDialog.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    .line 366
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    .line 369
    iget-object p2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$200(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 370
    sget-object p2, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$300(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;

    move-result-object v0

    iget v0, v0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$Builder;->cancelBtn:I

    invoke-virtual {p1, p2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setActionButton(Lcom/afollestad/materialdialogs/DialogAction;I)V

    .line 371
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$400(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;Z)V

    .line 372
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$500(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)V

    .line 373
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$3;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$600(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)V

    return-void

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->cancel()V

    return-void
.end method
