.class public Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;,
        Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;,
        Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;,
        Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCServiceRequest"


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

.field private method:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

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

.field private requestFinishListener:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

.field private serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;


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
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->method:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    sget-object v1, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->GET:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->enableDoOutput:Z

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
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->body:Ljava/util/HashMap;

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
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->heads:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMethod()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->method:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

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
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->parameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestFinishListener()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->requestFinishListener:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

    return-object v0
.end method

.method public getServiceURLBuilder()Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

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
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->body:Ljava/util/HashMap;

    return-void
.end method

.method public setEnableDoOutput(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->enableDoOutput:Z

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
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->heads:Ljava/util/HashMap;

    return-void
.end method

.method public setMethod(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->method:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

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
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->parameters:Ljava/util/HashMap;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->path:Ljava/lang/String;

    return-void
.end method

.method public setRequestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->requestFinishListener:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;

    return-void
.end method

.method public setServiceURLBuilder(Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;->serviceURLBuilder:Lcom/gpc/sdk/utils/common/GPCServiceURLBuilder;

    return-void
.end method
