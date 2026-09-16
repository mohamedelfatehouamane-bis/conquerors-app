.class public Lcom/gpc/operations/migrate/account/SessionManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/notification/NotificationCenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/account/SessionManager;->onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/migrate/account/SessionManager;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/account/SessionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/account/SessionManager$a;->a:Lcom/gpc/operations/migrate/account/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lcom/gpc/operations/migrate/notification/Notification;)V
    .locals 1

    .line 1
    const-string p1, "SessionManager"

    const-string v0, "notifySessionExpired"

    invoke-static {p1, v0}, Lcom/gpc/operations/migrate/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/gpc/operations/migrate/account/SessionManager$a;->a:Lcom/gpc/operations/migrate/account/SessionManager;

    invoke-static {p1}, Lcom/gpc/operations/migrate/account/SessionManager;->access$000(Lcom/gpc/operations/migrate/account/SessionManager;)V

    return-void
.end method
