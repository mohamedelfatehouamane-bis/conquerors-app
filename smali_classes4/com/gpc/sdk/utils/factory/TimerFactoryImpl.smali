.class public Lcom/gpc/sdk/utils/factory/TimerFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/factory/ITimerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTimerModule()Lcom/gpc/sdk/service/appconf/LoadAppConfigFormServerRunnable$TimerModule;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/util/TimerModuleImpl;

    invoke-direct {v0}, Lcom/gpc/util/TimerModuleImpl;-><init>()V

    return-object v0
.end method
