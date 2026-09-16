.class public Lcom/gpc/sdk/payment/service/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/service/b;->getApprovalAppNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;

.field public final synthetic b:Lcom/gpc/sdk/payment/service/b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/service/b;Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$j;->b:Lcom/gpc/sdk/payment/service/b;

    iput-object p2, p0, Lcom/gpc/sdk/payment/service/b$j;->a:Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$j;->a:Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/service/listener/ApprovalAppNotifyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
