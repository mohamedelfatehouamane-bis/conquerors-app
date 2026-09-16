.class Lcom/gpc/sdk/payment/utils/PaymentConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/utils/PaymentLocalize;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a(I)Lcom/gpc/sdk/payment/utils/PaymentLocalize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

.field final synthetic val$itemType:I


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/utils/PaymentConfiguration;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration$1;->this$0:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    iput p2, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration$1;->val$itemType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameItemDefaultPriceTagText()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration$1;->val$itemType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration$1;->this$0:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/utils/PaymentConfiguration$1;->this$0:Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
