.class public final synthetic Lcom/gpc/operations/dialog/BaseBottomDialogFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/operations/dialog/BaseBottomDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/operations/dialog/BaseBottomDialogFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/gpc/operations/dialog/BaseBottomDialogFragment;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/gpc/operations/dialog/BaseBottomDialogFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/dialog/BaseBottomDialogFragment;->lambda$onStart$1$com-gpc-operations-dialog-BaseBottomDialogFragment(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
