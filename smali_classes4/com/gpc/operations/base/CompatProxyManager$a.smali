.class public Lcom/gpc/operations/base/CompatProxyManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/base/CompatProxyManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/base/CompatProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/base/CompatProxyManager;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/CompatProxyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/CompatProxyManager$a;->a:Lcom/gpc/operations/base/CompatProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/operations/compact/OperationsCompatProxy;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/i18n/I18NHelper;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
