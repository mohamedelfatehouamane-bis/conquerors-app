.class public final enum Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

.field public static final enum FAIL:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

.field public static final enum SUCCESS:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->SUCCESS:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    new-instance v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    const-string v1, "FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->FAIL:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->a()[Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->$VALUES:[Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static synthetic a()[Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    sget-object v1, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->SUCCESS:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->FAIL:Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->$VALUES:[Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    invoke-virtual {v0}, [Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/payment/service/bean/GPCNotifySubscriptionResultState;

    return-object v0
.end method
