.class public Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->e:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iput-object p2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launching in-app purchase flow. Replace old SKU? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingManager"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;

    invoke-direct {v1, p0, v0}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d$a;-><init>(Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;Ljava/util/List;)V

    .line 25
    iget-object v2, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->e:Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;

    iget-object v3, p0, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager;->a(Ljava/lang/String;Ljava/util/List;Lcom/gpc/tsh/pay/flow/client/google/billing/BillingManager$SkusDetailsResponseListener;)V

    return-void
.end method
