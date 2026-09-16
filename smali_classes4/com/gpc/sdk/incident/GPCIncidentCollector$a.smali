.class public Lcom/gpc/sdk/incident/GPCIncidentCollector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/incident/service/OnCollectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/incident/GPCIncidentCollector;->saveIncident(Lcom/gpc/sdk/incident/GPCIncident;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

.field public final synthetic b:Lcom/gpc/sdk/incident/GPCIncidentCollector;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/incident/GPCIncidentCollector;Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector$a;->b:Lcom/gpc/sdk/incident/GPCIncidentCollector;

    iput-object p2, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector$a;->a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 6

    const-string v0, "code"

    const-string v1, "error"

    const-string v2, "errorNo:"

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/incident/GPCIncidentCollector;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveIncident request failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector$a;->a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

    const-string v1, "107"

    invoke-interface {v0, p1, v4, v1, p2}, Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object p1, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector$a;->a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "0"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2, v1, p2}, Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    sget-object v3, Lcom/gpc/sdk/incident/GPCIncidentCollector;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector$a;->a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

    const-string v0, "220101"

    const-string v1, "10"

    const/16 v2, 0x6c

    invoke-static {v0, v1, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    const-string v1, "108"

    invoke-interface {p1, v0, v4, v1, p2}, Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    sget-object p2, Lcom/gpc/sdk/incident/GPCIncidentCollector;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/incident/GPCIncidentCollector$a;->a:Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;

    const-string p2, "20"

    const/16 v1, 0x6d

    const-string v2, "220104"

    invoke-static {v2, p2, v1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const-string v1, "109"

    invoke-interface {p1, p2, v4, v1, v0}, Lcom/gpc/sdk/incident/GPCIncidentCollector$IncidentListener;->onFinished(Lcom/gpc/sdk/error/GPCException;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
