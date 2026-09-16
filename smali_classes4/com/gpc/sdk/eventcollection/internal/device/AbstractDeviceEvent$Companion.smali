.class public final Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getESCALATION()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->access$getESCALATION$cp()Lcom/gpc/sdk/eventcollection/bean/GPCEventEscalation;

    move-result-object v0

    return-object v0
.end method

.method public final getIMPORTANCE()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/device/AbstractDeviceEvent;->access$getIMPORTANCE$cp()Lcom/gpc/sdk/eventcollection/bean/GPCEventImportance;

    move-result-object v0

    return-object v0
.end method
