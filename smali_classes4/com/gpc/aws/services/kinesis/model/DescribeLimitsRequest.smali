.class public Lcom/gpc/aws/services/kinesis/model/DescribeLimitsRequest;
.super Lcom/gpc/aws/AmazonWebServiceRequest;
.source "DescribeLimitsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/gpc/aws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 65
    :cond_1
    instance-of v2, p1, Lcom/gpc/aws/services/kinesis/model/DescribeLimitsRequest;

    if-nez v2, :cond_2

    return v1

    .line 67
    :cond_2
    check-cast p1, Lcom/gpc/aws/services/kinesis/model/DescribeLimitsRequest;

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "{}"

    return-object v0
.end method
