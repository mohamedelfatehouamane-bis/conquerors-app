.class public final enum Lcom/gpc/aws/services/kinesis/model/MetricsName;
.super Ljava/lang/Enum;
.source "MetricsName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/services/kinesis/model/MetricsName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field public static final enum ALL:Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field public static final enum IncomingBytes:Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field public static final enum IncomingRecords:Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field public static final enum IteratorAgeMilliseconds:Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field public static final enum OutgoingBytes:Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field public static final enum OutgoingRecords:Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field public static final enum ReadProvisionedThroughputExceeded:Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field public static final enum WriteProvisionedThroughputExceeded:Lcom/gpc/aws/services/kinesis/model/MetricsName;

.field private static final enumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/aws/services/kinesis/model/MetricsName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 26
    new-instance v0, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const-string v1, "IncomingBytes"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/gpc/aws/services/kinesis/model/MetricsName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/services/kinesis/model/MetricsName;->IncomingBytes:Lcom/gpc/aws/services/kinesis/model/MetricsName;

    .line 27
    new-instance v3, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const-string v4, "IncomingRecords"

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v4}, Lcom/gpc/aws/services/kinesis/model/MetricsName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/gpc/aws/services/kinesis/model/MetricsName;->IncomingRecords:Lcom/gpc/aws/services/kinesis/model/MetricsName;

    .line 28
    new-instance v6, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const-string v7, "OutgoingBytes"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8, v7}, Lcom/gpc/aws/services/kinesis/model/MetricsName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/gpc/aws/services/kinesis/model/MetricsName;->OutgoingBytes:Lcom/gpc/aws/services/kinesis/model/MetricsName;

    .line 29
    new-instance v9, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const-string v10, "OutgoingRecords"

    const/4 v11, 0x3

    invoke-direct {v9, v10, v11, v10}, Lcom/gpc/aws/services/kinesis/model/MetricsName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/gpc/aws/services/kinesis/model/MetricsName;->OutgoingRecords:Lcom/gpc/aws/services/kinesis/model/MetricsName;

    .line 30
    new-instance v12, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const-string v13, "WriteProvisionedThroughputExceeded"

    const/4 v14, 0x4

    invoke-direct {v12, v13, v14, v13}, Lcom/gpc/aws/services/kinesis/model/MetricsName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/gpc/aws/services/kinesis/model/MetricsName;->WriteProvisionedThroughputExceeded:Lcom/gpc/aws/services/kinesis/model/MetricsName;

    .line 31
    new-instance v15, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const/16 v16, 0x0

    const-string v2, "ReadProvisionedThroughputExceeded"

    const/16 v17, 0x1

    const/4 v5, 0x5

    invoke-direct {v15, v2, v5, v2}, Lcom/gpc/aws/services/kinesis/model/MetricsName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/gpc/aws/services/kinesis/model/MetricsName;->ReadProvisionedThroughputExceeded:Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const/16 v18, 0x5

    .line 32
    new-instance v5, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const/16 v19, 0x2

    const-string v8, "IteratorAgeMilliseconds"

    const/16 v20, 0x3

    const/4 v11, 0x6

    invoke-direct {v5, v8, v11, v8}, Lcom/gpc/aws/services/kinesis/model/MetricsName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/gpc/aws/services/kinesis/model/MetricsName;->IteratorAgeMilliseconds:Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const/16 v21, 0x6

    .line 33
    new-instance v11, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const/16 v22, 0x4

    const-string v14, "ALL"

    move-object/from16 v23, v5

    const/4 v5, 0x7

    invoke-direct {v11, v14, v5, v14}, Lcom/gpc/aws/services/kinesis/model/MetricsName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/gpc/aws/services/kinesis/model/MetricsName;->ALL:Lcom/gpc/aws/services/kinesis/model/MetricsName;

    const/16 v24, 0x7

    const/16 v5, 0x8

    .line 24
    new-array v5, v5, [Lcom/gpc/aws/services/kinesis/model/MetricsName;

    aput-object v0, v5, v16

    aput-object v3, v5, v17

    aput-object v6, v5, v19

    aput-object v9, v5, v20

    aput-object v12, v5, v22

    aput-object v15, v5, v18

    aput-object v23, v5, v21

    aput-object v11, v5, v24

    sput-object v5, Lcom/gpc/aws/services/kinesis/model/MetricsName;->$VALUES:[Lcom/gpc/aws/services/kinesis/model/MetricsName;

    .line 48
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/gpc/aws/services/kinesis/model/MetricsName;->enumMap:Ljava/util/Map;

    .line 49
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {v5, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {v5, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    .line 55
    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-interface {v5, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/gpc/aws/services/kinesis/model/MetricsName;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/MetricsName;
    .locals 3

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/MetricsName;->enumMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create enum from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value cannot be null or empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/services/kinesis/model/MetricsName;
    .locals 1

    .line 24
    const-class v0, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/services/kinesis/model/MetricsName;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/services/kinesis/model/MetricsName;
    .locals 1

    .line 24
    sget-object v0, Lcom/gpc/aws/services/kinesis/model/MetricsName;->$VALUES:[Lcom/gpc/aws/services/kinesis/model/MetricsName;

    invoke-virtual {v0}, [Lcom/gpc/aws/services/kinesis/model/MetricsName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/services/kinesis/model/MetricsName;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/gpc/aws/services/kinesis/model/MetricsName;->value:Ljava/lang/String;

    return-object v0
.end method
