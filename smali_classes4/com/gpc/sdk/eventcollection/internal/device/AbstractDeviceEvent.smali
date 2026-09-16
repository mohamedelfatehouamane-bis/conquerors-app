.class public abstract Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;

.field private static final ESCALATION:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

.field private static final IMPORTANCE:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

.field private static final TAG:Ljava/lang/String; = "AbstractDeviceEvent"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->Companion:Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;->LEVEL_2:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->ESCALATION:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    .line 2
    sget-object v0, Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;->CRUCIAL:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->IMPORTANCE:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getESCALATION$cp()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->ESCALATION:Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    return-object v0
.end method

.method public static final synthetic access$getIMPORTANCE$cp()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->IMPORTANCE:Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    return-object v0
.end method


# virtual methods
.method public abstract eventName()Ljava/lang/String;
.end method

.method public generate(Landroid/app/Activity;)Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;
    .locals 2

    .line 1
    const-string v0, "AbstractDeviceEvent"

    const-string v1, "generate"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->value(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->eventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public generateByCondition(Landroid/app/Activity;)Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;
    .locals 2

    .line 1
    const-string v0, "AbstractDeviceEvent"

    const-string v1, "generateByCondition"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->value(Landroid/app/Activity;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->shouldGenerate(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;

    invoke-virtual {p0}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->eventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gpc/sdk/eventcollection/internal/bean/GPCInternalEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->context:Landroid/content/Context;

    return-object v0
.end method

.method public sdksParts()Lorg/json/JSONArray;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->contextModule()Lcom/gpc/sdk/utils/modules/ContextModule;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ContextModule;->getSDKMeta()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/gpc/sdk/utils/common/SDKMetaUtil;->getJson(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2
    const-string v1, "sdks"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract shouldGenerate(Lorg/json/JSONObject;)Z
.end method

.method public abstract update(Lorg/json/JSONObject;)V
.end method

.method public abstract value(Landroid/app/Activity;)Lorg/json/JSONObject;
.end method
