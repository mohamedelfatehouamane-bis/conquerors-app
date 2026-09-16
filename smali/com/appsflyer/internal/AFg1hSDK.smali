.class public final enum Lcom/appsflyer/internal/AFg1hSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFg1hSDK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u001d\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0002X\u0007\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u0005j\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFg1hSDK;",
        "",
        "",
        "valueOf",
        "Ljava/lang/String;",
        "values",
        "p0",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "AFKeystoreWrapper",
        "AFInAppEventParameterName",
        "AFInAppEventType",
        "d",
        "AFLogger",
        "e",
        "registerClient",
        "unregisterClient",
        "afRDLog",
        "v",
        "w",
        "afVerboseLog",
        "getLevel",
        "afErrorLogForExcManagerOnly",
        "afLogForce",
        "force",
        "AFLogger$LogLevel",
        "AFVersionDeclaration",
        "i",
        "afInfoLog",
        "afDebugLog",
        "afWarnLog",
        "afErrorLog"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afErrorLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum d:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum e:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum force:Lcom/appsflyer/internal/AFg1hSDK;

.field private static enum getLevel:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum i:Lcom/appsflyer/internal/AFg1hSDK;

.field private static final synthetic onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum registerClient:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum v:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum values:Lcom/appsflyer/internal/AFg1hSDK;

.field public static final enum w:Lcom/appsflyer/internal/AFg1hSDK;


