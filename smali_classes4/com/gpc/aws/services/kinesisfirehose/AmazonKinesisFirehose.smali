.class public interface abstract Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;
.super Ljava/lang/Object;
.source "AmazonKinesisFirehose.java"


# virtual methods
.method public abstract getCachedResponseMetadata(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
.end method

.method public abstract putRecordBatch(Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchRequest;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract setEndpoint(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setRegion(Lcom/gpc/aws/regions/Region;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
