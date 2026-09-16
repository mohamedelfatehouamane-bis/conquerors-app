.class public final enum Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

.field public static final enum RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1530
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1536
    new-instance v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v3, "PULL_TO_REFRESH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1542
    new-instance v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const-string v5, "RELEASE_TO_REFRESH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1547
    new-instance v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/16 v7, 0x8

    const-string v8, "REFRESHING"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1553
    new-instance v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/16 v8, 0x9

    const-string v10, "MANUAL_REFRESHING"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    .line 1559
    new-instance v8, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/16 v10, 0x10

    const-string v12, "OVERSCROLLING"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    const/4 v10, 0x6

    .line 1524
    new-array v10, v10, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v9

    aput-object v7, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1580
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1581
    iput p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mIntValue:I

    return-void
.end method

.method static mapIntToValue(I)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 5

    .line 1568
    invoke-static {}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1569
    invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1575
    :cond_1
    sget-object p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1

    .line 1524
    const-class v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-object p0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;
    .locals 1

    .line 1524
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .line 1585
    iget v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$State;->mIntValue:I

    return v0
.end method
