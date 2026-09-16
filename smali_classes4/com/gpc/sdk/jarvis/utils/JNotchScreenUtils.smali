.class public final Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils;
.super Ljava/lang/Object;
.source "JNotchScreenUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils;",
        "",
        "()V",
        "Companion",
        "Jarvis-Utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;

.field public static final TAG:Ljava/lang/String; = "NotchScreenUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils;->Companion:Lcom/gpc/sdk/jarvis/utils/JNotchScreenUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
