.class final enum Lcom/ProductHelper$BuyType;
.super Ljava/lang/Enum;
.source "ProductHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ProductHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BuyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ProductHelper$BuyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ProductHelper$BuyType;

.field public static final enum Buy:Lcom/ProductHelper$BuyType;

.field public static final enum Subscribe:Lcom/ProductHelper$BuyType;


# direct methods
.method private static synthetic $values()[Lcom/ProductHelper$BuyType;
    .locals 3

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Lcom/ProductHelper$BuyType;

    sget-object v1, Lcom/ProductHelper$BuyType;->Buy:Lcom/ProductHelper$BuyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ProductHelper$BuyType;->Subscribe:Lcom/ProductHelper$BuyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/ProductHelper$BuyType;

    const-string v1, "Buy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ProductHelper$BuyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ProductHelper$BuyType;->Buy:Lcom/ProductHelper$BuyType;

    .line 48
    new-instance v0, Lcom/ProductHelper$BuyType;

    const-string v1, "Subscribe"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ProductHelper$BuyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ProductHelper$BuyType;->Subscribe:Lcom/ProductHelper$BuyType;

    .line 46
    invoke-static {}, Lcom/ProductHelper$BuyType;->$values()[Lcom/ProductHelper$BuyType;

    move-result-object v0

    sput-object v0, Lcom/ProductHelper$BuyType;->$VALUES:[Lcom/ProductHelper$BuyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ProductHelper$BuyType;
    .locals 1

    .line 46
    const-class v0, Lcom/ProductHelper$BuyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ProductHelper$BuyType;

    return-object p0
.end method

.method public static values()[Lcom/ProductHelper$BuyType;
    .locals 1

    .line 46
    sget-object v0, Lcom/ProductHelper$BuyType;->$VALUES:[Lcom/ProductHelper$BuyType;

    invoke-virtual {v0}, [Lcom/ProductHelper$BuyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ProductHelper$BuyType;

    return-object v0
.end method
