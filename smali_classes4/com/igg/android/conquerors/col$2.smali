.class Lcom/igg/android/conquerors/col$2;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/gpc/operations/OPSOnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->initOperationsSDK()V
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

    .line 286
    iput-object p1, p0, Lcom/igg/android/conquerors/col$2;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcom/gpc/operations/migrate/error/GPCException;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/igg/android/conquerors/col$2;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {p1}, Lcom/igg/android/conquerors/GPCHelper;->init(Lcom/igg/android/conquerors/col;)V

    .line 291
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object p1

    new-instance v0, Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy;

    invoke-direct {v0}, Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy;-><init>()V

    invoke-virtual {p1, v0}, Lcom/gpc/operations/OperationsSDK;->setProxy(Lcom/gpc/operations/compact/OperationsCompatProxy;)V

    .line 292
    const-string p1, "initOperationsSDK"

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
