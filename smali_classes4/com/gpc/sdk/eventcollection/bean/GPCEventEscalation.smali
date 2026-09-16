.class public final enum Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

.field public static final enum LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

.field public static final enum LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

.field public static final enum NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;


# instance fields
.field private value:I


# direct methods
.method private static final synthetic $values()[Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->NONE:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    new-instance v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    const-string v1, "LEVEL_1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_1:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    new-instance v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    const-string v1, "LEVEL_2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-static {}, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->$values()[Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->$VALUES:[Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 1

    const-class v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 1

    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->$VALUES:[Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->value:I

    return v0
.end method
