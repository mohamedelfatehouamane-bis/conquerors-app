.class public Lcom/gpc/operations/OperationsSDK$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/OperationsSDK;->contactCustomerServiceWithPayload(Landroid/app/Activity;Ljava/util/Map;Lcom/gpc/operations/listener/ContactCustomerServiceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/gpc/operations/listener/ContactCustomerServiceListener;

.field public final synthetic c:Lcom/gpc/operations/compact/OperationsCompatProxy;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lcom/gpc/operations/OperationsSDK;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/OperationsSDK;Landroid/app/Activity;Lcom/gpc/operations/listener/ContactCustomerServiceListener;Lcom/gpc/operations/compact/OperationsCompatProxy;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iput-object p2, p0, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gpc/operations/OperationsSDK$d;->b:Lcom/gpc/operations/listener/ContactCustomerServiceListener;

    iput-object p4, p0, Lcom/gpc/operations/OperationsSDK$d;->c:Lcom/gpc/operations/compact/OperationsCompatProxy;

    iput-object p5, p0, Lcom/gpc/operations/OperationsSDK$d;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "get web sso token error."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OperationsSDK"

    invoke-static {p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object p1, p1, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    iget-object p2, p0, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/gpc/tsh/TSHybrid;->showPanel(Landroid/app/Activity;)V

    .line 4
    iget-object p1, p0, Lcom/gpc/operations/OperationsSDK$d;->b:Lcom/gpc/operations/listener/ContactCustomerServiceListener;

    const-string p2, "90000002"

    const-string v0, "get webssotoken error!"

    invoke-static {p2, v0}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/operations/listener/ContactCustomerServiceListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lcom/gpc/operations/service/CSServiceImpl;

    invoke-direct {p1}, Lcom/gpc/operations/service/CSServiceImpl;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDK$d;->c:Lcom/gpc/operations/compact/OperationsCompatProxy;

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/OperationsSDK$d$a;

    invoke-direct {v1, p0}, Lcom/gpc/operations/OperationsSDK$d$a;-><init>(Lcom/gpc/operations/OperationsSDK$d;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/gpc/operations/service/CSServiceImpl;->gotoForward(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/service/OnGotoForwardResultCallback;)V

    return-void
.end method
