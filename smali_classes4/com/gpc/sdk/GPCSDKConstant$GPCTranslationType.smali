.class public final enum Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCSDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GPCTranslationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

.field public static final enum NAME:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

.field public static final enum NORMAL:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->NAME:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    .line 5
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    const-string v1, "NAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->NAME:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    .line 6
    invoke-static {}, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->$values()[Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    return-object v0
.end method
