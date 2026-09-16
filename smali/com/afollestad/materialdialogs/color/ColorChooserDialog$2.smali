.class Lcom/afollestad/materialdialogs/color/ColorChooserDialog$2;
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

    .line 380
    iput-object p1, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$2;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 383
    iget-object p2, p0, Lcom/afollestad/materialdialogs/color/ColorChooserDialog$2;->this$0:Lcom/afollestad/materialdialogs/color/ColorChooserDialog;

    invoke-static {p2, p1}, Lcom/afollestad/materialdialogs/color/ColorChooserDialog;->access$100(Lcom/afollestad/materialdialogs/color/ColorChooserDialog;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    return-void
.end method