# instance fields
.field final valueOf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 8
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v1, "Other"

    const-string v2, "OTHER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1hSDK;

    .line 9
    new-instance v1, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v2, "HTTP Client"

    const-string v4, "HTTP_CLIENT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFg1hSDK;

    .line 10
    new-instance v2, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v4, "Queue"

    const-string v6, "QUEUE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/appsflyer/internal/AFg1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFg1hSDK;

    .line 11
    new-instance v4, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v6, "Cache"

    const-string v8, "CACHE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/appsflyer/internal/AFg1hSDK;->values:Lcom/appsflyer/internal/AFg1hSDK;

    .line 12
    new-instance v6, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v8, "CFG"

    const-string v10, "REMOTE_CONTROL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/appsflyer/internal/AFg1hSDK;->d:Lcom/appsflyer/internal/AFg1hSDK;

    .line 13
    new-instance v8, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v10, "DDL"

    const/4 v12, 0x5

    invoke-direct {v8, v10, v12, v10}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger:Lcom/appsflyer/internal/AFg1hSDK;

    .line 14
    new-instance v10, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v13, "Referrer"

    const-string v14, "REFERRER"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v13}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/appsflyer/internal/AFg1hSDK;->e:Lcom/appsflyer/internal/AFg1hSDK;

    .line 15
    new-instance v13, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v14, "Cross Promotion"

    const/16 v16, 0x0

    const-string v3, "CROSS_PROMOTION"

    const/16 v17, 0x1

    const/4 v5, 0x7

    invoke-direct {v13, v3, v5, v14}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/appsflyer/internal/AFg1hSDK;->registerClient:Lcom/appsflyer/internal/AFg1hSDK;

    .line 16
    new-instance v3, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v14, "Exception Manager"

    const/16 v18, 0x7

    const-string v5, "EXCEPTION_MANAGER"

    const/16 v19, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v7, v14}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/appsflyer/internal/AFg1hSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1hSDK;

    .line 17
    new-instance v5, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v14, "Attribution"

    const/16 v20, 0x8

    const-string v7, "ATTRIBUTION"

    const/16 v21, 0x3

    const/16 v9, 0x9

    invoke-direct {v5, v7, v9, v14}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/appsflyer/internal/AFg1hSDK;->afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 18
    new-instance v5, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v7, "RD"

    const/16 v14, 0xa

    invoke-direct {v5, v7, v14, v7}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/appsflyer/internal/AFg1hSDK;->v:Lcom/appsflyer/internal/AFg1hSDK;

    .line 19
    new-instance v7, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v22, 0x9

    const-string v9, "Engagement"

    const/16 v23, 0x4

    const-string v11, "ENGAGEMENT"

    const/16 v24, 0x5

    const/16 v12, 0xb

    invoke-direct {v7, v11, v12, v9}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/appsflyer/internal/AFg1hSDK;->w:Lcom/appsflyer/internal/AFg1hSDK;

    .line 20
    new-instance v9, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v11, "Anti Fraud"

    const/16 v25, 0xb

    const-string v12, "ANTI_FRAUD"

    const/16 v26, 0xa

    const/16 v14, 0xc

    invoke-direct {v9, v12, v14, v11}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/appsflyer/internal/AFg1hSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 21
    new-instance v9, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v11, "Public API"

    const-string v12, "PUBLIC_API"

    const/16 v27, 0xc

    const/16 v14, 0xd

    invoke-direct {v9, v12, v14, v11}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/appsflyer/internal/AFg1hSDK;->getLevel:Lcom/appsflyer/internal/AFg1hSDK;

    .line 22
    new-instance v9, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v11, "Ad Revenue"

    const-string v12, "AD_REVENUE"

    const/16 v28, 0xd

    const/16 v14, 0xe

    invoke-direct {v9, v12, v14, v11}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

    .line 23
    new-instance v9, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v11, "Setter"

    const-string v12, "SDK_SETTERS"

    const/16 v29, 0xe

    const/16 v14, 0xf

    invoke-direct {v9, v12, v14, v11}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/appsflyer/internal/AFg1hSDK;->afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

    .line 24
    new-instance v9, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v11, "Predict"

    const-string v12, "PREDICT"

    const/16 v30, 0xf

    const/16 v14, 0x10

    invoke-direct {v9, v12, v14, v11}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/appsflyer/internal/AFg1hSDK;->force:Lcom/appsflyer/internal/AFg1hSDK;

    .line 25
    new-instance v11, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v12, "Device Data"

    const/16 v31, 0x10

    const-string v14, "DEVICE_DATA"

    const/16 v32, 0x6

    const/16 v15, 0x11

    invoke-direct {v11, v14, v15, v12}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

    .line 26
    new-instance v11, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v12, "Security"

    const-string v14, "SECURITY"

    const/16 v33, 0x11

    const/16 v15, 0x12

    invoke-direct {v11, v14, v15, v12}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/appsflyer/internal/AFg1hSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

    .line 27
    new-instance v11, Lcom/appsflyer/internal/AFg1hSDK;

    const-string v12, "General"

    const-string v14, "GENERAL"

    const/16 v34, 0x12

    const/16 v15, 0x13

    invoke-direct {v11, v14, v15, v12}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/appsflyer/internal/AFg1hSDK;->i:Lcom/appsflyer/internal/AFg1hSDK;

    .line 28
    new-instance v12, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v14, 0x14

    const/16 v35, 0x13

    const-string v15, "Preinstall"

    move-object/from16 v36, v0

    const-string v0, "PREINSTALL"

    invoke-direct {v12, v0, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/appsflyer/internal/AFg1hSDK;->afInfoLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 29
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v14, 0x15

    const-string v15, "Uninstall"

    move-object/from16 v37, v1

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afDebugLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 30
    new-instance v1, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v14, 0x16

    const-string v15, "Purchase Validation"

    move-object/from16 v38, v0

    const-string v0, "PURCHASE_VALIDATION"

    invoke-direct {v1, v0, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFg1hSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1hSDK;

    .line 31
    new-instance v0, Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v14, 0x17

    const-string v15, "DMA"

    move-object/from16 v39, v1

    const-string v1, "DMA"

    invoke-direct {v0, v1, v14, v15}, Lcom/appsflyer/internal/AFg1hSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLog:Lcom/appsflyer/internal/AFg1hSDK;

    const/16 v1, 0x18

    .line 1000
    new-array v1, v1, [Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v36, v1, v16

    aput-object v37, v1, v17

    aput-object v2, v1, v19

    aput-object v4, v1, v21

    aput-object v6, v1, v23

    aput-object v8, v1, v24

    aput-object v10, v1, v32

    aput-object v13, v1, v18

    aput-object v3, v1, v20

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->afRDLog:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v2, v1, v22

    aput-object v5, v1, v26

    aput-object v7, v1, v25

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->afVerboseLog:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v2, v1, v27

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->getLevel:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v2, v1, v28

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->afErrorLogForExcManagerOnly:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v2, v1, v29

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->afLogForce:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v2, v1, v30

    aput-object v9, v1, v31

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->AFLogger$LogLevel:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v2, v1, v33

    sget-object v2, Lcom/appsflyer/internal/AFg1hSDK;->AFVersionDeclaration:Lcom/appsflyer/internal/AFg1hSDK;

    aput-object v2, v1, v34

    aput-object v11, v1, v35

    const/16 v2, 0x14

    aput-object v12, v1, v2

    const/16 v2, 0x15

    aput-object v38, v1, v2

    const/16 v2, 0x16

    aput-object v39, v1, v2

    const/16 v2, 0x17

    aput-object v0, v1, v2

    .line 31
    sput-object v1, Lcom/appsflyer/internal/AFg1hSDK;->onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appsflyer/internal/AFg1hSDK;->valueOf:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFg1hSDK;
    .locals 1

    const-class v0, Lcom/appsflyer/internal/AFg1hSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFg1hSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFg1hSDK;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFg1hSDK;->onInstallConversionFailureNative:[Lcom/appsflyer/internal/AFg1hSDK;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFg1hSDK;

    return-object v0
.end method
