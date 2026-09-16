.class public Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;
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

.field protected method:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

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

.field protected requestFinishListener:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

.field protected serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->body:Ljava/util/HashMap;

    return-object p0
.end method

.method public build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    invoke-direct {v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->setServiceURLBuilder(Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->heads:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 5
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->setHeads(Ljava/util/HashMap;)V

    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "GPCServiceRequest"

    const-string v2, "heads is not a HashMap!"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->setParameters(Ljava/util/HashMap;)V

    .line 13
    iget-object v1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->body:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->setBody(Ljava/util/HashMap;)V

    .line 14
    iget-object v1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->setMethod(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)V

    .line 15
    iget-boolean v1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->enableDoOutput:Z

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->setEnableDoOutput(Z)V

    .line 16
    iget-object v1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->setRequestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V

    .line 17
    iget-object v1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->setPath(Ljava/lang/String;)V

    return-object v0
.end method

.method public heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->heads:Ljava/util/Map;

    return-object p0
.end method

.method public method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    return-object p0
.end method

.method public parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters:Ljava/util/HashMap;

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

    return-object p0
.end method

.method public serviceURLBuilder(Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    return-object p0
.end method

.method public setEnableDoOutput(Z)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->enableDoOutput:Z

    return-object p0
.end method
