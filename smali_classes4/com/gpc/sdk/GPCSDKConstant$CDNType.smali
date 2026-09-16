.class public final enum Lcom/gpc/sdk/GPCSDKConstant$CDNType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCSDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CDNType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/GPCSDKConstant$CDNType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/GPCSDKConstant$CDNType;

.field public static final enum DYNAMIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

.field public static final enum SND_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

.field public static final enum STATIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/GPCSDKConstant$CDNType;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->STATIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->DYNAMIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->SND_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    const-string v1, "STATIC_ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$CDNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->STATIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    .line 6
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    const-string v1, "DYNAMIC_ADDRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$CDNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->DYNAMIC_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    .line 8
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    const-string v1, "SND_ADDRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$CDNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->SND_ADDRESS:Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    .line 9
    invoke-static {}, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->$values()[Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$CDNType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$CDNType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/GPCSDKConstant$CDNType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$CDNType;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/GPCSDKConstant$CDNType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/GPCSDKConstant$CDNType;

    return-object v0
.end method
