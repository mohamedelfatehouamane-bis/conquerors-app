.class public final Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel$Companion;
.super Ljava/lang/Object;
.source "JLogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel$Companion;",
        "",
        "()V",
        "createFromLogType",
        "Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;",
        "logType",
        "",
        "Jarvis-Utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromLogType(I)Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 27
    sget-object p1, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->CRUCIAL:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    return-object p1

    .line 26
    :pswitch_0
    sget-object p1, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->CRUCIAL:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    return-object p1

    .line 25
    :pswitch_1
    sget-object p1, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->CRUCIAL:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    return-object p1

    .line 24
    :pswitch_2
    sget-object p1, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->IMPORTANT:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    return-object p1

    .line 23
    :pswitch_3
    sget-object p1, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->IMPORTANT:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    return-object p1

    .line 22
    :pswitch_4
    sget-object p1, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->BASIC:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    return-object p1

    .line 21
    :pswitch_5
    sget-object p1, Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;->BASIC:Lcom/gpc/sdk/jarvis/utils/log/bean/JLogLevel;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
