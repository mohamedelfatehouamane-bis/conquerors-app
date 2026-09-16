.class Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy$1;
.super Ljava/lang/Object;
.source "OperationsSDKDefaultCompatProxy.java"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy;->getSSOTokenForWeb(Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy;

.field final synthetic val$listener:Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy;Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy$1;->this$0:Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy;

    iput-object p2, p0, Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy$1;->val$listener:Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/igg/android/conquerors/OperationsSDKDefaultCompatProxy$1;->val$listener:Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
