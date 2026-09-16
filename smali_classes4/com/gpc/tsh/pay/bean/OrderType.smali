.class public final enum Lcom/gpc/tsh/pay/bean/OrderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/tsh/pay/bean/OrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/tsh/pay/bean/OrderType;

.field public static final enum FRAUD_REPAY:Lcom/gpc/tsh/pay/bean/OrderType;

.field public static final enum NORMAL:Lcom/gpc/tsh/pay/bean/OrderType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/tsh/pay/bean/OrderType;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/tsh/pay/bean/OrderType;

    sget-object v1, Lcom/gpc/tsh/pay/bean/OrderType;->NORMAL:Lcom/gpc/tsh/pay/bean/OrderType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/OrderType;->FRAUD_REPAY:Lcom/gpc/tsh/pay/bean/OrderType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/tsh/pay/bean/OrderType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/bean/OrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/OrderType;->NORMAL:Lcom/gpc/tsh/pay/bean/OrderType;

    .line 6
    new-instance v0, Lcom/gpc/tsh/pay/bean/OrderType;

    const-string v1, "FRAUD_REPAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/bean/OrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/OrderType;->FRAUD_REPAY:Lcom/gpc/tsh/pay/bean/OrderType;

    .line 7
    invoke-static {}, Lcom/gpc/tsh/pay/bean/OrderType;->$values()[Lcom/gpc/tsh/pay/bean/OrderType;

    move-result-object v0

    sput-object v0, Lcom/gpc/tsh/pay/bean/OrderType;->$VALUES:[Lcom/gpc/tsh/pay/bean/OrderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/OrderType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/tsh/pay/bean/OrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/tsh/pay/bean/OrderType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/tsh/pay/bean/OrderType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/bean/OrderType;->$VALUES:[Lcom/gpc/tsh/pay/bean/OrderType;

    invoke-virtual {v0}, [Lcom/gpc/tsh/pay/bean/OrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/tsh/pay/bean/OrderType;

    return-object v0
.end method
