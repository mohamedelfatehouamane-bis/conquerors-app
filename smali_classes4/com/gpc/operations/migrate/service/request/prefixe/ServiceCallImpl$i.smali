.class public abstract Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

.field public final c:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

.field public final synthetic d:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;",
            "Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->d:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->a:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->b:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    .line 4
    iput-object p4, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->c:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public onReponse(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->d:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    invoke-static {v0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->access$600(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->a(Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->c:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->d:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    invoke-static {v1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->access$700(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-interface {v0, v1, v3}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->setPickPrefix(Landroid/content/Context;Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->b:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    if-eqz v0, :cond_3

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    iget v3, v3, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->businessErrorCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    iget-object p1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->data:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;->onFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->d:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    invoke-static {v0, p1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->access$800(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->c:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->d:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    invoke-static {v1}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->access$700(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-interface {v0, v1, v3}, Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;->setPickPrefix(Landroid/content/Context;Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;->b:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    if-eqz v0, :cond_3

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;

    iget v3, v3, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallError;->businessErrorCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object v1

    iget-object p1, p1, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponse;->data:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;->onFinished(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
