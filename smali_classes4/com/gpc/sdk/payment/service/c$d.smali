.class public Lcom/gpc/sdk/payment/service/c$d;
.super Lcom/gpc/sdk/payment/service/c$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/c;->getApprovalAppNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;

.field public final synthetic c:Lcom/gpc/sdk/payment/service/c;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/c;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/c$d;->c:Lcom/gpc/sdk/payment/service/c;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/c$d;->b:Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;

    invoke-direct {p0}, Lcom/gpc/sdk/payment/service/c$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/c$d;->b:Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public a(ILorg/json/JSONObject;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/payment/service/c$d;->b:Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/payment/service/c$d;->b:Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
