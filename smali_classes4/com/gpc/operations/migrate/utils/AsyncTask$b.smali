.class public Lcom/gpc/operations/migrate/utils/AsyncTask$b;
.super Lcom/gpc/operations/migrate/utils/AsyncTask$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/utils/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gpc/operations/migrate/utils/AsyncTask$h<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/gpc/operations/migrate/utils/AsyncTask;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/utils/AsyncTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/AsyncTask$b;->b:Lcom/gpc/operations/migrate/utils/AsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gpc/operations/migrate/utils/AsyncTask$h;-><init>(Lcom/gpc/operations/migrate/utils/AsyncTask$a;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/AsyncTask$b;->b:Lcom/gpc/operations/migrate/utils/AsyncTask;

    invoke-static {v0}, Lcom/gpc/operations/migrate/utils/AsyncTask;->access$300(Lcom/gpc/operations/migrate/utils/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/AsyncTask$b;->b:Lcom/gpc/operations/migrate/utils/AsyncTask;

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/AsyncTask$h;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/migrate/utils/AsyncTask;->access$400(Lcom/gpc/operations/migrate/utils/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
