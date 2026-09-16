.class public Lcom/gpc/aws/transform/StandardErrorUnmarshaller;
.super Lcom/gpc/aws/transform/AbstractErrorUnmarshaller;
.source "StandardErrorUnmarshaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gpc/aws/transform/AbstractErrorUnmarshaller<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/gpc/aws/transform/AbstractErrorUnmarshaller;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/gpc/aws/AmazonServiceException;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/gpc/aws/transform/AbstractErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getErrorPropertyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorResponse/Error/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseErrorCode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    const-string v0, "ErrorResponse/Error/Code"

    invoke-static {v0, p1}, Lcom/gpc/aws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lorg/w3c/dom/Node;)Lcom/gpc/aws/AmazonServiceException;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/StandardErrorUnmarshaller;->parseErrorCode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "ErrorResponse/Error/Type"

    invoke-static {v1, p1}, Lcom/gpc/aws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "ErrorResponse/RequestId"

    invoke-static {v2, p1}, Lcom/gpc/aws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "ErrorResponse/Error/Message"

    invoke-static {v3, p1}, Lcom/gpc/aws/util/XpathUtils;->asString(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/StandardErrorUnmarshaller;->newException(Ljava/lang/String;)Lcom/gpc/aws/AmazonServiceException;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v0}, Lcom/gpc/aws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v2}, Lcom/gpc/aws/AmazonServiceException;->setRequestId(Ljava/lang/String;)V

    if-nez v1, :cond_0

    .line 67
    sget-object v0, Lcom/gpc/aws/AmazonServiceException$ErrorType;->Unknown:Lcom/gpc/aws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/gpc/aws/AmazonServiceException;->setErrorType(Lcom/gpc/aws/AmazonServiceException$ErrorType;)V

    return-object p1

    .line 68
    :cond_0
    const-string v0, "Receiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/gpc/aws/AmazonServiceException$ErrorType;->Service:Lcom/gpc/aws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/gpc/aws/AmazonServiceException;->setErrorType(Lcom/gpc/aws/AmazonServiceException$ErrorType;)V

    return-object p1

    .line 70
    :cond_1
    const-string v0, "Sender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    sget-object v0, Lcom/gpc/aws/AmazonServiceException$ErrorType;->Client:Lcom/gpc/aws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v0}, Lcom/gpc/aws/AmazonServiceException;->setErrorType(Lcom/gpc/aws/AmazonServiceException$ErrorType;)V

    :cond_2
    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/StandardErrorUnmarshaller;->unmarshall(Lorg/w3c/dom/Node;)Lcom/gpc/aws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method
