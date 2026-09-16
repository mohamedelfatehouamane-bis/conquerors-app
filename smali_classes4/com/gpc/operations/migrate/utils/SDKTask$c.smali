.class public Lcom/gpc/operations/migrate/utils/SDKTask$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/utils/SDKTask;->excute(Ljava/util/concurrent/Executor;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;

.field public final synthetic b:Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;

.field public final synthetic c:Lcom/gpc/operations/migrate/utils/SDKTask;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/SDKTask;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/SDKTask$c;->c:Lcom/gpc/operations/migrate/utils/SDKTask;

    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/SDKTask$c;->a:Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;

    iput-object p3, p0, Lcom/gpc/operations/migrate/utils/SDKTask$c;->b:Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/SDKTask$c;->a:Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;->run()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/SDKTask$c;->b:Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "SDKTask"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/SDKTask$c;->b:Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;

    if-eqz v0, :cond_0

    .line 8
    const-string v1, "10001"

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;->onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
