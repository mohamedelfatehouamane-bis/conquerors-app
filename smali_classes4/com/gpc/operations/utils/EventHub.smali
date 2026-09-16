.class public final Lcom/gpc/operations/utils/EventHub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/utils/EventHub$Companion;,
        Lcom/gpc/operations/utils/EventHub$OnEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_MODULE_NOTICE_COUNT_UPDATE:Ljava/lang/String; = "ACTION_MODULE_NOTICE_COUNT_UPDATE"

.field public static final ACTION_MODULE_PRE_CLOSE:Ljava/lang/String; = "ACTION_MODULE_PRE_CLOSE"

.field public static final ACTION_NOTICE_HUB_TRIGGER:Ljava/lang/String; = "ACTION_NOTICE_HUB_TRIGGER"

.field public static final ACTION_PANEL_CLOSE:Ljava/lang/String; = "ACTION_PANEL_CLOSE"

.field public static final ACTION_WEB_APP_NOTIFICATION:Ljava/lang/String; = "ACTION_WEB_APP_NOTIFICATION"

.field public static final Companion:Lcom/gpc/operations/utils/EventHub$Companion;

.field public static final TAG:Ljava/lang/String; = "EventHub"

.field private static final linsteners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/operations/utils/EventHub$OnEventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/utils/EventHub$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/utils/EventHub$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/utils/EventHub;->Companion:Lcom/gpc/operations/utils/EventHub$Companion;

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/gpc/operations/utils/EventHub;->linsteners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLinsteners$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/utils/EventHub;->linsteners:Ljava/util/Map;

    return-object v0
.end method
