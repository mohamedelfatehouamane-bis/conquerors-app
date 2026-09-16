.class Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$2;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/aws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/gpc/aws/event/ProgressEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/aws/event/ProgressListenerCallbackExecutor;

.field final synthetic val$progressEvent:Lcom/gpc/aws/event/ProgressEvent;


# direct methods
.method constructor <init>(Lcom/gpc/aws/event/ProgressListenerCallbackExecutor;Lcom/gpc/aws/event/ProgressEvent;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$2;->this$0:Lcom/gpc/aws/event/ProgressListenerCallbackExecutor;

    iput-object p2, p0, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$2;->val$progressEvent:Lcom/gpc/aws/event/ProgressEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$2;->this$0:Lcom/gpc/aws/event/ProgressListenerCallbackExecutor;

    invoke-static {v0}, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor;->access$000(Lcom/gpc/aws/event/ProgressListenerCallbackExecutor;)Lcom/gpc/aws/event/ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$2;->val$progressEvent:Lcom/gpc/aws/event/ProgressEvent;

    invoke-interface {v0, v1}, Lcom/gpc/aws/event/ProgressListener;->progressChanged(Lcom/gpc/aws/event/ProgressEvent;)V

    return-void
.end method
