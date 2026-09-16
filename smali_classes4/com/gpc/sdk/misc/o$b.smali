.class public Lcom/gpc/sdk/misc/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/misc/o;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/o$b;->a:Lcom/gpc/sdk/misc/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceUnregistrationFinished(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/misc/o$b;->a:Lcom/gpc/sdk/misc/o;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/misc/o;->a(I)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/misc/o$b;->a:Lcom/gpc/sdk/misc/o;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1, v1, v1, v1, v0}, Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/o$b;->a:Lcom/gpc/sdk/misc/o;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/misc/o;->a(I)V

    return-void
.end method
