.class public final enum Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCSDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GPCMobileDeviceMessageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

.field public static final enum OFFLINE_ARRIVAL:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

.field public static final enum OFFLINE_READ:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

.field public static final enum ONLINE_ARRIVAL:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->OFFLINE_ARRIVAL:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->OFFLINE_READ:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->ONLINE_ARRIVAL:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    const-string v1, "OFFLINE_ARRIVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->OFFLINE_ARRIVAL:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    .line 6
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    const-string v1, "OFFLINE_READ"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->OFFLINE_READ:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    .line 11
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    const-string v1, "ONLINE_ARRIVAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->ONLINE_ARRIVAL:Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    .line 12
    invoke-static {}, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->$values()[Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    invoke-virtual {v0}, [Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCMobileDeviceMessageState;

    return-object v0
.end method
