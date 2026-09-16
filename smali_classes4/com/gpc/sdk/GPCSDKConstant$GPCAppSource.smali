.class public final enum Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCSDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GPCAppSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

.field public static final enum LOCAL:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

.field public static final enum REMOTE:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

.field public static final enum RESCUE:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

.field public static final enum UNKNOWN:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->REMOTE:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->LOCAL:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->RESCUE:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->UNKNOWN:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    const-string v1, "REMOTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->REMOTE:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    .line 8
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    const-string v1, "LOCAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->LOCAL:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    .line 13
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    const-string v1, "RESCUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->RESCUE:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    .line 15
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->UNKNOWN:Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    .line 16
    invoke-static {}, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->$values()[Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    invoke-virtual {v0}, [Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCAppSource;

    return-object v0
.end method
