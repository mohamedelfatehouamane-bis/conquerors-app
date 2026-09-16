.class public final enum Lcom/gpc/util/Sex;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/util/Sex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/util/Sex;

.field public static final enum FEMALE:Lcom/gpc/util/Sex;

.field public static final enum MALE:Lcom/gpc/util/Sex;

.field public static final enum NOT_SPECIFIED:Lcom/gpc/util/Sex;


# direct methods
.method private static synthetic $values()[Lcom/gpc/util/Sex;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/util/Sex;

    sget-object v1, Lcom/gpc/util/Sex;->NOT_SPECIFIED:Lcom/gpc/util/Sex;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/util/Sex;->FEMALE:Lcom/gpc/util/Sex;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/util/Sex;->MALE:Lcom/gpc/util/Sex;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/util/Sex;

    const-string v1, "NOT_SPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/util/Sex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/util/Sex;->NOT_SPECIFIED:Lcom/gpc/util/Sex;

    new-instance v0, Lcom/gpc/util/Sex;

    const-string v1, "FEMALE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/util/Sex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/util/Sex;->FEMALE:Lcom/gpc/util/Sex;

    new-instance v0, Lcom/gpc/util/Sex;

    const-string v1, "MALE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/util/Sex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/util/Sex;->MALE:Lcom/gpc/util/Sex;

    .line 2
    invoke-static {}, Lcom/gpc/util/Sex;->$values()[Lcom/gpc/util/Sex;

    move-result-object v0

    sput-object v0, Lcom/gpc/util/Sex;->$VALUES:[Lcom/gpc/util/Sex;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/util/Sex;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/util/Sex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/util/Sex;

    return-object p0
.end method

.method public static values()[Lcom/gpc/util/Sex;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/util/Sex;->$VALUES:[Lcom/gpc/util/Sex;

    invoke-virtual {v0}, [Lcom/gpc/util/Sex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/util/Sex;

    return-object v0
.end method
