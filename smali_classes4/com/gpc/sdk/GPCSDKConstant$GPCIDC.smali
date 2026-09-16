.class public final enum Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCSDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GPCIDC"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

.field public static final enum EU:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

.field public static final enum SG:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

.field public static final enum SND:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

.field public static final enum TW:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->SND:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->TW:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->SG:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->EU:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    const-string v1, "SND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->SND:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    .line 6
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    const-string v1, "TW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->TW:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    .line 11
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    const-string v1, "SG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->SG:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    .line 16
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    const-string v1, "EU"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->EU:Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    .line 17
    invoke-static {}, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->$values()[Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    invoke-virtual {v0}, [Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCIDC;

    return-object v0
.end method
