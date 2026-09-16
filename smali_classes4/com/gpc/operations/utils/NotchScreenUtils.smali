.class public final Lcom/gpc/operations/utils/NotchScreenUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/utils/NotchScreenUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/utils/NotchScreenUtils$Companion;

.field public static final TAG:Ljava/lang/String; = ""

.field private static isAdaptiveNotchScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/utils/NotchScreenUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/utils/NotchScreenUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/utils/NotchScreenUtils;->Companion:Lcom/gpc/operations/utils/NotchScreenUtils$Companion;

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/gpc/operations/utils/NotchScreenUtils;->isAdaptiveNotchScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isAdaptiveNotchScreen$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/gpc/operations/utils/NotchScreenUtils;->isAdaptiveNotchScreen:Z

    return v0
.end method

.method public static final synthetic access$setAdaptiveNotchScreen$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/gpc/operations/utils/NotchScreenUtils;->isAdaptiveNotchScreen:Z

    return-void
.end method
