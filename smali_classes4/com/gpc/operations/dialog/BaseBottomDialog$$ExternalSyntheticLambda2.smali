.class public final synthetic Lcom/gpc/operations/dialog/BaseBottomDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gpc/operations/dialog/BaseBottomDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/operations/dialog/BaseBottomDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/operations/dialog/BaseBottomDialog$$ExternalSyntheticLambda2;->f$0:Lcom/gpc/operations/dialog/BaseBottomDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/gpc/operations/dialog/BaseBottomDialog$$ExternalSyntheticLambda2;->f$0:Lcom/gpc/operations/dialog/BaseBottomDialog;

    invoke-virtual {v0}, Lcom/gpc/operations/dialog/BaseBottomDialog;->lambda$onWindowFocusChanged$1$com-gpc-operations-dialog-BaseBottomDialog()V

    return-void
.end method
