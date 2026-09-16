.class public abstract Lcom/gpc/sdk/push/GPCPushMessageHandler;
.super Lcom/gpc/sdk/misc/f;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "GPCPushMessageHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gpc/sdk/misc/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/gpc/sdk/misc/f;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;I)Lcom/gpc/sdk/push/GPCPushMessage;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/gpc/sdk/push/GPCPushMessage;->create(Landroid/os/Bundle;I)Lcom/gpc/sdk/push/GPCPushMessage;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;I)Lcom/gpc/sdk/push/GPCPushMessage;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/gpc/sdk/push/GPCPushMessage;->create(Landroid/os/Bundle;I)Lcom/gpc/sdk/push/GPCPushMessage;

    move-result-object p1

    return-object p1
.end method

.method public handle(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "GPCPushMessageHandler:onMessage"

    const-string v1, "GPCPushMessageHandler"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/misc/f;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 4
    const-string v0, "context is null!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "context is not null!"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 10
    iget v0, p0, Lcom/gpc/sdk/misc/f;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/push/GPCPushMessageHandler;->b(Landroid/os/Bundle;I)Lcom/gpc/sdk/push/GPCPushMessage;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/misc/f;->a(Lcom/gpc/sdk/push/GPCPushMessage;)V

    return-void
.end method
