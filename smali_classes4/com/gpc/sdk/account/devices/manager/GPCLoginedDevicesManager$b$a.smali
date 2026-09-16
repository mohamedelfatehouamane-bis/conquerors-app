.class public Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b$a;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;

    iput-object p2, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "GPCLoginedDevicesManager"

    const-string v1, "showPanel show"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b$a;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;

    iget-object v0, v0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;

    iget-object v1, v0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a:Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;

    iget-object v2, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;)Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b$a;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;

    iget-object v3, v3, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager$b;->b:Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;

    invoke-static {v3}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->a(Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;)Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManagerCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/gpc/sdk/account/devices/manager/LoginedDevicesManagerPanel;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
