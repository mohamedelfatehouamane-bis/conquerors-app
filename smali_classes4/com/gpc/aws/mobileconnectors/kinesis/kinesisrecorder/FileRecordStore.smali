.class Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;
.super Ljava/lang/Object;
.source "FileRecordStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/gpc/aws/logging/Log;


# instance fields
.field private final accessLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

.field private final maxStorageSize:J

.field private recordFile:Ljava/io/File;

.field private final recordFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/gpc/aws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->LOGGER:Lcom/gpc/aws/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;J)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    new-instance v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    invoke-direct {v0, p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    .line 68
    iput-object p2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFileName:Ljava/lang/String;

    .line 69
    iput-wide p3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->maxStorageSize:J

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->tryCreateRecordsFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 73
    new-instance p2, Lcom/gpc/aws/AmazonClientException;

    const-string p3, "Failed to create file store"

    invoke-direct {p2, p3, p1}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic access$000(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/io/File;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;I)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->deleteReadRecords(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->deleteAllRecords()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private deleteAllRecords()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    const-string v1, "KinesisRecorder"

    invoke-virtual {v0, v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 135
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFileName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    return-object v0
.end method

.method private deleteReadRecords(I)Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const-string v0, "failed to close reader"

    const-string v1, "Failed to delete read records and persist unread records"

    iget-object v2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    const-string v3, "KinesisRecorder"

    invoke-virtual {v2, v3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 146
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to delete previous temp file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    invoke-virtual {v2, v3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 155
    iget-object v4, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    .line 159
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 161
    :try_start_1
    new-instance v6, Ljava/io/PrintWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v9, 0x1

    invoke-direct {v8, v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v10, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    .line 166
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    add-int/2addr v4, v9

    if-le v4, p1, :cond_2

    .line 169
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 175
    :cond_3
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 179
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 181
    sget-object v4, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->LOGGER:Lcom/gpc/aws/logging/Log;

    invoke-interface {v4, v0, p1}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 185
    :goto_2
    iget-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 191
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 192
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_9

    .line 193
    sget-object p1, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->LOGGER:Lcom/gpc/aws/logging/Log;

    const-string v0, "Failed to delete temp file"

    invoke-interface {p1, v0}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_6

    .line 186
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    move-object v4, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v5, v4

    :goto_3
    if-eqz v4, :cond_5

    .line 175
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_5
    if-eqz v5, :cond_6

    .line 179
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    .line 181
    sget-object v4, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->LOGGER:Lcom/gpc/aws/logging/Log;

    invoke-interface {v4, v0, v3}, Lcom/gpc/aws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 185
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    .line 189
    :cond_7
    throw p1

    .line 186
    :cond_8
    :goto_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    return-object p1
.end method

.method private tryCreateRecordsFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    const-string v1, "KinesisRecorder"

    invoke-virtual {v0, v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFileName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private tryInitializeWriter()Ljava/io/BufferedWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->tryCreateRecordsFile()V

    .line 123
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->fileManager:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;->newOutputStream(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    return-object v1
.end method


# virtual methods
.method public getFileSize()J
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public iterator()Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;
    .locals 1

    .line 201
    new-instance v0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;

    invoke-direct {v0, p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;-><init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->tryInitializeWriter()Ljava/io/BufferedWriter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->recordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    sget-object v3, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->maxStorageSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->accessLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 94
    throw p1
.end method
