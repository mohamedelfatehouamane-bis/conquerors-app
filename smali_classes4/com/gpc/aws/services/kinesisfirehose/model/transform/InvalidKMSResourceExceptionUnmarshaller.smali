.class public Lcom/gpc/aws/services/kinesisfirehose/model/transform/InvalidKMSResourceExceptionUnmarshaller;
.super Lcom/gpc/aws/transform/JsonErrorUnmarshaller;
.source "InvalidKMSResourceExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const-class v0, Lcom/gpc/aws/services/kinesisfirehose/model/InvalidKMSResourceException;

    invoke-direct {p0, v0}, Lcom/gpc/aws/transform/JsonErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public match(Lcom/gpc/aws/http/JsonErrorResponseHandler$JsonErrorResponse;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Lcom/gpc/aws/http/JsonErrorResponseHandler$JsonErrorResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InvalidKMSResourceException"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unmarshall(Lcom/gpc/aws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/gpc/aws/AmazonServiceException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lcom/gpc/aws/transform/JsonErrorUnmarshaller;->unmarshall(Lcom/gpc/aws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/gpc/aws/AmazonServiceException;

    move-result-object v0

    check-cast v0, Lcom/gpc/aws/services/kinesisfirehose/model/InvalidKMSResourceException;

    .line 38
    const-string v1, "InvalidKMSResourceException"

    invoke-virtual {v0, v1}, Lcom/gpc/aws/services/kinesisfirehose/model/InvalidKMSResourceException;->setErrorCode(Ljava/lang/String;)V

    .line 39
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lcom/gpc/aws/http/JsonErrorResponseHandler$JsonErrorResponse;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/InvalidKMSResourceException;->setCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/gpc/aws/http/JsonErrorResponseHandler$JsonErrorResponse;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/services/kinesisfirehose/model/transform/InvalidKMSResourceExceptionUnmarshaller;->unmarshall(Lcom/gpc/aws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/gpc/aws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method
