.class Lcom/InvokeHelper$30;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->setNotifyPermissionResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$type:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 680
    iput p1, p0, Lcom/InvokeHelper$30;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 682
    sget-object v0, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    iget v1, p0, Lcom/InvokeHelper$30;->val$type:I

    invoke-virtual {v0, v1}, Lcom/igg/android/conquerors/col;->_setNotifyPermissionResult(I)V

    return-void
.end method
