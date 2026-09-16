.class Lcom/igg/android/conquerors/col$7;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/gpc/sdk/Kungfu$GPCInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->reinitializeGPCSDK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/igg/android/conquerors/col$7;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 747
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-static {}, Lcom/igg/android/conquerors/GPCAgreementHelper;->getV2()Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;

    move-result-object p1

    new-instance v0, Lcom/igg/android/conquerors/col$7$1;

    invoke-direct {v0, p0}, Lcom/igg/android/conquerors/col$7$1;-><init>(Lcom/igg/android/conquerors/col$7;)V

    invoke-virtual {p1, v0}, Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement;->checkAgreementsPendingSigning(Lcom/igg/android/conquerors/GPCAgreementHelper$V2Agreement$LoadAgreementCallback;)V

    return-void

    .line 757
    :cond_0
    const-string v0, "log---"

    const-string v1, "initialize"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    iget-object p1, p0, Lcom/igg/android/conquerors/col$7;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {p1}, Lcom/igg/android/conquerors/col;->-$$Nest$mloadConfig(Lcom/igg/android/conquerors/col;)V

    return-void
.end method
