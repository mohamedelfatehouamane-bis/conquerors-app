.class public Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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

.field private quantity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/gpc/tsh/pay/bean/GPCRepaymentItem;->quantity:I

    return-void
.end method
