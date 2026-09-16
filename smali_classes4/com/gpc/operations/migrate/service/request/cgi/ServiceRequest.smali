.class public Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;,
        Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;,
        Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$Builder;,
        Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceRequest"


# instance fields
.field private body:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enableDoOutput:Z

.field private heads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

.field private parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private requestFinishListener:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

.field private serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableDoOutput()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->method:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    sget-object v1, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;->GET:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->enableDoOutput:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBody()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->body:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHeads()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->heads:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMethod()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->method:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    return-object v0
.end method

.method public getParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->parameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestFinishListener()Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->requestFinishListener:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    return-object v0
.end method

.method public getServiceURLBuilder()Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-object v0
.end method

.method public setBody(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->body:Ljava/util/HashMap;

    return-void
.end method

.method public setEnableDoOutput(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->enableDoOutput:Z

    return-void
.end method

.method public setHeads(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->heads:Ljava/util/HashMap;

    return-void
.end method

.method public setMethod(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->method:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$RequestMethod;

    return-void
.end method

.method public setParameters(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->parameters:Ljava/util/HashMap;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->path:Ljava/lang/String;

    return-void
.end method

.method public setRequestFinishListener(Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->requestFinishListener:Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest$ServiceRequestFinishListener;

    return-void
.end method

.method public setServiceURLBuilder(Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/cgi/ServiceRequest;->serviceURLBuilder:Lcom/gpc/operations/migrate/utils/common/ServiceURLBuilder;

    return-void
.end method
