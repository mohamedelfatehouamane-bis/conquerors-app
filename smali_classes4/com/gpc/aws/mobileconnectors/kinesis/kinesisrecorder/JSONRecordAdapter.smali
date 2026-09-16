.class Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/JSONRecordAdapter;
.super Ljava/lang/Object;
.source "JSONRecordAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DATA_FIELD_KEY:Ljava/lang/String; = "Data"

.field static final EXPLICIT_HASH_FIELD:Ljava/lang/String; = "ExplicitHash"

.field private static final LOGGER:Lcom/gpc/aws/logging/Log;

.field static final PARTITION_KEY_FIELD:Ljava/lang/String; = "PartitionKey"

.field static final SEQUENCE_NUMBER_FIELD:Ljava/lang/String; = "SequenceNumber"

.field static final STREAM_NAME_FIELD:Ljava/lang/String; = "StreamName"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/JSONRecordAdapter;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/JSONRecordAdapter;->LOGGER:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData(Lorg/json/JSONObject;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    const-string v0, "Data"

    .line 50
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 49
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 48
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getPartitionKey(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 63
    const-string v0, "PartitionKey"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStreamName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 75
    const-string v0, "StreamName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public translateFromRecord(Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;)Lorg/json/JSONObject;
    .locals 4

    if-nez p1, :cond_0

    .line 84
    sget-object p1, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/JSONRecordAdapter;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v0, "The Record provided was null"

    invoke-interface {p1, v0}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getPartitionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getStreamName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    :try_start_0
    const-string v1, "Data"

    .line 99
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getData()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "StreamName"

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getStreamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v1, "PartitionKey"

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getPartitionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "ExplicitHash"

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getExplicitHashKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v1, "SequenceNumber"

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesis/model/PutRecordRequest;->getSequenceNumberForOrdering()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 105
    new-instance v0, Lcom/gpc/aws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to convert KinesisRecord to JSON "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "ByteBuffer must be based on array for proper storage"

    invoke-direct {p1, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_2
    new-instance p1, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "RecordRequests must specify a partition key, stream name, and data"

    invoke-direct {p1, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
