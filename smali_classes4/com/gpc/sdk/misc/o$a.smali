.class public Lcom/gpc/sdk/misc/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/push/service/DeviceRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/gpc/sdk/misc/o;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/misc/o$a;->d:Lcom/gpc/sdk/misc/o;

    iput-object p2, p0, Lcom/gpc/sdk/misc/o$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/misc/o$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/sdk/misc/o$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceRegistrationFinished(Lcom/gpc/sdk/error/GPCException;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/misc/o$a;->d:Lcom/gpc/sdk/misc/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/misc/o;->a(I)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/misc/o$a;->d:Lcom/gpc/sdk/misc/o;

    iget-object v0, p0, Lcom/gpc/sdk/misc/o$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/sdk/misc/o$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/misc/o$a;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/gpc/sdk/misc/o;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/gpc/util/DeviceUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/gpc/sdk/misc/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/o$a;->d:Lcom/gpc/sdk/misc/o;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/misc/o;->a(I)V

    return-void
.end method
