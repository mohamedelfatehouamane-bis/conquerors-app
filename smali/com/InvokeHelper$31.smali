.class Lcom/InvokeHelper$31;
.super Ljava/lang/Object;
.source "InvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/InvokeHelper;->delAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 693
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/OperationsSDK;->ticketService()Lcom/gpc/tsh/TSHybrid;

    move-result-object v0

    .line 694
    sget-object v1, Lcom/InvokeHelper;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v0, v1}, Lcom/gpc/tsh/TSHybrid;->showClosingAccount(Landroid/app/Activity;)V

    return-void
.end method
