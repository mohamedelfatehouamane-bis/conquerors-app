.class public Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;
.super Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->get(Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/HashMap;

.field public final synthetic g:Ljava/util/HashMap;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Ljava/util/List;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->i:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    iput-object p5, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->f:Ljava/util/HashMap;

    iput-object p7, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->g:Ljava/util/HashMap;

    iput-boolean p8, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->h:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$i;-><init>(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Ljava/util/List;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->i:Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    invoke-virtual {p1}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->g:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl$c;->h:Z

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->access$200(Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/sdk/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method
