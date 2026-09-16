.class public Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;
.super Ljava/lang/Object;
.source "PutRecordBatchResponseEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private recordId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 237
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;

    if-nez v2, :cond_2

    return v1

    .line 239
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;

    .line 241
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 243
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 245
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 247
    :cond_9
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 248
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 250
    :cond_a
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 252
    :cond_d
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 253
    invoke-virtual {p1}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->recordId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 226
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setRecordId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->recordId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "RecordId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getRecordId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ErrorCode: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withErrorCode(Ljava/lang/String;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->errorCode:Ljava/lang/String;

    return-object p0
.end method

.method public withErrorMessage(Ljava/lang/String;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public withRecordId(Ljava/lang/String;)Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/PutRecordBatchResponseEntry;->recordId:Ljava/lang/String;

    return-object p0
.end method
