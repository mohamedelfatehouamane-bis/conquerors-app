.class public final enum Lch/qos/logback/core/rolling/helper/PeriodicityType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/qos/logback/core/rolling/helper/PeriodicityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum ERRONEOUS:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum HALF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_HOUR:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_MILLISECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_MINUTE:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_MONTH:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_SECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_WEEK:Lch/qos/logback/core/rolling/helper/PeriodicityType;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const-string v1, "ERRONEOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ERRONEOUS:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const-string v3, "TOP_OF_MILLISECOND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MILLISECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v3, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const-string v5, "TOP_OF_SECOND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_SECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v5, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const-string v7, "TOP_OF_MINUTE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MINUTE:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v7, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const-string v9, "TOP_OF_HOUR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_HOUR:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v9, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const-string v11, "HALF_DAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lch/qos/logback/core/rolling/helper/PeriodicityType;->HALF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v11, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const-string v13, "TOP_OF_DAY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v13, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const-string v15, "TOP_OF_WEEK"

    const/16 v16, 0x0

    const/4 v2, 0x7

    invoke-direct {v13, v15, v2}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_WEEK:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v15, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/16 v17, 0x7

    const-string v2, "TOP_OF_MONTH"

    const/16 v18, 0x1

    const/16 v4, 0x8

    invoke-direct {v15, v2, v4}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MONTH:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/16 v2, 0x9

    new-array v2, v2, [Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v0, v2, v16

    aput-object v1, v2, v18

    aput-object v3, v2, v6

    aput-object v5, v2, v8

    aput-object v7, v2, v10

    aput-object v9, v2, v12

    aput-object v11, v2, v14

    aput-object v13, v2, v17

    aput-object v15, v2, v4

    sput-object v2, Lch/qos/logback/core/rolling/helper/PeriodicityType;->$VALUES:[Lch/qos/logback/core/rolling/helper/PeriodicityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .locals 1

    const-class v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    return-object p0
.end method

.method public static values()[Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .locals 1

    sget-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->$VALUES:[Lch/qos/logback/core/rolling/helper/PeriodicityType;

    invoke-virtual {v0}, [Lch/qos/logback/core/rolling/helper/PeriodicityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/qos/logback/core/rolling/helper/PeriodicityType;

    return-object v0
.end method
