.class public final enum Lcom/amazon/device/iap/internal/util/c;
.super Ljava/lang/Enum;
.source "ReceiptVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/iap/internal/util/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amazon/device/iap/internal/util/c;

.field public static final enum b:Lcom/amazon/device/iap/internal/util/c;

.field public static final enum c:Lcom/amazon/device/iap/internal/util/c;

.field private static final synthetic e:[Lcom/amazon/device/iap/internal/util/c;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/amazon/device/iap/internal/util/c;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/amazon/device/iap/internal/util/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/device/iap/internal/util/c;->a:Lcom/amazon/device/iap/internal/util/c;

    new-instance v1, Lcom/amazon/device/iap/internal/util/c;

    const-string v3, "V1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/amazon/device/iap/internal/util/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amazon/device/iap/internal/util/c;->b:Lcom/amazon/device/iap/internal/util/c;

    new-instance v3, Lcom/amazon/device/iap/internal/util/c;

    const-string v5, "V2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/amazon/device/iap/internal/util/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/amazon/device/iap/internal/util/c;->c:Lcom/amazon/device/iap/internal/util/c;

    const/4 v5, 0x3

    .line 3
    new-array v5, v5, [Lcom/amazon/device/iap/internal/util/c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/amazon/device/iap/internal/util/c;->e:[Lcom/amazon/device/iap/internal/util/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/amazon/device/iap/internal/util/c;->d:I

    return-void
.end method

.method public static a()[Lcom/amazon/device/iap/internal/util/c;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/device/iap/internal/util/c;->e:[Lcom/amazon/device/iap/internal/util/c;

    invoke-virtual {v0}, [Lcom/amazon/device/iap/internal/util/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/iap/internal/util/c;

    return-object v0
.end method
