.class Lcom/igg/android/conquerors/col$AppConfInitFinish$2;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuidelineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col$AppConfInitFinish;->initFinishCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/igg/android/conquerors/col$AppConfInitFinish;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/col$AppConfInitFinish;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/igg/android/conquerors/col$AppConfInitFinish$2;->this$1:Lcom/igg/android/conquerors/col$AppConfInitFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionExpired(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 3

    .line 833
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/account/GPCSessionManager;->invalidateCurrentSession()Lcom/gpc/sdk/account/GPCSession;

    .line 834
    iget-object p1, p0, Lcom/igg/android/conquerors/col$AppConfInitFinish$2;->this$1:Lcom/igg/android/conquerors/col$AppConfInitFinish;

    iget-object p1, p1, Lcom/igg/android/conquerors/col$AppConfInitFinish;->this$0:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/jniCallback;->retLoginError(IILjava/lang/String;)V

    return-void
.end method
