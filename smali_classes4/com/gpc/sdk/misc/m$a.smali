.class public Lcom/gpc/sdk/misc/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/m;->collect(Lcom/gpc/sdk/incident/GPCIncident;Lcom/gpc/sdk/incident/service/OnCollectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/incident/service/OnCollectListener;

.field public final synthetic b:Lcom/gpc/sdk/misc/m;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/m;Lcom/gpc/sdk/incident/service/OnCollectListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/m$a;->b:Lcom/gpc/sdk/misc/m;

    iput-object p2, p0, Lcom/gpc/sdk/misc/m$a;->a:Lcom/gpc/sdk/incident/service/OnCollectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "saveIncident request failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "IncidentServiceAGImpl"

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/misc/m$a;->a:Lcom/gpc/sdk/incident/service/OnCollectListener;

    iget-object v0, p0, Lcom/gpc/sdk/misc/m$a;->b:Lcom/gpc/sdk/misc/m;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/misc/m;->a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/gpc/sdk/incident/service/OnCollectListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/m$a;->a:Lcom/gpc/sdk/incident/service/OnCollectListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/incident/service/OnCollectListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
