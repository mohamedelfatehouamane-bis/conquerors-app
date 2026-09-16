.class public final enum Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field public static final enum HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

.field public static final enum VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1521
    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    const-string v1, "VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    new-instance v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    const-string v3, "HORIZONTAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    const/4 v3, 0x2

    .line 1520
    new-array v3, v3, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1520
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .line 1520
    const-class v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object p0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .line 1520
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method
