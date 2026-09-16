.class public abstract Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;
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
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

.field public final c:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

.field public final synthetic d:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Ljava/util/List;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;",
            "Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;",
            "Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->d:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->a:Ljava/util/List;

    .line 3
    iput-object p3, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->b:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

    .line 4
    iput-object p4, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->c:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public onReponse(Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->d:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-static {v0, p1}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->access$600(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->a(Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->c:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->d:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-static {v1}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->access$700(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    invoke-interface {v0, v1, v3}, Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;->setPickPrefix(Landroid/content/Context;Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V

    .line 9
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->b:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

    if-eqz v0, :cond_3

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

    iget v3, v3, Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;->businessErrorCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    iget-object v2, p1, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->data:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->createExtra()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->d:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-static {v0, p1}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->access$800(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->c:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->d:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    invoke-static {v1}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->access$700(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    invoke-interface {v0, v1, v3}, Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;->setPickPrefix(Landroid/content/Context;Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;->b:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

    if-eqz v0, :cond_3

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->error:Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;

    iget v3, v3, Lcom/gpc/sdk/service/request/prefixe/ServiceCallError;->businessErrorCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    iget-object v2, p1, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->data:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponse;->createExtra()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;->onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V

    :cond_3
    return-void
.end method
