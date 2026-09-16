.class public Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/gpc/sdk/payment/bean/GPCRepaymentItem;->a:I

    return-void
.end method
