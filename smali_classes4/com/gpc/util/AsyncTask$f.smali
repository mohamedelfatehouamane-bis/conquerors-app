.class public Lcom/gpc/util/AsyncTask$f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/util/AsyncTask$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/gpc/util/AsyncTask$f;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/gpc/util/AsyncTask$e;

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object p1, v0, Lcom/gpc/util/AsyncTask$e;->a:Lcom/gpc/util/AsyncTask;

    iget-object v0, v0, Lcom/gpc/util/AsyncTask$e;->b:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/gpc/util/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, v0, Lcom/gpc/util/AsyncTask$e;->a:Lcom/gpc/util/AsyncTask;

    iget-object v0, v0, Lcom/gpc/util/AsyncTask$e;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/gpc/util/AsyncTask;->access$600(Lcom/gpc/util/AsyncTask;Ljava/lang/Object;)V

    return-void
.end method
