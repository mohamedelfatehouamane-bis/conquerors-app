.class public Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;->getResponseListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

.field public final synthetic b:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$a;->b:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl;

    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$a;->a:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReponse(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$a;->a:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    iget v1, v1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->businessErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    iget v3, v3, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->requestError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/error/GPCException;->underlyingException(Lcom/gpc/operations/migrate/error/GPCException;)Lcom/gpc/operations/migrate/error/GPCException;

    .line 4
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallAGImpl$a;->a:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    iget-object p1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->data:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;->onFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
