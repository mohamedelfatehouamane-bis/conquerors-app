.class public Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Guideline"

.field public static h:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

.field public static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/gpc/sdk/account/service/AccountService;

.field public b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

.field public c:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuidelineDelegate;

.field public d:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

.field public e:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;

.field public f:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;

.field public g:Lcom/gpc/sdk/account/GPCLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->i:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/gpc/sdk/account/GPCLogin;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineDefaultCompatProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineDefaultCompatProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->f:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;

    .line 6
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->g:Lcom/gpc/sdk/account/GPCLogin;

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getAccountService()Lcom/gpc/sdk/account/service/AccountService;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a:Lcom/gpc/sdk/account/service/AccountService;

    .line 8
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->notificationCenter()Lcom/gpc/sdk/notification/GPCNotificationCenter;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$a;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$a;-><init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V

    const-string v1, "new_user_login"

    invoke-virtual {p1, v1, v0}, Lcom/gpc/sdk/notification/GPCNotificationCenter;->addObserver(Ljava/lang/String;Lcom/gpc/sdk/notification/GPCNotificationCenter$Observer;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 38
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "languageCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Guideline"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "01"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "en"

    if-eqz v1, :cond_0

    return-object v2

    .line 49
    :cond_0
    const-string v1, "02"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v0, "zh-Hant"

    return-object v0

    .line 51
    :cond_1
    const-string v1, "05"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const-string v0, "de"

    return-object v0

    .line 53
    :cond_2
    const-string v1, "06"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const-string v0, "fr"

    return-object v0

    .line 55
    :cond_3
    const-string v1, "07"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    const-string v0, "ru"

    return-object v0

    .line 57
    :cond_4
    const-string v1, "08"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    const-string v0, "ja"

    return-object v0

    .line 59
    :cond_5
    const-string v1, "09"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    const-string v0, "es"

    return-object v0

    .line 61
    :cond_6
    const-string v1, "10"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    const-string v0, "th"

    return-object v0

    .line 63
    :cond_7
    const-string v1, "11"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 64
    const-string v0, "id"

    return-object v0

    .line 65
    :cond_8
    const-string v1, "12"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 66
    const-string v0, "it"

    return-object v0

    .line 67
    :cond_9
    const-string v1, "13"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 68
    const-string v0, "kr"

    return-object v0

    .line 69
    :cond_a
    const-string v1, "14"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 70
    const-string v0, "my"

    return-object v0

    .line 71
    :cond_b
    const-string v1, "15"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 72
    const-string v0, "vi"

    return-object v0

    .line 73
    :cond_c
    const-string v1, "16"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 74
    const-string v0, "tr"

    return-object v0

    .line 75
    :cond_d
    const-string v1, "18"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 76
    const-string v0, "ar"

    return-object v0

    .line 77
    :cond_e
    const-string v1, "19"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 78
    const-string v0, "zh-Hans"

    return-object v0

    .line 79
    :cond_f
    const-string v1, "22"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 80
    const-string v0, "pt"

    return-object v0

    .line 81
    :cond_10
    const-string v1, "24"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 82
    const-string v0, "uk"

    return-object v0

    :cond_11
    return-object v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 13
    sget-object v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 19
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 21
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    sget-object p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 31
    const-string p1, "Guideline"

    invoke-static {p1, v2, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 85
    const-string v0, "en"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "guideline-localization/tips/strings.json"

    if-eqz v0, :cond_0

    return-object v1

    .line 87
    :cond_0
    const-string v0, "zh-Hant"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string p0, "guideline-localization/tips-zh-rTW/strings.json"

    return-object p0

    .line 89
    :cond_1
    const-string v0, "de"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string p0, "guideline-localization/tips-de/strings.json"

    return-object p0

    .line 91
    :cond_2
    const-string v0, "fr"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    const-string p0, "guideline-localization/tips-fr/strings.json"

    return-object p0

    .line 93
    :cond_3
    const-string v0, "ru"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    const-string p0, "guideline-localization/tips-ru/strings.json"

    return-object p0

    .line 95
    :cond_4
    const-string v0, "ja"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    const-string p0, "guideline-localization/tips-ja/strings.json"

    return-object p0

    .line 97
    :cond_5
    const-string v0, "es"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    const-string p0, "guideline-localization/tips-es/strings.json"

    return-object p0

    .line 99
    :cond_6
    const-string v0, "th"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    const-string p0, "guideline-localization/tips-th/strings.json"

    return-object p0

    .line 101
    :cond_7
    const-string v0, "id"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 102
    const-string p0, "guideline-localization/tips-in-rID/strings.json"

    return-object p0

    .line 103
    :cond_8
    const-string v0, "it"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    const-string p0, "guideline-localization/tips-it/strings.json"

    return-object p0

    .line 105
    :cond_9
    const-string v0, "kr"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 106
    const-string p0, "guideline-localization/tips-ko/strings.json"

    return-object p0

    .line 107
    :cond_a
    const-string v0, "my"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 108
    const-string p0, "guideline-localization/tips-ms-rMY/strings.json"

    return-object p0

    .line 109
    :cond_b
    const-string v0, "vi"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 110
    const-string p0, "guideline-localization/tips-vi/strings.json"

    return-object p0

    .line 111
    :cond_c
    const-string v0, "tr"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 112
    const-string p0, "guideline-localization/tips-tr-rTR/strings.json"

    return-object p0

    .line 113
    :cond_d
    const-string v0, "ar"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 114
    const-string p0, "guideline-localization/tips-ar/strings.json"

    return-object p0

    .line 115
    :cond_e
    const-string v0, "zh-Hans"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 116
    const-string p0, "guideline-localization/tips-zh-rCN/strings.json"

    return-object p0

    .line 117
    :cond_f
    const-string v0, "pt"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 118
    const-string p0, "guideline-localization/tips-pt/strings.json"

    return-object p0

    .line 119
    :cond_10
    const-string v0, "uk"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 120
    const-string p0, "guideline-localization/tips-uk-rUA/strings.json"

    return-object p0

    :cond_11
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 37
    const-string p1, "Guideline"

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static localStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p0, v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    const-string v0, "en"

    invoke-static {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p0, v1, v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 5
    const-string v0, ""

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v3
.end method

.method public final a(Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->f:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;

    invoke-interface {p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;->getSupportedLoginTypes()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a:Lcom/gpc/sdk/account/service/AccountService;

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;

    invoke-direct {v2, p0, p2}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;-><init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/gpc/sdk/account/service/AccountService;->requestBindingProfile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/service/CheckBoundResultListener;)V

    return-void
.end method

.method public addUserBindingProfile(Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getBindingProfiles()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->setBindingProfiles(Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getBindingProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    const-string v1, "RealnameVerificationState"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    invoke-virtual {v0}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getState()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->setRealNameVerificationState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    :cond_0
    return-void
.end method

.method public getAccountBindScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->e:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;

    invoke-direct {v0, p1, p0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;-><init>(Landroid/content/Context;Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V

    iput-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->e:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->e:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountBindScene;

    return-object p1
.end method

.method public getAccountLoginScene(Landroid/content/Context;)Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->d:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->g:Lcom/gpc/sdk/account/GPCLogin;

    invoke-direct {v0, p1, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;-><init>(Landroid/content/Context;Lcom/gpc/sdk/account/GPCLogin;)V

    iput-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->d:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->d:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountLoginScene;

    return-object p1
.end method

.method public getProxy()Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->f:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;

    return-object v0
.end method

.method public getUserProfile()Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    return-object v0
.end method

.method public loadUser(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->getUserProfile()Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getBindingProfiles()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->isChinaMainland()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->d()V

    .line 10
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V

    return-void

    .line 12
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V

    return-void

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->loadUserFromNetwork(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V

    return-void
.end method

.method public loadUserFromNetwork(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    invoke-direct {v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    invoke-virtual {v1, v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->setUserId(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->b:Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->setLoginType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V

    return-void
.end method

.method public declared-synchronized notifySessionExpired(Lcom/gpc/sdk/account/GPCSession;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->c:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuidelineDelegate;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuidelineDelegate;->onSessionExpired(Lcom/gpc/sdk/account/GPCSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setAccountManagementGuidelineDelegate(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuidelineDelegate;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->c:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuidelineDelegate;

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->g:Lcom/gpc/sdk/account/GPCLogin;

    new-instance v0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$b;

    invoke-direct {v0, p0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$b;-><init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)V

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/account/GPCLogin;->setLoginDelegate(Lcom/gpc/sdk/account/GPCLoginDelegate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCompatProxy(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->f:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;

    return-void
.end method

.method public showLoginedDevicesManagerPanel(Landroid/content/Context;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;

    invoke-direct {v0}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/account/devices/manager/GPCLoginedDevicesManager;->showPanel(Landroid/content/Context;Lcom/gpc/sdk/account/devices/manager/listener/GPCLoginedDeviceManagerListener;)V

    return-void
.end method
