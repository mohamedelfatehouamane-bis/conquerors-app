.class public Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->showPanel(Landroid/content/Context;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;

.field public final synthetic b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$a;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;

    iput-object p2, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$a;->a:Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$a;->a:Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;->onClose()V

    :cond_0
    return-void
.end method
