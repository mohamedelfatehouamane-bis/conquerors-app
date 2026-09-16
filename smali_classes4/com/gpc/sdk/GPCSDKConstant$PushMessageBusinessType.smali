.class public final enum Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/GPCSDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushMessageBusinessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

.field public static final enum SDK:Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

.field public static final enum TSNative:Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->TSNative:Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->SDK:Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    const-string v1, "TSNative"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->TSNative:Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    .line 6
    new-instance v0, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    const-string v1, "SDK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->SDK:Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    .line 7
    invoke-static {}, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->$values()[Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->$VALUES:[Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/GPCSDKConstant$PushMessageBusinessType;

    return-object v0
.end method
