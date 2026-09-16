.class public Lcom/gpc/util/Currency;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

.method public static getCurrency(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    .line 3
    const-string v1, "AS"

    const-string v2, "USD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "CN"

    const-string v2, "RMB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "ES"

    const-string v2, "EUR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "TW"

    const-string v2, "TWD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "BR"

    const-string v2, "BRL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "MX"

    const-string v2, "MXN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "TH"

    const-string v2, "THB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "RU"

    const-string v2, "RUB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "JP"

    const-string v2, "JPY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "KR"

    const-string v2, "KRW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "ID"

    const-string v2, "IDR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "VN"

    const-string v2, "VND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "AE"

    const-string v2, "AED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "QA"

    const-string v2, "QAR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "EG"

    const-string v2, "EGP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "IN"

    const-string v2, "INR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "SG"

    const-string v2, "SGD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "CA"

    const-string v2, "CAD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "GB"

    const-string v2, "GBP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "AU"

    const-string v2, "AUD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "MO"

    const-string v2, "MOP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "PH"

    const-string v2, "PHP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "CO"

    const-string v2, "COP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    const-string v1, "MY"

    const-string v2, "MYR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    sget-object v0, Lcom/gpc/util/Currency;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
