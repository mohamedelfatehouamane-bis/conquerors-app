.class public Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;
.super Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;
.source "KinesisRecorder.java"


# static fields
.field private static final LOGGER:Lcom/gpc/aws/logging/Log;

.field private static final MAX_RECORD_SIZE_BYTES:I = 0x100000

.field private static final RECORD_FILE_NAME:Ljava/lang/String; = "kinesis_stream_records"

.field private static final STREAM_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private final sender:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    const-class v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v1

    sput-object v1, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Lcom/gpc/aws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->USER_AGENT:Ljava/lang/String;

    .line 106
    const-string v0, "[a-zA-Z0-9_.-]{1,128}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->STREAM_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V
    .locals 0

    .line 179
    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;-><init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V

    .line 180
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->sender:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 130
    new-instance v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

    invoke-direct {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;-><init>(Ljava/io/File;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V
    .locals 4

    .line 153
    new-instance v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    const-string v1, "kinesis_stream_records"

    .line 154
    invoke-virtual {p4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getMaxStorageSize()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .line 153
    invoke-direct {p0, v0, p4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;-><init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 161
    new-instance v0, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;

    .line 162
    invoke-virtual {p4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getClientConfiguration()Lcom/gpc/aws/ClientConfiguration;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/gpc/aws/services/kinesis/AmazonKinesisClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    .line 163
    invoke-static {p2}, Lcom/gpc/aws/regions/Region;->getRegion(Lcom/gpc/aws/regions/Regions;)Lcom/gpc/aws/regions/Region;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/gpc/aws/services/kinesis/AmazonKinesis;->setRegion(Lcom/gpc/aws/regions/Region;)V

    .line 164
    new-instance p2, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;

    sget-object p3, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getPartitionKey()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, v0, p3, p4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;-><init>(Lcom/gpc/aws/services/kinesis/AmazonKinesis;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->sender:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;

    .line 166
    invoke-direct {p0, p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->checkUpgrade(Ljava/io/File;)V

    return-void

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must pass a non-null credentialsProvider, region, directory, and config to KinesisRecordStore"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkUpgrade(Ljava/io/File;)V
    .locals 3

    .line 184
    new-instance v0, Ljava/io/File;

    const-string v1, "KinesisRecorder"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/io/File;

    const-string v2, "KinesisRecords"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder$1;

    invoke-direct {v1, p0, p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder$1;-><init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getRecordSender()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->sender:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisStreamRecordSender;

    return-object v0
.end method

.method public saveRecord([BLjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 241
    sget-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->STREAM_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 244
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const/high16 v1, 0x100000

    if-gt v0, v1, :cond_0

    .line 247
    invoke-super {p0, p1, p2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->saveRecord([BLjava/lang/String;)V

    return-void

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid data size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid stream name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method upgrade(Ljava/io/File;)V
    .locals 5

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "KinesisRecorder"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/io/File;

    const-string v2, "KinesisRecords"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    new-instance v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    const-string v2, "KinesisRecords"

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .line 214
    invoke-virtual {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->iterator()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;

    move-result-object p1

    .line 215
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 217
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->next()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/JSONRecordAdapter;->getData(Lorg/json/JSONObject;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 219
    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/JSONRecordAdapter;->getStreamName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v2, v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->saveRecord([BLjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    :try_start_2
    sget-object v2, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v3, "caught exception"

    invoke-interface {v2, v3, v0}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 226
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 228
    :try_start_4
    sget-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v2, "caught exception"

    invoke-interface {v0, v2, p1}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 230
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
