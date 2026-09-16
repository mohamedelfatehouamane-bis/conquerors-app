.class Lcom/afollestad/materialdialogs/color/ColorChooserDialog$4;
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

    .line 358
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$4;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$4;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$800(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$4;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p2}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$700(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;)I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$ColorCallback;->onColorSelection(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;I)V

    .line 362
    iget-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$4;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->dismiss()V

    return-void
.end method
