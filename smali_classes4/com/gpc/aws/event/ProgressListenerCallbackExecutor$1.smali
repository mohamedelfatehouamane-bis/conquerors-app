.class final Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$1;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/aws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/gpc/aws/event/ProgressListener;Lcom/gpc/aws/event/ProgressEvent;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/gpc/aws/event/ProgressListener;

.field final synthetic val$progressEvent:Lcom/gpc/aws/event/ProgressEvent;


# direct methods
.method constructor <init>(Lcom/gpc/aws/event/ProgressListener;Lcom/gpc/aws/event/ProgressEvent;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$1;->val$listener:Lcom/gpc/aws/event/ProgressListener;

    iput-object p2, p0, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$1;->val$progressEvent:Lcom/gpc/aws/event/ProgressEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$1;->val$listener:Lcom/gpc/aws/event/ProgressListener;

    iget-object v1, p0, Lcom/gpc/aws/event/ProgressListenerCallbackExecutor$1;->val$progressEvent:Lcom/gpc/aws/event/ProgressEvent;

    invoke-interface {v0, v1}, Lcom/gpc/aws/event/ProgressListener;->progressChanged(Lcom/gpc/aws/event/ProgressEvent;)V

    return-void
.end method
