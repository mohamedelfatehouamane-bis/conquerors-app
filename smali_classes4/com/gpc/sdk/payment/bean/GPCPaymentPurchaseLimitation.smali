.class public final enum Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

.field public static final enum GPCPaymentPurchaseLimitationBoth:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

.field public static final enum GPCPaymentPurchaseLimitationDevice:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

.field public static final enum GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

.field public static final enum GPCPaymentPurchaseLimitationRunOutOfQuota:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

.field public static final enum GPCPaymentPurchaseLimitationUser:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const-string v1, "GPCPaymentPurchaseLimitationNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const-string v1, "GPCPaymentPurchaseLimitationUser"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationUser:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    .line 3
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const-string v1, "GPCPaymentPurchaseLimitationDevice"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationDevice:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    .line 4
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const-string v1, "GPCPaymentPurchaseLimitationBoth"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationBoth:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    .line 5
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const-string v1, "GPCPaymentPurchaseLimitationRunOutOfQuota"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationRunOutOfQuota:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    .line 6
    invoke-static {}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->a()[Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->$VALUES:[Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->value:I

    return-void
.end method

.method public static synthetic a()[Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;
    .locals 3

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationUser:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationDevice:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationBoth:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationRunOutOfQuota:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->$VALUES:[Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v0}, [Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->value:I

    return v0
.end method
