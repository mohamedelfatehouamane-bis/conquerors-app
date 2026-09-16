.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/service/listener/GPCCheckSubscriptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "121304"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 5
    const-string v1, "120414"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getSubscriptionPayload()Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    move-result-object v2

    :cond_0
    invoke-interface {p1, v0, v1, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;->onIGGSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 9
    :cond_1
    const-string v1, "120415"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getSubscriptionPayload()Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    move-result-object v2

    :cond_2
    invoke-interface {p1, v0, v1, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;->onIGGSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 13
    :cond_3
    const-string v1, "120416"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getSubscriptionPayload()Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    move-result-object v2

    :cond_4
    invoke-interface {v0, p1, v1, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;->onHasSubscribedByIggId(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 17
    :cond_5
    const-string v1, "120417"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v1

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getSubscriptionPayload()Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    move-result-object v2

    :cond_6
    invoke-interface {p1, v0, v1, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;->onIGGSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 21
    :cond_7
    const-string v1, "120418"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v1

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getSubscriptionPayload()Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    move-result-object v2

    :cond_8
    invoke-interface {p1, v0, v1, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;->onIGGSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 25
    :cond_9
    const-string v1, "120431"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "120432"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "120433"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "120434"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "120435"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V

    return-void

    .line 32
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->c:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCGameItem;

    move-result-object v1

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;->getSubscriptionPayload()Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;

    move-result-object v2

    :cond_c
    invoke-interface {p1, v0, v1, v2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;->onIGGSubscriptionShouldMakeRecurringPaymentsInstead(Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCGameItem;Lcom/gpc/sdk/payment/bean/GPCSubscriptionPayload;)V

    return-void

    .line 43
    :cond_d
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$b;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment$OnCheckSubscriptionListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/service/bean/GPCCheckSubscriptionResult;)V

    return-void
.end method
