.class public Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillingPeriod"
.end annotation


# static fields
.field public static final e:Ljava/util/regex/Pattern;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->a:I

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->b:I

    return p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->c:I

    return p0
.end method

.method public static synthetic d(Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->d:I

    return p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;
    .locals 7

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;

    invoke-direct {v1}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;-><init>()V

    .line 5
    const-string v2, "-"

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, -0x1

    :cond_0
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 7
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    .line 9
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    if-eqz v5, :cond_2

    .line 11
    :cond_1
    invoke-static {p0, v2, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->a:I

    .line 12
    invoke-static {p0, v4, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->b:I

    .line 13
    invoke-static {p0, v5, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->c:I

    .line 14
    invoke-static {p0, v0, v3}, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->a(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result p0

    iput p0, v1, Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract$BillingPeriod;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 19
    const-string v0, "GPCGameItemPricingContract"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
