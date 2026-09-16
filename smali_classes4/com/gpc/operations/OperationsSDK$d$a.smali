.class public Lcom/gpc/operations/OperationsSDK$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/OnGotoForwardResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/OperationsSDK$d;->onComplete(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/OperationsSDK$d;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/OperationsSDK$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/GotoForwardResult;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, "90000001"

    const-string v2, "OperationsSDK"

    if-eqz v0, :cond_1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "goto forward error."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    iget-object v0, p2, Lcom/gpc/operations/OperationsSDK$d;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p2, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object v0, v0, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    iget-object p2, p2, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/gpc/tsh/TSHybrid;->showPanel(Landroid/app/Activity;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p2, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object v2, v2, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    iget-object p2, p2, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-virtual {v2, p2, v0}, Lcom/gpc/tsh/TSHybrid;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;)V

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    iget-object p2, p2, Lcom/gpc/operations/OperationsSDK$d;->b:Lcom/gpc/operations/listener/ContactCustomerServiceListener;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "contactCustomerService on query cs/goto/forward. error:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/operations/listener/ContactCustomerServiceListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    :cond_1
    if-eqz p2, :cond_7

    .line 11
    invoke-virtual {p2}, Lcom/gpc/operations/service/bean/GotoForwardResult;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 21
    :cond_2
    invoke-virtual {p2}, Lcom/gpc/operations/service/bean/GotoForwardResult;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LiveChat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    iget-object p2, p1, Lcom/gpc/operations/OperationsSDK$d;->d:Ljava/util/Map;

    if-nez p2, :cond_3

    .line 23
    iget-object p2, p1, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object p2, p2, Lcom/gpc/operations/OperationsSDK;->liveChat:Lcom/gpc/livechat/LiveChat;

    iget-object p1, p1, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-interface {p2, p1}, Lcom/gpc/livechat/LiveChat;->showPanel(Landroid/app/Activity;)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object v0, p1, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object v0, v0, Lcom/gpc/operations/OperationsSDK;->liveChat:Lcom/gpc/livechat/LiveChat;

    iget-object p1, p1, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-interface {v0, p1, p2}, Lcom/gpc/livechat/LiveChat;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;)V

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    iget-object p1, p1, Lcom/gpc/operations/OperationsSDK$d;->b:Lcom/gpc/operations/listener/ContactCustomerServiceListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/operations/listener/ContactCustomerServiceListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void

    .line 30
    :cond_4
    invoke-virtual {p2}, Lcom/gpc/operations/service/bean/GotoForwardResult;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TSH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 31
    iget-object p1, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    iget-object p2, p1, Lcom/gpc/operations/OperationsSDK$d;->d:Ljava/util/Map;

    if-nez p2, :cond_5

    .line 32
    iget-object p2, p1, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object p2, p2, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    iget-object p1, p1, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/gpc/tsh/TSHybrid;->showPanel(Landroid/app/Activity;)V

    goto :goto_2

    .line 34
    :cond_5
    iget-object v0, p1, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object v0, v0, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    iget-object p1, p1, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/tsh/TSHybrid;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;)V

    .line 36
    :goto_2
    iget-object p1, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    iget-object p1, p1, Lcom/gpc/operations/OperationsSDK$d;->b:Lcom/gpc/operations/listener/ContactCustomerServiceListener;

    invoke-static {}, Lcom/gpc/operations/migrate/error/GPCException;->noneException()Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/operations/listener/ContactCustomerServiceListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_6
    return-void

    .line 37
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    iget-object v0, p2, Lcom/gpc/operations/OperationsSDK$d;->d:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 38
    iget-object v0, p2, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object v0, v0, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    iget-object p2, p2, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-virtual {v0, p2}, Lcom/gpc/tsh/TSHybrid;->showPanel(Landroid/app/Activity;)V

    goto :goto_4

    .line 40
    :cond_8
    iget-object v3, p2, Lcom/gpc/operations/OperationsSDK$d;->e:Lcom/gpc/operations/OperationsSDK;

    iget-object v3, v3, Lcom/gpc/operations/OperationsSDK;->tsHybrid:Lcom/gpc/tsh/TSHybrid;

    iget-object p2, p2, Lcom/gpc/operations/OperationsSDK$d;->a:Landroid/app/Activity;

    invoke-virtual {v3, p2, v0}, Lcom/gpc/tsh/TSHybrid;->showPanelWithPayload(Landroid/app/Activity;Ljava/util/Map;)V

    .line 42
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "goto forward result error."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/gpc/operations/OperationsSDK$d$a;->a:Lcom/gpc/operations/OperationsSDK$d;

    iget-object p1, p1, Lcom/gpc/operations/OperationsSDK$d;->b:Lcom/gpc/operations/listener/ContactCustomerServiceListener;

    const-string p2, "server return lack of type params"

    invoke-static {v1, p2}, Lcom/gpc/operations/migrate/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/migrate/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/operations/listener/ContactCustomerServiceListener;->onComplete(Lcom/gpc/operations/migrate/error/GPCException;)V

    return-void
.end method
