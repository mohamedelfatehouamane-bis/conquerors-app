.class public final enum Lcom/unity3d/ads/core/data/model/ShowStatus;
.super Ljava/lang/Enum;
.source "ShowStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/ShowStatus$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/core/data/model/ShowStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/model/ShowStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "toUnityAdsShowCompletionState",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;",
        "COMPLETED",
        "SKIPPED",
        "ERROR",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/core/data/model/ShowStatus;

.field public static final enum COMPLETED:Lcom/unity3d/ads/core/data/model/ShowStatus;

.field public static final enum ERROR:Lcom/unity3d/ads/core/data/model/ShowStatus;

.field public static final enum SKIPPED:Lcom/unity3d/ads/core/data/model/ShowStatus;


# direct methods
.method private static final synthetic $values()[Lcom/unity3d/ads/core/data/model/ShowStatus;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unity3d/ads/core/data/model/ShowStatus;

    sget-object v1, Lcom/unity3d/ads/core/data/model/ShowStatus;->COMPLETED:Lcom/unity3d/ads/core/data/model/ShowStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/core/data/model/ShowStatus;->SKIPPED:Lcom/unity3d/ads/core/data/model/ShowStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/core/data/model/ShowStatus;->ERROR:Lcom/unity3d/ads/core/data/model/ShowStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/unity3d/ads/core/data/model/ShowStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/ShowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/ShowStatus;->COMPLETED:Lcom/unity3d/ads/core/data/model/ShowStatus;

    .line 7
    new-instance v0, Lcom/unity3d/ads/core/data/model/ShowStatus;

    const-string v1, "SKIPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/ShowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/ShowStatus;->SKIPPED:Lcom/unity3d/ads/core/data/model/ShowStatus;

    .line 8
    new-instance v0, Lcom/unity3d/ads/core/data/model/ShowStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/core/data/model/ShowStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/core/data/model/ShowStatus;->ERROR:Lcom/unity3d/ads/core/data/model/ShowStatus;

    invoke-static {}, Lcom/unity3d/ads/core/data/model/ShowStatus;->$values()[Lcom/unity3d/ads/core/data/model/ShowStatus;

    move-result-object v0

    sput-object v0, Lcom/unity3d/ads/core/data/model/ShowStatus;->$VALUES:[Lcom/unity3d/ads/core/data/model/ShowStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/core/data/model/ShowStatus;
    .locals 1

    const-class v0, Lcom/unity3d/ads/core/data/model/ShowStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/core/data/model/ShowStatus;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/core/data/model/ShowStatus;
    .locals 1

    sget-object v0, Lcom/unity3d/ads/core/data/model/ShowStatus;->$VALUES:[Lcom/unity3d/ads/core/data/model/ShowStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/core/data/model/ShowStatus;

    return-object v0
.end method


# virtual methods
.method public final toUnityAdsShowCompletionState()Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;
    .locals 3

    .line 10
    sget-object v0, Lcom/unity3d/ads/core/data/model/ShowStatus$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/ShowStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->SKIPPED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected show status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;->COMPLETED:Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;

    return-object v0
.end method
