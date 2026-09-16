.class public final enum Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

.field public static final enum Close:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

.field public static final enum Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

.field public static final enum OnlyRecord:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    sget-object v1, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->OnlyRecord:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Close:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const-string v1, "OnlyRecord"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->OnlyRecord:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 3
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const-string v1, "Close"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Close:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->$values()[Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->$VALUES:[Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

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
    iput p3, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->value:I

    return-void
.end method

.method public static getMode(I)Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Normal:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 9
    :cond_0
    sget-object p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->Close:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    return-object p0

    .line 10
    :cond_1
    sget-object p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->OnlyRecord:Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->$VALUES:[Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    invoke-virtual {v0}, [Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventCollectionConfig$Mode;->value:I

    return v0
.end method
