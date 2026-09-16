.class public Lcom/gpc/sdk/payment/bean/GPCCurrency;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "GPCCurrency"

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/HashMap;
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

.method public static detectByCountry(Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;)Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;
    .locals 4

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->USD:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->TWD:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TW"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->BRL:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->MXN:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MX"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->THB:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->RUB:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->JPY:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->KRW:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->VND:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->IDR:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->RMB:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->EUR:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DE"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ES"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PT"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->AED:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->QAR:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->EGP:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->INR:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->SGD:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->CAD:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->GBP:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->AUD:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->MOP:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->PHP:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->COP:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->MYR:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MY"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->TRY:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->SAR:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->CZK:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CZ"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/util/DeviceUtil;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    return-object p0

    .line 43
    :cond_1
    invoke-static {v0}, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->valueOf(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->b:Ljava/util/HashMap;

    .line 3
    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;->TWD:Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NT$"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getISO4217DisplayName(Lcom/gpc/sdk/payment/bean/GPCCurrency$Currency;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCCurrency$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, "USD"

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 112
    :pswitch_0
    const-string p0, "CZK"

    return-object p0

    .line 113
    :pswitch_1
    const-string p0, "SAR"

    return-object p0

    .line 114
    :pswitch_2
    const-string p0, "TRY"

    return-object p0

    .line 115
    :pswitch_3
    const-string p0, "MYR"

    return-object p0

    .line 116
    :pswitch_4
    const-string p0, "COP"

    return-object p0

    .line 117
    :pswitch_5
    const-string p0, "PHP"

    return-object p0

    .line 118
    :pswitch_6
    const-string p0, "AUD"

    return-object p0

    .line 119
    :pswitch_7
    const-string p0, "MOP"

    return-object p0

    .line 120
    :pswitch_8
    const-string p0, "GBP"

    return-object p0

    .line 121
    :pswitch_9
    const-string p0, "CAD"

    return-object p0

    .line 122
    :pswitch_a
    const-string p0, "SGD"

    return-object p0

    .line 123
    :pswitch_b
    const-string p0, "INR"

    return-object p0

    .line 124
    :pswitch_c
    const-string p0, "EGP"

    return-object p0

    .line 125
    :pswitch_d
    const-string p0, "QAR"

    return-object p0

    .line 126
    :pswitch_e
    const-string p0, "AED"

    return-object p0

    .line 127
    :pswitch_f
    const-string p0, "VND"

    return-object p0

    .line 128
    :pswitch_10
    const-string p0, "IDR"

    return-object p0

    .line 129
    :pswitch_11
    const-string p0, "KRW"

    return-object p0

    .line 130
    :pswitch_12
    const-string p0, "JPY"

    return-object p0

    .line 131
    :pswitch_13
    const-string p0, "RUB"

    return-object p0

    .line 132
    :pswitch_14
    const-string p0, "THB"

    return-object p0

    .line 133
    :pswitch_15
    const-string p0, "MXN"

    return-object p0

    .line 134
    :pswitch_16
    const-string p0, "BRL"

    return-object p0

    .line 135
    :pswitch_17
    const-string p0, "TWD"

    return-object p0

    .line 136
    :pswitch_18
    const-string p0, "EUR"

    return-object p0

    .line 137
    :pswitch_19
    const-string p0, "CNY"

    return-object p0

    :pswitch_1a
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
