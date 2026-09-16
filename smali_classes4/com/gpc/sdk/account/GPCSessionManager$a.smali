.class public Lcom/gpc/sdk/account/GPCSessionManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCSessionManager;->onPreInit(Landroid/content/Context;Lcom/gpc/sdk/GPCConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCSessionManager;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCSessionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSessionManager$a;->a:Lcom/gpc/sdk/account/GPCSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
    .locals 1

    .line 1
    const-string p1, "GPCSessionManager"

    const-string v0, "notifySessionExpired"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/account/GPCSessionManager$a;->a:Lcom/gpc/sdk/account/GPCSessionManager;

    invoke-static {p1}, Lcom/gpc/sdk/account/GPCSessionManager;->access$000(Lcom/gpc/sdk/account/GPCSessionManager;)V

    return-void
.end method
