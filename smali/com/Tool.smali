.class public Lcom/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# static fields
.field public static final PUBLIC_KEY:Ljava/lang/String; = "07Z8D2AoYFGGivw40fEOj9swnpyF7Pw3ilKpVKnJ"

.field public static final googlePaymentKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjnsAtGX5LtafVBgzAJkeOBwwwd39uqrosdtOJzB3/CMwszueZcDctEwS1attESo7+JKapQoZD2jRZV+pTxcbvJJ3ewjF5YoEv5V0WPD53HO259v4qO+7NX/s2Sx7R2BnHKNqwoWVUCHHlPGnSyIO6c6lv3o2jInUTrEF1c2TWLos5qpEeSaImBevRh7g+yHHOkumBRoq3PDItiAHEzma/etcfJeA3d+OnoYZRIznoXO3OTxd8rXfJPkQmH/q31jcFJjaKEFA3NuZNOEdXJWXNt77w/vQgrf25vCabtiau3d9eONgESkiuMnADeP5Y2a+v6DH33OcXTh4sOaH3O3E9wIDAQAB"

.field public static final kGameID:Ljava/lang/String; = "1057019902"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoSendLog()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/igg/android/conquerors/col;->autoSendLog()V

    return-void
.end method

.method public static getEncryptionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 85
    const-string p0, ""

    return-object p0
.end method

.method public static getGameIdByLocalLanguage()Ljava/lang/String;
    .locals 4

    .line 24
    const-string v0, "id"

    const-string v1, "cn"

    .line 26
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 27
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 32
    :cond_0
    const-string v2, "tw"

    goto :goto_0

    .line 34
    :cond_1
    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    const-string v2, "kr"

    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "in"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "en"

    .line 45
    :cond_3
    :goto_0
    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "1057029902"

    return-object v0

    .line 46
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "1057199902"

    return-object v0

    .line 47
    :cond_5
    const-string v1, "de"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "1057059902"

    return-object v0

    .line 48
    :cond_6
    const-string v1, "es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "1057090202"

    return-object v0

    .line 49
    :cond_7
    const-string v1, "fr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "1057069902"

    return-object v0

    .line 50
    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1057119902"

    return-object v0

    .line 51
    :cond_9
    const-string v0, "ru"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "1057079902"

    return-object v0

    .line 52
    :cond_a
    const-string v0, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "1057039902"

    return-object v0

    .line 53
    :cond_b
    const-string v0, "1057019902"

    return-object v0
.end method

.method public static getHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setLocalTextType(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 90
    const-string v0, "1057029902"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ar"

    goto :goto_0

    .line 91
    :cond_0
    const-string v0, "1057199902"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "zh-cn"

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "1057059902"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "de"

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "1057019902"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "en"

    if-eqz v0, :cond_4

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 94
    :cond_4
    const-string v0, "1057090202"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "es"

    goto :goto_0

    .line 95
    :cond_5
    const-string v0, "1057069902"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "fr"

    goto :goto_0

    .line 96
    :cond_6
    const-string v0, "1057119902"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "id"

    goto :goto_0

    .line 97
    :cond_7
    const-string v0, "1057079902"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ru"

    goto :goto_0

    .line 98
    :cond_8
    const-string v0, "1057039902"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "tr"

    .line 100
    :goto_0
    invoke-static {}, Lcom/gpc/sdk/GPCSDK;->kungfu()Lcom/gpc/sdk/Kungfu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/Kungfu;->getI18N()Lcom/gpc/sdk/utils/modules/I18NModule;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lcom/gpc/sdk/utils/modules/I18NModule;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setOperationsSDKLangue(Ljava/lang/String;)V
    .locals 3

    .line 106
    const-string v0, "1057029902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ar"

    goto :goto_1

    .line 107
    :cond_0
    const-string v0, "1057199902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "zh-cn"

    goto :goto_1

    .line 108
    :cond_1
    const-string v0, "1057019902"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "en"

    if-eqz v1, :cond_2

    :goto_0
    move-object v0, v2

    goto :goto_1

    .line 109
    :cond_2
    const-string v1, "1057079902"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "ru"

    goto :goto_1

    .line 110
    :cond_3
    const-string v1, "1057039902"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "tr"

    goto :goto_1

    :cond_4
    move-object p0, v0

    goto :goto_0

    .line 113
    :goto_1
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/operations/OperationsSDK;->getI18N()Lcom/gpc/operations/migrate/utils/modules/OPSI18N;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/gpc/operations/migrate/utils/modules/OPSI18N;->addGameLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "setOperationsSDKLangue"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
