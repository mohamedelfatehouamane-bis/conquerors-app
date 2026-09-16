.class public Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected body:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected enableDoOutput:Z

.field protected heads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected method:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

.field protected parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected path:Ljava/lang/String;

.field protected requestFinishListener:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

.field protected serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Ljava/util/HashMap;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->body:Ljava/util/HashMap;

    return-object p0
.end method

.method public build()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->setServiceURLBuilder(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->heads:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 5
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->setHeads(Ljava/util/HashMap;)V

    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "ServiceRequest"

    const-string v2, "heads is not a HashMap!"

    invoke-static {v1, v2}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->setParameters(Ljava/util/HashMap;)V

    .line 13
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->body:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->setBody(Ljava/util/HashMap;)V

    .line 14
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->method:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->setMethod(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;)V

    .line 15
    iget-boolean v1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->enableDoOutput:Z

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->setEnableDoOutput(Z)V

    .line 16
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->requestFinishListener:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->setRequestFinishListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V

    .line 17
    iget-object v1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->setPath(Ljava/lang/String;)V

    return-object v0
.end method

.method public heads(Ljava/util/Map;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->heads:Ljava/util/Map;

    return-object p0
.end method

.method public method(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->method:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    return-object p0
.end method

.method public parameters(Ljava/util/HashMap;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->parameters:Ljava/util/HashMap;

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public requestFinishListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->requestFinishListener:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    return-object p0
.end method

.method public serviceURLBuilder(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-object p0
.end method

.method public setEnableDoOutput(Z)Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;->enableDoOutput:Z

    return-object p0
.end method
