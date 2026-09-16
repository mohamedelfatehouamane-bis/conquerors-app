.class public Lcom/gpc/i18n/I18NHelper;
.super Ljava/lang/Object;
.source "I18NHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "I18NHelper"

.field private static final gameLanguageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultGameId:Ljava/lang/String; = ""

.field private static sForceJson:Lorg/json/JSONObject; = null

.field private static sForceLanguageCode:Ljava/lang/String; = ""

.field private static sJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/i18n/I18NHelper;->gameLanguageMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(Landroid/content/Context;)V
    .locals 8

    const-string v0, "default resource:"

    const-string v1, "force resource:"

    const-string v2, "default force resource:"

    const-string v3, "default force init:"

    const-string v4, "default init:"

    const-string v5, "force init:"

    .line 86
    const-string v6, "I18NHelper"

    if-nez p0, :cond_0

    .line 87
    const-string p0, "i18n check context is null"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_0
    sget-object v7, Lcom/gpc/i18n/I18NHelper;->sForceLanguageCode:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gpc/i18n/I18NHelper;->sForceLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sForceLanguageCode:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/gpc/i18n/I18NHelper;->loadResourceByLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gpc/i18n/I18NHelper;->sForceJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    :cond_1
    sget-object v1, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const-string p0, "please init operations sdk!"

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_2
    sget-object v1, Lcom/gpc/i18n/I18NHelper;->gameLanguageMap:Ljava/util/Map;

    sget-object v5, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 113
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p0, v1}, Lcom/gpc/i18n/I18NHelper;->loadResourceByLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gpc/i18n/I18NHelper;->sJson:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v1, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/gpc/i18n/I18NHelper;->loadResourceByLanguageCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gpc/i18n/I18NHelper;->sJson:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static clearGameLanguage(Landroid/content/Context;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->gameLanguageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    invoke-static {p0}, Lcom/gpc/i18n/I18NHelper;->check(Landroid/content/Context;)V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/gpc/i18n/I18NHelper;->sJson:Lorg/json/JSONObject;

    .line 77
    sput-object v0, Lcom/gpc/i18n/I18NHelper;->sForceJson:Lorg/json/JSONObject;

    return-void
.end method

.method public static forceI18N(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 162
    sput-object p1, Lcom/gpc/i18n/I18NHelper;->sForceLanguageCode:Ljava/lang/String;

    .line 163
    invoke-static {p0}, Lcom/gpc/i18n/I18NHelper;->check(Landroid/content/Context;)V

    return-void
.end method

.method public static getCurrentI18NItem()Lcom/gpc/i18n/I18NItem;
    .locals 3

    .line 140
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sForceLanguageCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sForceLanguageCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/i18n/I18NItem;->getItemByLocale(Ljava/lang/String;)Lcom/gpc/i18n/I18NItem;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->gameLanguageMap:Ljava/util/Map;

    sget-object v1, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-static {v0}, Lcom/gpc/i18n/I18NItem;->getItemByLocale(Ljava/lang/String;)Lcom/gpc/i18n/I18NItem;

    move-result-object v0

    return-object v0

    .line 148
    :cond_1
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->verifyGameId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    sget-object v0, Lcom/gpc/i18n/I18NItem;->EN:Lcom/gpc/i18n/I18NItem;

    return-object v0

    .line 151
    :cond_2
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/gpc/i18n/I18NItem;->getItemByCode(Ljava/lang/String;)Lcom/gpc/i18n/I18NItem;

    move-result-object v0

    return-object v0
.end method

.method private static getResourceFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 262
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 263
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const-string p0, ""

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 216
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sForceLanguageCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "please init i18n!"

    const-string v3, "I18NHelper"

    if-nez v0, :cond_1

    .line 217
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sForceJson:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 218
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 221
    :cond_0
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 223
    :cond_1
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sJson:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 224
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 227
    :cond_2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 237
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sForceLanguageCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "please init i18n!"

    const-string v3, "I18NHelper"

    if-nez v0, :cond_1

    .line 238
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sForceJson:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 239
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 242
    :cond_0
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_1
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->sJson:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 246
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 249
    :cond_2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 250
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 70
    sput-object p1, Lcom/gpc/i18n/I18NHelper;->sDefaultGameId:Ljava/lang/String;

    .line 71
    invoke-static {p0}, Lcom/gpc/i18n/I18NHelper;->check(Landroid/content/Context;)V

    return-void
.end method

.method private static loadResourceByLanguageCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 196
    invoke-static {p1}, Lcom/gpc/i18n/I18NHelper;->verifyGameId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    sget-object p1, Lcom/gpc/i18n/I18NItem;->EN:Lcom/gpc/i18n/I18NItem;

    invoke-virtual {p1}, Lcom/gpc/i18n/I18NItem;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gpc/i18n/I18NHelper;->getResourceFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x6

    .line 200
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static {p1}, Lcom/gpc/i18n/I18NItem;->getItemByCode(Ljava/lang/String;)Lcom/gpc/i18n/I18NItem;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/gpc/i18n/I18NItem;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gpc/i18n/I18NHelper;->getResourceFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object p1, Lcom/gpc/i18n/I18NItem;->EN:Lcom/gpc/i18n/I18NItem;

    invoke-virtual {p1}, Lcom/gpc/i18n/I18NItem;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gpc/i18n/I18NHelper;->getResourceFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private static loadResourceByLocale(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    invoke-static {p1}, Lcom/gpc/i18n/I18NItem;->getItemByLocale(Ljava/lang/String;)Lcom/gpc/i18n/I18NItem;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/gpc/i18n/I18NItem;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gpc/i18n/I18NHelper;->getResourceFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object p1, Lcom/gpc/i18n/I18NItem;->EN:Lcom/gpc/i18n/I18NItem;

    invoke-virtual {p1}, Lcom/gpc/i18n/I18NItem;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gpc/i18n/I18NHelper;->getResourceFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static putGameLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->gameLanguageMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {p0}, Lcom/gpc/i18n/I18NHelper;->check(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static removeGameLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/gpc/i18n/I18NHelper;->gameLanguageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p0}, Lcom/gpc/i18n/I18NHelper;->check(Landroid/content/Context;)V

    return-void
.end method

.method private static verifyGameId(Ljava/lang/String;)Z
    .locals 3

    .line 170
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
