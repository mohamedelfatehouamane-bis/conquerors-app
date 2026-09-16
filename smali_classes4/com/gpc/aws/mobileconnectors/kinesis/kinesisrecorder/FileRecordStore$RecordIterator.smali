.class public Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;
.super Ljava/lang/Object;
.source "FileRecordStore.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field isEndOfFile:Z

.field linesRead:I

.field nextBuffer:Ljava/lang/String;

.field reader:Ljava/io/BufferedReader;

.field final synthetic this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;


# direct methods
.method public constructor <init>(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)V
    .locals 1

    .line 205
    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 206
    iput p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->linesRead:I

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->reader:Ljava/io/BufferedReader;

    .line 209
    iput-boolean p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->isEndOfFile:Z

    return-void
.end method

.method private resetReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->tryCloseReader()V

    const/4 v0, 0x0

    .line 360
    iput v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->linesRead:I

    const/4 v1, 0x0

    .line 361
    iput-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;

    .line 362
    iput-boolean v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->isEndOfFile:Z

    return-void
.end method

.method private tryCloseReader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->reader:Ljava/io/BufferedReader;

    :cond_0
    return-void
.end method

.method private tryOpenReader()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->reader:Ljava/io/BufferedReader;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->isEndOfFile:Z

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v2}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$100(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$000(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileManager;->newInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/gpc/aws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 222
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->reader:Ljava/io/BufferedReader;

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->tryCloseReader()V

    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->tryOpenReader()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 254
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 257
    :try_start_2
    iput-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 268
    :cond_2
    iput-boolean v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->isEndOfFile:Z

    .line 269
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->tryCloseReader()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    .line 278
    :goto_1
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 276
    :try_start_3
    new-instance v1, Lcom/gpc/aws/AmazonClientException;

    const-string v2, "IO Error"

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 274
    new-instance v1, Lcom/gpc/aws/AmazonClientException;

    const-string v2, "Cannot find records file"

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    :goto_2
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 279
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 289
    iget v3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->linesRead:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->linesRead:I

    .line 290
    iput-object v2, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;

    goto :goto_3

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->tryOpenReader()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_1
    const/4 v0, 0x0

    move-object v3, v2

    :goto_0
    if-nez v0, :cond_2

    .line 298
    :try_start_1
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    nop

    move-object v3, v2

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 306
    :try_start_2
    iget v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->linesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->linesRead:I

    goto :goto_2

    .line 308
    :cond_3
    iput-boolean v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->isEndOfFile:Z

    .line 309
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->tryCloseReader()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v0, v3

    .line 318
    :goto_3
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 316
    :try_start_3
    new-instance v1, Lcom/gpc/aws/AmazonClientException;

    const-string v2, "IO Error"

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 314
    new-instance v1, Lcom/gpc/aws/AmazonClientException;

    const-string v2, "Cannot find records file"

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    :goto_4
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 319
    throw v0
.end method

.method public peek()Ljava/lang/String;
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 325
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->hasNext()Z

    .line 326
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->nextBuffer:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 329
    throw v0
.end method

.method public remove()V
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The remove() operation is not supported for this iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllRecords()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$400(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/io/File;

    .line 352
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->resetReader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 355
    throw v0
.end method

.method public removeReadRecords()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    iget v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->linesRead:I

    invoke-static {v0, v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$300(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;I)Ljava/io/File;

    .line 342
    invoke-direct {p0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->resetReader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v0}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore$RecordIterator;->this$0:Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;

    invoke-static {v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;->access$200(Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordStore;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 345
    throw v0
.end method
