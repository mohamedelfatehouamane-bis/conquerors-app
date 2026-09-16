.class public Lcom/gpc/sdk/i18n/GPCI18NHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCI18NHelper"

.field private static sForceGameId:Ljava/lang/String; = ""

.field private static sForceJson:Lorg/json/JSONObject; = null

.field private static sForceLocale:Ljava/lang/String; = ""

.field private static sGameId:Ljava/lang/String; = ""

.field private static sJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceI18N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceGameId:Ljava/lang/String;

    .line 2
    sput-object p2, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceLocale:Ljava/lang/String;

    .line 3
    invoke-static {p0, p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getCurrentI18NItem()Lcom/gpc/sdk/i18n/GPCI18NItem;
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceLocale:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getItemByLocale(Ljava/lang/String;)Lcom/gpc/sdk/i18n/GPCI18NItem;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sGameId:Ljava/lang/String;

    invoke-static {v0}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->verifyGameId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NItem;->EN:Lcom/gpc/sdk/i18n/GPCI18NItem;

    return-object v0

    .line 7
    :cond_1
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sGameId:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getItemByCode(Ljava/lang/String;)Lcom/gpc/sdk/i18n/GPCI18NItem;

    move-result-object v0

    return-object v0
.end method

.method private static getJSONByGameId(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->verifyGameId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/gpc/sdk/i18n/GPCI18NItem;->EN:Lcom/gpc/sdk/i18n/GPCI18NItem;

    invoke-static {p0, p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->loadResourceByI18NItem(Landroid/content/Context;Lcom/gpc/sdk/i18n/GPCI18NItem;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x6

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getItemByCode(Ljava/lang/String;)Lcom/gpc/sdk/i18n/GPCI18NItem;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->loadResourceByI18NItem(Landroid/content/Context;Lcom/gpc/sdk/i18n/GPCI18NItem;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getJSONByLocale(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getItemByLocale(Ljava/lang/String;)Lcom/gpc/sdk/i18n/GPCI18NItem;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->loadResourceByI18NItem(Landroid/content/Context;Lcom/gpc/sdk/i18n/GPCI18NItem;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getResourceFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    const-string p0, ""

    return-object p0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceLocale:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "GPCI18NHelper"

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceJson:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 3
    const-string p0, "please force init i18n!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sJson:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 9
    const-string p0, "please init i18n!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 12
    :cond_2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 13
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceLocale:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "GPCI18NHelper"

    if-nez v0, :cond_1

    .line 14
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceJson:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 15
    const-string p0, "please force init i18n!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 18
    :cond_0
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_1
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sJson:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 22
    const-string p0, "please init i18n!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 25
    :cond_2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "force resource:"

    const-string v1, "force init:"

    .line 1
    sget-object v2, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceLocale:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "GPCI18NHelper"

    if-nez v2, :cond_0

    .line 3
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceLocale:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object p1, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceLocale:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getJSONByLocale(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceJson:Lorg/json/JSONObject;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sForceJson:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sGameId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {p0, p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->load(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_1
    invoke-static {p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->verifyGameId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x6

    .line 16
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 17
    sget-object v4, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sGameId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    const-string p0, "i18n init finish"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 21
    :cond_3
    invoke-static {p0, p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->load(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static load(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "GPCI18NHelper"

    const-string v1, "resource:"

    const-string v2, "game id :"

    .line 1
    :try_start_0
    const-string v3, "i18n tools init"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-object p1, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sGameId:Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p0, p1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getJSONByGameId(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sJson:Lorg/json/JSONObject;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/gpc/sdk/i18n/GPCI18NHelper;->sJson:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loadResourceByI18NItem(Landroid/content/Context;Lcom/gpc/sdk/i18n/GPCI18NItem;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/i18n/GPCI18NItem;->getModuleResourcePath()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0, v1}, Lcom/gpc/sdk/i18n/GPCI18NHelper;->getResourceFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 11
    const-string v2, "GPCI18NHelper"

    const-string v3, "mergeResource error"

    invoke-static {v2, v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static verifyGameId(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
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
