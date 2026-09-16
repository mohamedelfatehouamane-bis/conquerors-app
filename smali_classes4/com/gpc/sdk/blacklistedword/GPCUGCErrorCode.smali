.class public interface abstract Lcom/gpc/sdk/blacklistedword/GPCUGCErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UGC_DETECTOR:Lcom/gpc/sdk/error/GPCExceptionMapping;

.field public static final UGC_DETECTOR_ERROR_FOR_BUSINESS:Ljava/lang/String; = "381205"

.field public static final UGC_DETECTOR_ERROR_FOR_CONTENT_IS_EMPTY:Ljava/lang/String; = "381206"

.field public static final UGC_DETECTOR_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "381204"

.field public static final UGC_DETECTOR_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String; = "381203"

.field public static final UGC_DETECTOR_ERROR_FOR_REQUEST_SERVER_NETWORK:Ljava/lang/String; = "381202"

.field public static final UGC_DETECTOR_ERROR_FOR_UNKNOWN:Ljava/lang/String; = "381201"

.field public static final UGC_GET_USER_POLICY:Lcom/gpc/sdk/error/GPCExceptionMapping;

.field public static final UGC_GET_USER_POLICY_ERROR_FOR_BUSINESS:Ljava/lang/String; = "381105"

.field public static final UGC_GET_USER_POLICY_ERROR_FOR_REMOTE_DATA:Ljava/lang/String; = "381104"

.field public static final UGC_GET_USER_POLICY_ERROR_FOR_REMOTE_SERVICE:Ljava/lang/String; = "381103"

.field public static final UGC_GET_USER_POLICY_ERROR_FOR_REQUEST_SERVER_NETWORK:Ljava/lang/String; = "381102"

.field public static final UGC_GET_USER_POLICY_ERROR_FOR_UNKNOWN:Ljava/lang/String; = "381101"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/gpc/sdk/error/GPCExceptionMapping;

    const-string v4, "381105"

    const-string v5, "381104"

    const-string v1, "381101"

    const-string v2, "381102"

    const-string v3, "381103"

    invoke-direct/range {v0 .. v5}, Lcom/gpc/sdk/error/GPCExceptionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/blacklistedword/GPCUGCErrorCode;->UGC_GET_USER_POLICY:Lcom/gpc/sdk/error/GPCExceptionMapping;

    .line 16
    new-instance v1, Lcom/gpc/sdk/error/GPCExceptionMapping;

    const-string v5, "381205"

    const-string v6, "381204"

    const-string v2, "381201"

    const-string v3, "381202"

    const-string v4, "381203"

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/error/GPCExceptionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gpc/sdk/blacklistedword/GPCUGCErrorCode;->UGC_DETECTOR:Lcom/gpc/sdk/error/GPCExceptionMapping;

    return-void
.end method
