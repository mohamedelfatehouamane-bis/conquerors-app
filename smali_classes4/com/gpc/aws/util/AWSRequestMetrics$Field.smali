.class public final enum Lcom/gpc/aws/util/AWSRequestMetrics$Field;
.super Ljava/lang/Enum;
.source "AWSRequestMetrics.java"

# interfaces
.implements Lcom/gpc/aws/metrics/RequestMetricType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/util/AWSRequestMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/util/AWSRequestMetrics$Field;",
        ">;",
        "Lcom/gpc/aws/metrics/RequestMetricType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum AWSErrorCode:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum AWSRequestID:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum BytesProcessed:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum Exception:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientPoolAvailableCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientPoolLeasedCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientPoolPendingCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientReceiveResponseTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientRetryCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientSendRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum HttpRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum RedirectLocation:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum RequestCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum RequestSigningTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum ResponseProcessingTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum RetryCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum RetryPauseTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum ServiceEndpoint:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum ServiceName:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

.field public static final enum StatusCode:Lcom/gpc/aws/util/AWSRequestMetrics$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 51
    new-instance v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const-string v1, "AWSErrorCode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 54
    new-instance v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const-string v3, "AWSRequestID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 57
    new-instance v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const-string v5, "BytesProcessed"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->BytesProcessed:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 64
    new-instance v5, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const-string v7, "ClientExecuteTime"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 67
    new-instance v7, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const-string v9, "CredentialsRequestTime"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 70
    new-instance v9, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const-string v11, "Exception"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->Exception:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 75
    new-instance v11, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const-string v13, "HttpRequestTime"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 78
    new-instance v13, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const-string v15, "RedirectLocation"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 81
    new-instance v15, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v17, 0x7

    const-string v2, "RequestMarshallTime"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 85
    new-instance v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v19, 0x8

    const-string v4, "RequestSigningTime"

    const/16 v20, 0x2

    const/16 v6, 0x9

    invoke-direct {v2, v4, v6}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 90
    new-instance v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v21, 0x9

    const-string v6, "ResponseProcessingTime"

    const/16 v22, 0x3

    const/16 v8, 0xa

    invoke-direct {v4, v6, v8}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 94
    new-instance v6, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v23, 0xa

    const-string v8, "RequestCount"

    const/16 v24, 0x4

    const/16 v10, 0xb

    invoke-direct {v6, v8, v10}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 98
    new-instance v8, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v25, 0xb

    const-string v10, "RetryCount"

    const/16 v26, 0x5

    const/16 v12, 0xc

    invoke-direct {v8, v10, v12}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RetryCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 104
    new-instance v10, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v27, 0xc

    const-string v12, "HttpClientRetryCount"

    const/16 v28, 0x6

    const/16 v14, 0xd

    invoke-direct {v10, v12, v14}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpClientRetryCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 109
    new-instance v12, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v29, 0xd

    const-string v14, "HttpClientSendRequestTime"

    move-object/from16 v30, v0

    const/16 v0, 0xe

    invoke-direct {v12, v14, v0}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpClientSendRequestTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 114
    new-instance v14, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v31, 0xe

    const-string v0, "HttpClientReceiveResponseTime"

    move-object/from16 v32, v1

    const/16 v1, 0xf

    invoke-direct {v14, v0, v1}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpClientReceiveResponseTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 123
    new-instance v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v33, 0xf

    const-string v1, "HttpClientPoolAvailableCount"

    move-object/from16 v34, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpClientPoolAvailableCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 132
    new-instance v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v35, 0x10

    const-string v2, "HttpClientPoolLeasedCount"

    move-object/from16 v36, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpClientPoolLeasedCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 140
    new-instance v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v37, 0x11

    const-string v0, "HttpClientPoolPendingCount"

    move-object/from16 v38, v1

    const/16 v1, 0x12

    invoke-direct {v2, v0, v1}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->HttpClientPoolPendingCount:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 143
    new-instance v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v39, 0x12

    const-string v1, "RetryPauseTime"

    move-object/from16 v40, v2

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 149
    new-instance v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v41, 0x13

    const-string v2, "ServiceEndpoint"

    move-object/from16 v42, v0

    const/16 v0, 0x14

    invoke-direct {v1, v2, v0}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 152
    new-instance v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v43, 0x14

    const-string v0, "ServiceName"

    move-object/from16 v44, v1

    const/16 v1, 0x15

    invoke-direct {v2, v0, v1}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    .line 155
    new-instance v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v45, 0x15

    const-string v1, "StatusCode"

    move-object/from16 v46, v2

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    const/16 v1, 0x17

    .line 48
    new-array v1, v1, [Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    aput-object v30, v1, v16

    aput-object v32, v1, v18

    aput-object v3, v1, v20

    aput-object v5, v1, v22

    aput-object v7, v1, v24

    aput-object v9, v1, v26

    aput-object v11, v1, v28

    aput-object v13, v1, v17

    aput-object v15, v1, v19

    aput-object v34, v1, v21

    aput-object v4, v1, v23

    aput-object v6, v1, v25

    aput-object v8, v1, v27

    aput-object v10, v1, v29

    aput-object v12, v1, v31

    aput-object v14, v1, v33

    aput-object v36, v1, v35

    aput-object v38, v1, v37

    aput-object v40, v1, v39

    aput-object v42, v1, v41

    aput-object v44, v1, v43

    aput-object v46, v1, v45

    aput-object v0, v1, v2

    sput-object v1, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->$VALUES:[Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/util/AWSRequestMetrics$Field;
    .locals 1

    .line 48
    const-class v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/util/AWSRequestMetrics$Field;
    .locals 1

    .line 48
    sget-object v0, Lcom/gpc/aws/util/AWSRequestMetrics$Field;->$VALUES:[Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, [Lcom/gpc/aws/util/AWSRequestMetrics$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/util/AWSRequestMetrics$Field;

    return-object v0
.end method
