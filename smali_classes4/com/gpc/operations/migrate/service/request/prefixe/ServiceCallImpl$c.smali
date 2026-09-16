.class public Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;
.super Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->get(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V
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

.field public final synthetic i:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->i:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    iput-object p5, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->f:Ljava/util/HashMap;

    iput-object p7, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->g:Ljava/util/HashMap;

    iput-boolean p8, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->h:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$i;-><init>(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/util/List;Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->i:Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->f:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->g:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl$c;->h:Z

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;->access$200(Lcom/gpc/operations/migrate/service/request/prefixe/ServiceCallImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/gpc/operations/migrate/service/request/prefixe/ServiceCallResponseListener;)V

    return-void
.end method
