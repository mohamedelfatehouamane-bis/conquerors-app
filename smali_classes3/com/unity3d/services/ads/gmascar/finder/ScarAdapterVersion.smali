.class public final enum Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;
.super Ljava/lang/Enum;
.source "ScarAdapterVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

.field public static final enum NA:Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

.field public static final enum V20:Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

.field public static final enum V21:Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    const-string v1, "V20"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;->V20:Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    .line 5
    new-instance v1, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    const-string v3, "V21"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;->V21:Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    .line 6
    new-instance v3, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    const-string v5, "NA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;->NA:Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    const/4 v5, 0x3

    .line 3
    new-array v5, v5, [Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;->$VALUES:[Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;->$VALUES:[Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    invoke-virtual {v0}, [Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/ads/gmascar/finder/ScarAdapterVersion;

    return-object v0
.end method
