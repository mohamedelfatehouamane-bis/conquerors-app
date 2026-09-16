.class public Lcom/gpc/operations/migrate/utils/common/I18N;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/utils/common/I18N$GameLanguage;
    }
.end annotation


# static fields
.field public static CUSTOM_GAME_ID_TO_LANGUAGE:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GAME_ID_LANGUAGE_PART_TO_LANGUAGE_DIR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/migrate/utils/common/I18N$GameLanguage;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BUY:Ljava/lang/String; = "buy"

.field private static final TAG:Ljava/lang/String; = "I18N"

.field public static final TEXT_KEY_TO_LANGUAGE_CODE_AND_VALUE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/common/I18N;->TEXT_KEY_TO_LANGUAGE_CODE_AND_VALUE:Ljava/util/Map;

    .line 8
    new-instance v1, Lcom/gpc/operations/migrate/utils/common/I18N$1;

    invoke-direct {v1}, Lcom/gpc/operations/migrate/utils/common/I18N$1;-><init>()V

    .line 33
    const-string v2, "buy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/gpc/operations/migrate/utils/common/I18N$2;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/common/I18N$2;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/common/I18N;->GAME_ID_LANGUAGE_PART_TO_LANGUAGE_DIR:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/operations/migrate/utils/common/I18N;->CUSTOM_GAME_ID_TO_LANGUAGE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/common/I18N;->CUSTOM_GAME_ID_TO_LANGUAGE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/operations/migrate/utils/common/I18N;->CUSTOM_GAME_ID_TO_LANGUAGE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/gpc/operations/migrate/utils/common/I18N;->TEXT_KEY_TO_LANGUAGE_CODE_AND_VALUE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    .line 10
    :cond_0
    new-instance v0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;

    invoke-direct {v0, p0}, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p0, v0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->languagePart:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_1
    move-object p0, v2

    goto :goto_2

    .line 15
    :cond_2
    sget-object p0, Lcom/gpc/operations/migrate/utils/common/I18N;->GAME_ID_LANGUAGE_PART_TO_LANGUAGE_DIR:Ljava/util/Map;

    iget-object v4, v0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->languagePart:Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, v0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->languagePart:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gpc/operations/migrate/utils/common/I18N$GameLanguage;

    .line 20
    sget-object v0, Lcom/gpc/operations/migrate/utils/common/I18N;->TEXT_KEY_TO_LANGUAGE_CODE_AND_VALUE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lcom/gpc/operations/migrate/utils/common/I18N$GameLanguage;->code:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_5

    .line 32
    sget-object p0, Lcom/gpc/operations/migrate/utils/common/I18N;->TEXT_KEY_TO_LANGUAGE_CODE_AND_VALUE:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string p1, "en"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 35
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "not found key:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "I18N"

    invoke-static {p1, p0}, Lcom/gpc/operations/migrate/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5
    return-object p0
.end method

.method public static setGameIdToLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/common/I18N;->CUSTOM_GAME_ID_TO_LANGUAGE:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
