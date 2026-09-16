.class public Lcom/gpc/sdk/incident/GPCIncidentCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;
    }
.end annotation


# static fields
.field public static c:Ljava/lang/String; = "GPCIncidentCollector"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/gpc/sdk/incident/service/IncidentService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getIncidentService(Landroid/content/Context;)Lcom/gpc/sdk/incident/service/IncidentService;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector;->b:Lcom/gpc/sdk/incident/service/IncidentService;

    return-void
.end method


# virtual methods
.method public saveIncident(Lcom/gpc/sdk/incident/GPCIncident;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V
    .locals 4

    .line 1
    const-string v0, "220102"

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/incident/GPCIncident;->getGid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 3
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/incident/GPCIncident;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/incident/GPCIncident;->getDeviceMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector;->b:Lcom/gpc/sdk/incident/service/IncidentService;

    new-instance v1, Lcom/gpc/sdk/incident/GPCIncidentCollector$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/incident/GPCIncidentCollector$a;-><init>(Lcom/gpc/sdk/incident/GPCIncidentCollector;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V

    invoke-interface {v0, p1, v1}, Lcom/gpc/sdk/incident/service/IncidentService;->collect(Lcom/gpc/sdk/incident/GPCIncident;Lcom/gpc/sdk/incident/service/OnCollectListener;)V

    return-void

    .line 24
    :cond_3
    :goto_0
    const-string p1, "103"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "device_mode is not null"

    invoke-interface {p2, v0, v2, p1, v1}, Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_4
    :goto_1
    const-string p1, "102"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "device_id is not null"

    invoke-interface {p2, v0, v2, p1, v1}, Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_5
    :goto_2
    const-string p1, "101"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "gid is not null"

    invoke-interface {p2, v0, v2, p1, v1}, Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
