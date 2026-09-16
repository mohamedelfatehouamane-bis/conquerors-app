.class interface abstract Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/RecordSender;
.super Ljava/lang/Object;
.source "RecordSender.java"


# virtual methods
.method public abstract isRecoverable(Lcom/gpc/aws/AmazonClientException;)Z
.end method

.method public abstract sendBatch(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method
