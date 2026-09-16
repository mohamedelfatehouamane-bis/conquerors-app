.class public Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;
.super Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;
.source "KinesisFirehoseRecorder.java"


# static fields
.field private static final MAX_RECORD_SIZE_BYTES:I = 0xfa000

.field private static final RECORD_FILE_NAME:Ljava/lang/String; = "kinesis_firehose_records"

.field private static final STREAM_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final USER_AGENT:Ljava/lang/String;


# instance fields
.field private sender:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Lcom/gpc/aws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;->USER_AGENT:Ljava/lang/String;

    .line 118
    const-string v0, "[a-zA-Z0-9_.-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;->STREAM_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V
    .locals 0

    .line 187
    invoke-direct {p0, p2, p3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;-><init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V

    .line 188
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;->sender:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

    invoke-direct {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;-><init>(Ljava/io/File;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/gpc/aws/regions/Regions;Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V
    .locals 4

    .line 168
    new-instance v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    const-string v1, "kinesis_firehose_records"

    .line 169
    invoke-virtual {p4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getMaxStorageSize()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .line 168
    invoke-direct {p0, v0, p4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;-><init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V

    .line 171
    new-instance p1, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;

    .line 172
    invoke-virtual {p4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getClientConfiguration()Lcom/gpc/aws/ClientConfiguration;

    move-result-object p4

    invoke-direct {p1, p3, p4}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehoseClient;-><init>(Lcom/gpc/aws/auth/AWSCredentialsProvider;Lcom/gpc/aws/ClientConfiguration;)V

    .line 173
    invoke-static {p2}, Lcom/gpc/aws/regions/Region;->getRegion(Lcom/gpc/aws/regions/Regions;)Lcom/gpc/aws/regions/Region;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;->setRegion(Lcom/gpc/aws/regions/Region;)V

    .line 174
    new-instance p2, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;

    sget-object p3, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;->USER_AGENT:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;-><init>(Lcom/gpc/aws/services/kinesisfirehose/AmazonKinesisFirehose;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;->sender:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;

    return-void
.end method


# virtual methods
.method protected getRecordSender()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;->sender:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FirehoseRecordSender;

    return-object v0
.end method

.method public saveRecord([BLjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 198
    sget-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisFirehoseRecorder;->STREAM_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 201
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const v1, 0xfa000

    if-gt v0, v1, :cond_0

    .line 204
    invoke-super {p0, p1, p2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->saveRecord([BLjava/lang/String;)V

    return-void

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid data size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
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
