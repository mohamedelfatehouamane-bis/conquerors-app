.class public interface abstract Lcom/gpc/aws/services/kinesis/AmazonKinesis;
.super Ljava/lang/Object;
.source "AmazonKinesis.java"


# virtual methods
.method public abstract addTagsToStream(Lcom/gpc/aws/services/kinesis/model/AddTagsToStreamRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract createStream(Lcom/gpc/aws/services/kinesis/model/CreateStreamRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract createStream(Ljava/lang/String;Ljava/lang/Integer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract decreaseStreamRetentionPeriod(Lcom/gpc/aws/services/kinesis/model/DecreaseStreamRetentionPeriodRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract deleteStream(Lcom/gpc/aws/services/kinesis/model/DeleteStreamRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract deleteStream(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract describeLimits(Lcom/gpc/aws/services/kinesis/model/DescribeLimitsRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeLimitsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract describeStream(Lcom/gpc/aws/services/kinesis/model/DescribeStreamRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract describeStream(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract describeStream(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract describeStream(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract describeStreamSummary(Lcom/gpc/aws/services/kinesis/model/DescribeStreamSummaryRequest;)Lcom/gpc/aws/services/kinesis/model/DescribeStreamSummaryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract disableEnhancedMonitoring(Lcom/gpc/aws/services/kinesis/model/DisableEnhancedMonitoringRequest;)Lcom/gpc/aws/services/kinesis/model/DisableEnhancedMonitoringResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract enableEnhancedMonitoring(Lcom/gpc/aws/services/kinesis/model/EnableEnhancedMonitoringRequest;)Lcom/gpc/aws/services/kinesis/model/EnableEnhancedMonitoringResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getCachedResponseMetadata(Lcom/gpc/aws/AmazonWebServiceRequest;)Lcom/gpc/aws/ResponseMetadata;
.end method

.method public abstract getRecords(Lcom/gpc/aws/services/kinesis/model/GetRecordsRequest;)Lcom/gpc/aws/services/kinesis/model/GetRecordsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getShardIterator(Lcom/gpc/aws/services/kinesis/model/GetShardIteratorRequest;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getShardIterator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract getShardIterator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/GetShardIteratorResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract increaseStreamRetentionPeriod(Lcom/gpc/aws/services/kinesis/model/IncreaseStreamRetentionPeriodRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listShards(Lcom/gpc/aws/services/kinesis/model/ListShardsRequest;)Lcom/gpc/aws/services/kinesis/model/ListShardsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listStreams()Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listStreams(Lcom/gpc/aws/services/kinesis/model/ListStreamsRequest;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listStreams(Ljava/lang/Integer;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listStreams(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/ListStreamsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract listTagsForStream(Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamRequest;)Lcom/gpc/aws/services/kinesis/model/ListTagsForStreamResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract mergeShards(Lcom/gpc/aws/services/kinesis/model/MergeShardsRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract mergeShards(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract putRecord(Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;)Lcom/gpc/aws/services/kinesis/model/PutRecordResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract putRecord(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract putRecord(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/PutRecordResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract putRecords(Lcom/gpc/aws/services/kinesis/model/PutRecordsRequest;)Lcom/gpc/aws/services/kinesis/model/PutRecordsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract removeTagsFromStream(Lcom/gpc/aws/services/kinesis/model/RemoveTagsFromStreamRequest;)V
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

.method public abstract splitShard(Lcom/gpc/aws/services/kinesis/model/SplitShardRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract splitShard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract startStreamEncryption(Lcom/gpc/aws/services/kinesis/model/StartStreamEncryptionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract stopStreamEncryption(Lcom/gpc/aws/services/kinesis/model/StopStreamEncryptionRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method

.method public abstract updateShardCount(Lcom/gpc/aws/services/kinesis/model/UpdateShardCountRequest;)Lcom/gpc/aws/services/kinesis/model/UpdateShardCountResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gpc/aws/AmazonClientException;,
            Lcom/gpc/aws/AmazonServiceException;
        }
    .end annotation
.end method
