.class public final Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

.field public static final TAG:Ljava/lang/String; = "SDKEventHelper"

.field private static collection:Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

.field private static final pendingSendEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/utils/common/eventcollection/PendingSendEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->pendingSendEvents:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCollection$cp()Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->collection:Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    return-object v0
.end method

.method public static final synthetic access$getPendingSendEvents$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->pendingSendEvents:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$setCollection$cp(Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->collection:Lcom/gpc/sdk/eventcollection/internal/GPCInternalEventCollection;

    return-void
.end method
