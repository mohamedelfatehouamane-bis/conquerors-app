.class public Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$b;
.super Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$ModulesCompatProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$b;->a:Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    invoke-direct {p0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$ModulesCompatProxy;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$b;-><init>(Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;)V

    return-void
.end method


# virtual methods
.method public getGuestDeviceId()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule$ModulesCompatProxy;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    const-string v0, "FIRST_OPEN"

    return-object v0
.end method
