.class public Lcom/gpc/sdk/misc/k$b;
.super Lcom/gpc/sdk/misc/k$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/k;->unregisterDevice(Ljava/lang/String;Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;

.field public final synthetic c:Lcom/gpc/sdk/misc/k;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/k;Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/k$b;->c:Lcom/gpc/sdk/misc/k;

    iput-object p2, p0, Lcom/gpc/sdk/misc/k$b;->b:Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/misc/k$d;-><init>(Lcom/gpc/sdk/misc/k;Lcom/gpc/sdk/misc/k$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/k$b;->b:Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;->onDeviceUnregistrationFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/k$b;->b:Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;

    .line 3
    const-string v1, "211103"

    const-string v2, "20"

    invoke-static {v1, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;->onDeviceUnregistrationFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public b(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/k$b;->b:Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;

    .line 2
    const-string v1, "211102"

    const-string v2, "32"

    invoke-static {v1, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;->onDeviceUnregistrationFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public c(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/k$b;->b:Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;

    .line 2
    const-string v1, "211101"

    const-string v2, "10"

    invoke-static {v1, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;->onDeviceUnregistrationFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
