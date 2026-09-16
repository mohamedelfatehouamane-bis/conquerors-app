.class public final enum Lcom/gpc/tsh/pay/bean/PaymentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/tsh/pay/bean/PaymentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/tsh/pay/bean/PaymentType;

.field public static final enum AMAZON:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public static final enum BAZAAR:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public static final enum GOOGLE_PLAY:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public static final enum HUAWEI:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public static final enum SAMSUNG:Lcom/gpc/tsh/pay/bean/PaymentType;

.field public static final enum TSTORE:Lcom/gpc/tsh/pay/bean/PaymentType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gpc/tsh/pay/bean/PaymentType;
    .locals 3

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [Lcom/gpc/tsh/pay/bean/PaymentType;

    sget-object v1, Lcom/gpc/tsh/pay/bean/PaymentType;->GOOGLE_PLAY:Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/PaymentType;->BAZAAR:Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/PaymentType;->SAMSUNG:Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/PaymentType;->HUAWEI:Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/PaymentType;->TSTORE:Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/bean/PaymentType;->AMAZON:Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v1, 0x0

    const-string v2, "google_play"

    const-string v3, "GOOGLE_PLAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/tsh/pay/bean/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->GOOGLE_PLAY:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 6
    new-instance v0, Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v1, 0x1

    const-string v2, "bazaar"

    const-string v3, "BAZAAR"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/tsh/pay/bean/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->BAZAAR:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 11
    new-instance v0, Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v1, 0x2

    const-string v2, "samsung"

    const-string v3, "SAMSUNG"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/tsh/pay/bean/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->SAMSUNG:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 16
    new-instance v0, Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v1, 0x3

    const-string v2, "huawei"

    const-string v3, "HUAWEI"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/tsh/pay/bean/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->HUAWEI:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 21
    new-instance v0, Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v1, 0x4

    const-string v2, "tstore"

    const-string v3, "TSTORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/tsh/pay/bean/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->TSTORE:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 26
    new-instance v0, Lcom/gpc/tsh/pay/bean/PaymentType;

    const/4 v1, 0x5

    const-string v2, "amazon"

    const-string v3, "AMAZON"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/tsh/pay/bean/PaymentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->AMAZON:Lcom/gpc/tsh/pay/bean/PaymentType;

    .line 27
    invoke-static {}, Lcom/gpc/tsh/pay/bean/PaymentType;->$values()[Lcom/gpc/tsh/pay/bean/PaymentType;

    move-result-object v0

    sput-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->$VALUES:[Lcom/gpc/tsh/pay/bean/PaymentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/gpc/tsh/pay/bean/PaymentType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/tsh/pay/bean/PaymentType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/tsh/pay/bean/PaymentType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/tsh/pay/bean/PaymentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/bean/PaymentType;->$VALUES:[Lcom/gpc/tsh/pay/bean/PaymentType;

    invoke-virtual {v0}, [Lcom/gpc/tsh/pay/bean/PaymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/tsh/pay/bean/PaymentType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/tsh/pay/bean/PaymentType;->name:Ljava/lang/String;

    return-object v0
.end method
