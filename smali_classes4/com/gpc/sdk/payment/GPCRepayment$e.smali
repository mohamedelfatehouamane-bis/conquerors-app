.class public Lcom/gpc/sdk/payment/GPCRepayment$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/GPCRepayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCProduct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gpc/sdk/payment/GPCRepayment$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/gpc/sdk/payment/GPCRepayment$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCProduct;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCRepayment$e;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/payment/bean/GPCProduct;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCRepayment$e;->a:Ljava/util/List;

    return-void
.end method
