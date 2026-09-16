.class public Lcom/gpc/aws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;
.super Ljava/lang/Object;
.source "GetCallerIdentityRequestMarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Marshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Marshaller<",
        "Lcom/gpc/aws/Request<",
        "Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;",
        ">;",
        "Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/gpc/aws/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;",
            ")",
            "Lcom/gpc/aws/Request<",
            "Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Lcom/gpc/aws/DefaultRequest;

    const-string v1, "AWSSecurityTokenService"

    invoke-direct {v0, p1, v1}, Lcom/gpc/aws/DefaultRequest;-><init>(Lcom/gpc/aws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 40
    const-string p1, "Action"

    const-string v1, "GetCallerIdentity"

    invoke-interface {v0, p1, v1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string p1, "Version"

    const-string v1, "2011-06-15"

    invoke-interface {v0, p1, v1}, Lcom/gpc/aws/Request;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_0
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(GetCallerIdentityRequest)"

    invoke-direct {p1, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller;->marshall(Lcom/gpc/aws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/gpc/aws/Request;

    move-result-object p1

    return-object p1
.end method
