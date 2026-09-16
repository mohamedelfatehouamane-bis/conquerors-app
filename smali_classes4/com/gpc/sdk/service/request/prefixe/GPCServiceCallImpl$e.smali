.class public Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;
.super Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->put(Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/HashMap;

.field public final synthetic g:Ljava/util/HashMap;

.field public final synthetic h:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Ljava/util/List;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;->h:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    iput-object p5, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;->f:Ljava/util/HashMap;

    iput-object p7, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;->g:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;-><init>(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Ljava/util/List;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;->h:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$e;->g:Ljava/util/HashMap;

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->access$400(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method
