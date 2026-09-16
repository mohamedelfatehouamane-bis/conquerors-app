.class public Lcom/gpc/sdk/kit/stub/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/kit/stub/c;->a(Ljava/lang/String;Lcom/gpc/sdk/kit/stub/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/kit/stub/c$d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/kit/stub/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/kit/stub/c;Lcom/gpc/sdk/kit/stub/c$d;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/c$b;->c:Lcom/gpc/sdk/kit/stub/c;

    iput-object p2, p0, Lcom/gpc/sdk/kit/stub/c$b;->a:Lcom/gpc/sdk/kit/stub/c$d;

    iput-object p3, p0, Lcom/gpc/sdk/kit/stub/c$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/kit/stub/c$b;->a:Lcom/gpc/sdk/kit/stub/c$d;

    invoke-virtual {p1}, Lcom/gpc/sdk/kit/stub/c$d;->b()V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/kit/stub/c$b;->a:Lcom/gpc/sdk/kit/stub/c$d;

    invoke-virtual {p1}, Lcom/gpc/sdk/kit/stub/c$d;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "all log files upload success.time:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LogStub"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/gpc/sdk/kit/stub/e;->b()Lcom/gpc/sdk/kit/stub/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/kit/stub/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/util/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    .line 8
    iget-object p1, p0, Lcom/gpc/sdk/kit/stub/c$b;->c:Lcom/gpc/sdk/kit/stub/c;

    iget-object p2, p0, Lcom/gpc/sdk/kit/stub/c$b;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/gpc/sdk/kit/stub/c;->b(Lcom/gpc/sdk/kit/stub/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
