.class public Lcom/gpc/tsh/bridge/RepaymentV3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/RepaymentCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/bridge/RepaymentV3;->init(Landroid/app/Activity;Lcom/gpc/tsh/bridge/OnBridgeRepaymentInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/bridge/RepaymentV3;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/bridge/RepaymentV3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/bridge/RepaymentV3$b;->a:Lcom/gpc/tsh/bridge/RepaymentV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/base/CompatProxyManager;->sharedInstance()Lcom/gpc/operations/base/CompatProxyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
