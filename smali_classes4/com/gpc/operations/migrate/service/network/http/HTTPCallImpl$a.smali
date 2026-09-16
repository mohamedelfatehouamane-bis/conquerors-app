.class public Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;->enqueue(Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;

.field public final synthetic b:Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$a;->b:Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$a;->a:Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$a;->b:Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;

    invoke-static {v0}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;->access$000(Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;)Lcom/gpc/operations/migrate/service/network/http/HTTPTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/HTTPTask;->run()V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$a;->b:Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;

    invoke-static {v0}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;->access$000(Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;)Lcom/gpc/operations/migrate/service/network/http/HTTPTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/migrate/service/network/http/HTTPTask;->a()Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$d;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$TaskEndRunnable;

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$a;->a:Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;

    invoke-direct {v1, v0, v2}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$TaskEndRunnable;-><init>(Lcom/gpc/operations/migrate/service/network/http/HTTPClientImpl$d;Lcom/gpc/operations/migrate/service/network/http/HTTPCallback;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl$a;->b:Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;

    invoke-static {v0}, Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;->access$100(Lcom/gpc/operations/migrate/service/network/http/HTTPCallImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
