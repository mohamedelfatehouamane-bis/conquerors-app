.class public final Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/eventcollection/internal/trigger/Trigger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger$Companion;

.field private static final TAG:Ljava/lang/String; = "DeviceEventTrigger"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger;->Companion:Lcom/gpc/sdk/eventcollection/internal/trigger/DeviceEventTrigger$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flushed(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)V
    .locals 1

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public shouldFlush(Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;)Z
    .locals 2

    const-string v0, "packet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "event.name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceEventTrigger"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk.device"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/EventPacket;->getEvent()Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/eventcollection/internal/bean/RawEvent;->getName()Ljava/lang/String;

    move-result-object p1

    .line 4
    const-string v0, "sdk.device.detailed"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
