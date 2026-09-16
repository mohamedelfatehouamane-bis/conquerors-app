.class public final enum Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

.field public static final enum GPC_GATEWAY:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

.field public static final enum IAB_CANCELED:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

.field public static final enum IAB_PURCHASE:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

.field public static final enum IAB_SETUP:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    sget-object v1, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_SETUP:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->GPC_GATEWAY:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_CANCELED:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const-string v1, "IAB_SETUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_SETUP:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 6
    new-instance v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const-string v1, "IAB_PURCHASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_PURCHASE:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 13
    new-instance v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const-string v1, "GPC_GATEWAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->GPC_GATEWAY:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 18
    new-instance v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    const-string v1, "IAB_CANCELED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->IAB_CANCELED:Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    .line 19
    invoke-static {}, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->$values()[Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    move-result-object v0

    sput-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->$VALUES:[Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->$VALUES:[Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    invoke-virtual {v0}, [Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/tsh/pay/bean/GPCPurchaseFailureType;

    return-object v0
.end method
