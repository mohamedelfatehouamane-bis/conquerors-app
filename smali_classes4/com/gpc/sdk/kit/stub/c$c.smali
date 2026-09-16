.class public Lcom/gpc/sdk/kit/stub/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/kit/stub/c;->a(Ljava/lang/String;Ljava/io/File;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

.field public final synthetic b:Lcom/gpc/sdk/kit/stub/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/kit/stub/c;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/c$c;->b:Lcom/gpc/sdk/kit/stub/c;

    iput-object p2, p0, Lcom/gpc/sdk/kit/stub/c$c;->a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCIncidentCollector result : success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogStub"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/kit/stub/c$c;->a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
