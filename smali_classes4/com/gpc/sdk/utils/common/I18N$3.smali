.class Lcom/gpc/sdk/utils/common/I18N$3;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/common/I18N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/gpc/sdk/utils/common/I18N$GameLanguage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v1, "en"

    const-string v2, "English"

    invoke-direct {v0, v1, v2, v1}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "01"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "\u7e41\u9ad4\u4e2d\u6587"

    const-string v4, "zh-tw"

    const-string v5, "zh-TW"

    invoke-direct {v0, v5, v3, v4}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "02"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "ph"

    invoke-direct {v0, v1, v2, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "03"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "us"

    invoke-direct {v0, v1, v2, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "04"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "de"

    const-string v4, "Deutsch"

    invoke-direct {v0, v3, v4, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "05"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "fr"

    const-string v4, "Fran\u00e7ais"

    invoke-direct {v0, v3, v4, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "06"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "ru"

    const-string v4, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    invoke-direct {v0, v3, v4, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "07"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "ja"

    const-string v4, "\u65e5\u672c\u8a9e"

    invoke-direct {v0, v3, v4, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "08"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "Espa\u00f1ol"

    const-string v4, "es"

    invoke-direct {v0, v4, v3, v4}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "09"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "th"

    const-string v5, "\u0e44\u0e17\u0e22"

    invoke-direct {v0, v3, v5, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "10"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "id"

    const-string v5, "Indonesia"

    invoke-direct {v0, v3, v5, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "11"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "it"

    const-string v5, "Italiano"

    invoke-direct {v0, v3, v5, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "12"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "ko"

    const-string v5, "\ud55c\uad6c\uc5b4"

    invoke-direct {v0, v3, v5, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "13"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "ms"

    const-string v5, "Bahasa Malaysia"

    invoke-direct {v0, v3, v5, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "14"

    invoke-virtual {p0, v3, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v3, "vi"

    const-string v5, "Ti\u1ebfng Vi\u1ec7t"

    invoke-direct {v0, v3, v5, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "15"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "tr"

    const-string v7, "T\u00fcrk\u00e7e"

    invoke-direct {v0, v6, v7, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "16"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "pt"

    const-string v7, "Portugu\u00eas"

    invoke-direct {v0, v6, v7, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "17"

    invoke-virtual {p0, v8, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v8, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    const-string v9, "arb"

    const-string v10, "ar"

    invoke-direct {v0, v10, v8, v9}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "18"

    invoke-virtual {p0, v8, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v8, "\u7b80\u4f53\u4e2d\u6587"

    const-string v9, "zh-cn"

    const-string v10, "zh-CN"

    invoke-direct {v0, v10, v8, v9}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "19"

    invoke-virtual {p0, v8, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v8, "in"

    invoke-direct {v0, v1, v2, v8}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "20"

    invoke-virtual {p0, v8, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v8, "eu"

    invoke-direct {v0, v1, v2, v8}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "21"

    invoke-virtual {p0, v8, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    invoke-direct {v0, v6, v7, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "22"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "cs"

    const-string v7, "\u010de\u0161tina"

    invoke-direct {v0, v6, v7, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "23"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "uk"

    const-string v7, "\u0443\u043a\u0440\u0430\u0457\u043d\u044c\u0441\u043a\u0430"

    invoke-direct {v0, v6, v7, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "24"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "ro"

    const-string v7, "limba rom\u00e2n\u0103"

    invoke-direct {v0, v6, v7, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "25"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "pl"

    const-string v7, "Polski"

    invoke-direct {v0, v6, v7, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "26"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "nl"

    const-string v7, "Nederlands"

    invoke-direct {v0, v6, v7, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "27"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "ir"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "28"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "da"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "29"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "bg"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "30"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "hu"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "31"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "no"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "32"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "el"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "33"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "sk"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "34"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "sv"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "35"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "fi"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "36"

    invoke-virtual {p0, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v6, "ur"

    invoke-direct {v0, v1, v2, v6}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "37"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    const-string v1, "Espa\u00f1ol(LATAM)"

    const-string v2, "es_co"

    invoke-direct {v0, v4, v1, v2}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "38"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;

    invoke-direct {v0, v3, v5, v3}, Lcom/gpc/sdk/utils/common/I18N$GameLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "39"

    invoke-virtual {p0, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
