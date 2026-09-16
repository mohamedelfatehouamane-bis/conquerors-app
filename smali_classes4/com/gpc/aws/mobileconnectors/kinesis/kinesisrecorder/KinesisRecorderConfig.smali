.class public Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;
.super Ljava/lang/Object;
.source "KinesisRecorderConfig.java"


# static fields
.field private static final DEFAUT_MAX_STORAGE_SIZE:J = 0x500000L


# instance fields
.field private final clientConfiguration:Lcom/gpc/aws/ClientConfiguration;

.field private mDeadLetterListener:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/DeadLetterListener;

.field private maxStorageSize:J

.field private partitionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0}, Lcom/gpc/aws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/gpc/aws/ClientConfiguration;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x500000

    .line 28
    iput-wide v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->maxStorageSize:J

    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-direct {v0, p1}, Lcom/gpc/aws/ClientConfiguration;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->clientConfiguration:Lcom/gpc/aws/ClientConfiguration;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x500000

    .line 28
    iput-wide v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->maxStorageSize:J

    .line 62
    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getMaxStorageSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->maxStorageSize:J

    .line 63
    new-instance v0, Lcom/gpc/aws/ClientConfiguration;

    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getClientConfiguration()Lcom/gpc/aws/ClientConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/aws/ClientConfiguration;-><init>(Lcom/gpc/aws/ClientConfiguration;)V

    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->clientConfiguration:Lcom/gpc/aws/ClientConfiguration;

    .line 64
    iget-object p1, p1, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->partitionKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->partitionKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientConfiguration()Lcom/gpc/aws/ClientConfiguration;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->clientConfiguration:Lcom/gpc/aws/ClientConfiguration;

    return-object v0
.end method

.method public getDeadLetterListener()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/DeadLetterListener;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->mDeadLetterListener:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/DeadLetterListener;

    return-object v0
.end method

.method public getMaxStorageSize()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->maxStorageSize:J

    return-wide v0
.end method

.method public getPartitionKey()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->partitionKey:Ljava/lang/String;

    return-object v0
.end method

.method public withDeadLetterListener(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/DeadLetterListener;)Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->mDeadLetterListener:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/DeadLetterListener;

    return-object p0
.end method

.method public withMaxStorageSize(J)Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->maxStorageSize:J

    return-object p0
.end method

.method public withPartitionKey(Ljava/lang/String;)Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->partitionKey:Ljava/lang/String;

    return-object p0
.end method
