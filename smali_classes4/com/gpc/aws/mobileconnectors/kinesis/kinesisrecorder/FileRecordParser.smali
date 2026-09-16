.class Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;
.super Ljava/lang/Object;
.source "FileRecordParser.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","


# instance fields
.field bytes:[B

.field streamName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/gpc/aws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method parse(Ljava/lang/String;)V
    .locals 3

    .line 40
    const-string v0, ","

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 41
    array-length v2, v0

    if-lt v2, v1, :cond_0

    const/4 p1, 0x0

    .line 44
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->streamName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 45
    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/gpc/aws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->bytes:[B

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->streamName:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->bytes:[B

    invoke-static {v0, v1}, Lcom/gpc/aws/mobileconnectors/kinesis/kinesisrecorder/FileRecordParser;->asString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
