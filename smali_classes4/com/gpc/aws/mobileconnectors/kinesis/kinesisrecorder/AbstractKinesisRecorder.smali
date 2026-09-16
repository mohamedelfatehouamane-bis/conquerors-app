.class public abstract Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;
.super Ljava/lang/Object;
.source "AbstractKinesisRecorder.java"


# static fields
.field private static final LOGGER:Lcom/gpc/aws/logging/Log;

.field private static final MAX_BATCH_RECORDS_SIZE_BYTES:I = 0x80000

.field private static final MAX_RECORDS_PER_BATCH:I = 0x80

.field private static final MAX_RETRY_COUNT:I = 0x3


# instance fields
.field protected config:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

.field protected recordStore:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->recordStore:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    .line 77
    iput-object p2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->config:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Record store can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized deleteAllRecords()V
    .locals 3

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->recordStore:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-virtual {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->iterator()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->removeAllRecords()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 313
    :try_start_1
    new-instance v1, Lcom/gpc/aws/AmazonClientException;

    const-string v2, "Error deleting events"

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDiskByteLimit()J
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->config:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

    invoke-virtual {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getMaxStorageSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiskBytesUsed()J
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->recordStore:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-virtual {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKinesisRecorderConfig()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->config:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

    return-object v0
.end method

.method protected abstract getRecordSender()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;
.end method

.method protected nextBatch(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;Ljava/util/List;II)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;",
            "Ljava/util/List<",
            "[B>;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 235
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 240
    new-instance v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;

    invoke-direct {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 241
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    if-ge v2, p3, :cond_3

    if-ge v3, p4, :cond_3

    .line 242
    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->peek()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 243
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 257
    iget-object v4, v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->streamName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 258
    :cond_1
    iget-object v1, v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->bytes:[B

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 261
    iget-object v1, v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->bytes:[B

    array-length v1, v1

    add-int/2addr v3, v1

    .line 262
    iget-object v1, v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->streamName:Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->next()Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v4

    .line 251
    sget-object v5, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v6, "Failed to read line. Skip."

    invoke-interface {v5, v6, v4}, Lcom/gpc/aws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 252
    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->next()Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public saveRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->saveRecord([BLjava/lang/String;)V

    return-void
.end method

.method public saveRecord([BLjava/lang/String;)V
    .locals 1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->recordStore:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {p2, p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->asString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->put(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 105
    new-instance p2, Lcom/gpc/aws/AmazonClientException;

    const-string v0, "Error saving record"

    invoke-direct {p2, v0, p1}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public declared-synchronized submitAllRecords()V
    .locals 13

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->getRecordSender()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->recordStore:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-virtual {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->iterator()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_0
    const/4 v8, 0x1

    .line 131
    :try_start_1
    invoke-virtual {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x3

    if-ge v5, v9, :cond_5

    const/high16 v9, 0x80000

    .line 132
    invoke-virtual {p0, v1, v2, v3, v9}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->nextBatch(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;Ljava/util/List;II)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 134
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_1

    goto/16 :goto_5

    .line 142
    :cond_1
    :try_start_2
    invoke-interface {v0, v9, v2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;->sendBatch(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v10
    :try_end_2
    .catch Lcom/gpc/aws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v10

    if-nez v7, :cond_3

    .line 145
    :try_start_3
    invoke-virtual {v10}, Lcom/gpc/aws/AmazonClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 146
    invoke-virtual {v10}, Lcom/gpc/aws/AmazonClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v11, "Unable to unmarshall error response"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v10, v2

    const/4 v7, 0x1

    .line 155
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/2addr v6, v11

    .line 170
    invoke-virtual {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->removeReadRecords()V

    if-nez v11, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 176
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 177
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 178
    invoke-virtual {p0, v11, v9}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->saveRecord([BLjava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_3
    throw v10
    :try_end_3
    .catch Lcom/gpc/aws/AmazonClientException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    :goto_2
    :try_start_4
    new-instance v2, Lcom/gpc/aws/AmazonClientException;

    const-string v3, "Failed to remove read records"

    invoke-direct {v2, v3, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v3

    .line 183
    invoke-interface {v0, v3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;->isRecoverable(Lcom/gpc/aws/AmazonClientException;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    sget-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v2, "ServiceException in submit all, the values of the data inside the requests appears valid.  The request will be kept"

    invoke-interface {v0, v2, v3}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 191
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->config:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;

    invoke-virtual {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/KinesisRecorderConfig;->getDeadLetterListener()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/DeadLetterListener;

    move-result-object v0

    invoke-interface {v0, v9, v2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/DeadLetterListener;->onRecordsDropped(Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 193
    :try_start_6
    sget-object v2, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v5, "DeadLetterListener onRecordsDropped has thrown an exception (user code)"

    invoke-interface {v2, v5, v0}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 197
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->removeReadRecords()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    :try_start_8
    sget-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v2, "ServiceException in submit all, the last request is presumed to be the cause and will be dropped"

    invoke-interface {v0, v2, v3}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 207
    :goto_4
    throw v3

    :catch_4
    move-exception v0

    .line 199
    new-instance v2, Lcom/gpc/aws/AmazonClientException;

    const-string v3, "Failed to drop bad records."

    invoke-direct {v2, v3, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 213
    :cond_5
    :goto_5
    :try_start_9
    sget-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v2, "submitAllRecords sent %d records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 215
    :try_start_a
    invoke-virtual {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 220
    monitor-exit p0

    return-void

    :catch_5
    move-exception v0

    .line 217
    :try_start_b
    new-instance v1, Lcom/gpc/aws/AmazonClientException;

    const-string v2, "Failed to close record file"

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 213
    sget-object v2, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/AbstractKinesisRecorder;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v3, "submitAllRecords sent %d records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/gpc/aws/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 215
    :try_start_c
    invoke-virtual {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 219
    :try_start_d
    throw v0

    :catch_6
    move-exception v0

    .line 217
    new-instance v1, Lcom/gpc/aws/AmazonClientException;

    const-string v2, "Failed to close record file"

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0
.end method
