.class public Lcom/AppEvent;
.super Ljava/lang/Object;
.source "AppEvent.java"


# static fields
.field private static final E_Admob_Complete:Ljava/lang/String; = "admob_sdk_init_complete"

.field private static final E_Admob_Init:Ljava/lang/String; = "admob_sdk_init_start"

.field private static final E_Purchases:Ljava/lang/String; = "Purchases"

.field private static final E_Spent_Credits:Ljava/lang/String; = "Spent_Credits"

.field private static final E_begin_checkout:Ljava/lang/String; = "begin_checkout"

.field private static final E_dailyquest_ap_prize_claim:Ljava/lang/String; = "dailyquest_ap_prize_claim"

.field private static final E_join_group:Ljava/lang/String; = "join_guild"

.field private static final E_level_up:Ljava/lang/String; = "level_up"

.field private static final E_tutorial_begin:Ljava/lang/String; = "tutorial_begin"

.field private static final E_tutorial_complete:Ljava/lang/String; = "tutorial_completion"

.field public static GameInstance:Lcom/igg/android/conquerors/col; = null

.field public static final SendType_AF:I = 0x1

.field public static final SendType_ALL:I = 0x7

.field public static final SendType_FB:I = 0x2

.field public static final SendType_Firebase:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AppEvent-"

.field private static final kDAY2_RETENTION:Ljava/lang/String; = "DAY2_RETENTION"

.field private static final kGPC_LAUNCH:Ljava/lang/String; = "APP_LAUNCH"

.field private static final kSIGN_UP:Ljava/lang/String; = "SIGN_UP"

.field private static s_Instance:Lcom/AppEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sharedInstance()Lcom/AppEvent;
    .locals 1

    .line 56
    sget-object v0, Lcom/AppEvent;->s_Instance:Lcom/AppEvent;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/AppEvent;

    invoke-direct {v0}, Lcom/AppEvent;-><init>()V

    sput-object v0, Lcom/AppEvent;->s_Instance:Lcom/AppEvent;

    .line 59
    :cond_0
    sget-object v0, Lcom/AppEvent;->s_Instance:Lcom/AppEvent;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 62
    sput-object p1, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method public sendDay2Event()V
    .locals 0

    return-void
.end method

.method public sendDayEvent(I)V
    .locals 2

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DAY"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_RETENTION"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 540
    invoke-virtual {p0, v0, p1, v1}, Lcom/AppEvent;->sendEvent(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public sendEvent(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 25

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    .line 67
    const-string v2, "tutorial_begin"

    .line 0
    const-string v3, "send Firebase Event: key = "

    const-string v4, "send facebook Event: key = "

    const-string v5, "send AppsFlyer Event: key = "

    .line 70
    const-string v6, ""

    if-eqz v0, :cond_1

    :try_start_0
    array-length v7, v0

    if-lez v7, :cond_1

    const/4 v7, 0x0

    .line 71
    aget-object v0, v0, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v7, v6

    goto :goto_2

    :cond_1
    :goto_0
    move-object v7, v6

    .line 75
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 77
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v6, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 81
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    and-int/lit8 v0, p1, 0x1

    .line 101
    const-string v8, "APP_LAUNCH"

    const-string v9, "userid"

    const-string v10, "time"

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    const-string v12, "USD"

    const-string v13, "dailyquest_ap_prize_claim"

    const-string v14, "Spent_Credits"

    const-string v15, "Purchases"

    move-object/from16 v16, v2

    const-string v2, "tutorial_completion"

    move-object/from16 v17, v3

    const-string v3, "AppEvent-"

    move-object/from16 v18, v4

    const-string v4, "level_up"

    move-object/from16 p3, v10

    const-string v10, "begin_checkout"

    move-object/from16 v19, v11

    const-string v11, "SIGN_UP"

    move-object/from16 v20, v13

    const-string v13, "Gold"

    move-object/from16 v21, v11

    const-string v11, ":"

    if-eqz v0, :cond_f

    .line 103
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 106
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 108
    :cond_4
    const-string v5, "af_content"

    if-eqz v7, :cond_5

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_5

    .line 109
    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    if-eqz v22, :cond_6

    .line 117
    :try_start_4
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v22, v2

    :try_start_5
    sget-object v2, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v23, v9

    :try_start_6
    const-string v9, "af_tutorial_completion"

    invoke-virtual {v5, v2, v9, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :goto_4
    move-object/from16 v5, p3

    move-object/from16 v24, v4

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v22, v2

    :goto_5
    move-object/from16 v23, v9

    :goto_6
    move-object/from16 v5, p3

    move-object/from16 v24, v4

    goto/16 :goto_9

    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v23, v9

    .line 119
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    const-string v9, "af_revenue"

    if-eqz v2, :cond_7

    .line 120
    :try_start_7
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    sget-object v5, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    const-string v9, "af_initiated_checkout"

    invoke-virtual {v2, v5, v9, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 125
    :cond_7
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 126
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    sget-object v5, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    const-string v9, "af_purchase"

    invoke-virtual {v2, v5, v9, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 131
    :cond_8
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 132
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v2, "af_content_id"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "af_content_type"

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "af_currency"

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v2, "af_price"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    sget-object v5, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    const-string v9, "af_spent_credits"

    invoke-virtual {v2, v5, v9, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 140
    :cond_9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 141
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "af_level"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    sget-object v5, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    const-string v9, "af_level_achieved"

    invoke-virtual {v2, v5, v9, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_4

    .line 145
    :cond_a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 146
    sget-object v2, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v2}, Lcom/igg/android/conquerors/col;->GetFirebaseAppInstance()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 147
    const-string v2, "ga4f_aiid"

    sget-object v5, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v5}, Lcom/igg/android/conquerors/col;->GetFirebaseAppInstance()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_b
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    sget-object v5, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v2, v5, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    goto/16 :goto_4

    :cond_c
    move-object/from16 v2, v21

    .line 151
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 152
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v5

    invoke-static {v5}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v5

    .line 153
    const-string v9, "method"

    invoke-interface {v0, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v5

    sget-object v9, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v5, v9, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-object/from16 v5, p3

    move-object/from16 v24, v4

    move-object/from16 v4, v19

    goto/16 :goto_d

    :cond_d
    move-object/from16 v9, v20

    .line 156
    :try_start_9
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    if-eqz v20, :cond_e

    move-object/from16 v20, v8

    .line 157
    :try_start_a
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v21, v9

    .line 158
    :try_start_b
    new-instance v9, Ljava/text/SimpleDateFormat;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v24, v4

    move-object/from16 v4, v19

    :try_start_c
    invoke-direct {v9, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 161
    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v5, p3

    .line 162
    :try_start_d
    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    sget-object v9, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v8, v9, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v5, p3

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v24, v4

    goto :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v24, v4

    goto :goto_7

    :cond_e
    move-object/from16 v5, p3

    move-object/from16 v24, v4

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v4, v19

    .line 166
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    sget-object v9, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v8, v9, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_e

    :catchall_7
    move-exception v0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v24, v4

    move-object/from16 v20, v8

    :goto_7
    move-object/from16 v21, v9

    :goto_8
    move-object/from16 v4, v19

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v24, v4

    move-object/from16 v4, v19

    goto :goto_a

    :catchall_a
    move-exception v0

    goto/16 :goto_6

    :catchall_b
    move-exception v0

    move-object/from16 v5, p3

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v23, v9

    :goto_9
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    :goto_a
    move-object/from16 v21, v20

    move-object/from16 v20, v8

    .line 169
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :cond_f
    move-object/from16 v5, p3

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v23, v9

    :goto_c
    move-object/from16 v4, v19

    move-object/from16 v2, v21

    :goto_d
    move-object/from16 v21, v20

    move-object/from16 v20, v8

    :goto_e
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_19

    .line 176
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v8, v18

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    move-object/from16 v8, v23

    .line 180
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 182
    :cond_10
    const-string v8, "fb_content"

    if-eqz v7, :cond_11

    :try_start_f
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 183
    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_11
    sget-object v9, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-static {v9}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v9

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 188
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v8

    invoke-virtual {v8}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v8

    invoke-static {v8}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v8
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    move-object/from16 v18, v2

    .line 189
    :try_start_10
    const-string v2, "fb_registration_method"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "fb_mobile_complete_registration"

    invoke-virtual {v9, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_13

    :cond_12
    move-object/from16 v18, v2

    move-object/from16 v2, v22

    .line 192
    :try_start_11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 193
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    move-object/from16 v22, v2

    .line 194
    :try_start_12
    const-string v2, "First Chapter"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "fb_content_id"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "fb_success"

    const-string v8, "1"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "fb_mobile_tutorial_completion"

    invoke-virtual {v9, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_13

    :cond_13
    move-object/from16 v22, v2

    .line 199
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    if-eqz v2, :cond_14

    move-object/from16 p3, v3

    .line 200
    :try_start_13
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 201
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 202
    const-string v8, "fb_mobile_initiated_checkout"

    invoke-virtual {v9, v8, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto/16 :goto_14

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_14
    move-object/from16 p3, v3

    .line 204
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 205
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 206
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v9, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    goto/16 :goto_14

    .line 208
    :cond_15
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 209
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 210
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 211
    invoke-virtual {v0, v8, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v8, "fb_content_id"
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    move-object/from16 v19, v14

    move-object/from16 v23, v15

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :try_start_14
    invoke-virtual {v0, v8, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 213
    const-string v8, "fb_content_type"

    invoke-virtual {v0, v8, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v8, "fb_currency"

    invoke-virtual {v0, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v8, "fb_mobile_spent_credits"

    invoke-virtual {v9, v8, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    goto/16 :goto_15

    :catch_1
    move-exception v0

    goto :goto_11

    :cond_16
    move-object/from16 v19, v14

    move-object/from16 v23, v15

    move-object/from16 v2, v24

    .line 217
    :try_start_15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 218
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 219
    const-string v3, "fb_level"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v3, "fb_mobile_level_achieved"

    invoke-virtual {v9, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    move-object/from16 v3, v21

    goto :goto_16

    :cond_17
    move-object/from16 v3, v21

    .line 222
    :try_start_16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 223
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 224
    new-instance v15, Ljava/text/SimpleDateFormat;

    invoke-direct {v15, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v15, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 227
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, v5, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v9, v1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_16

    .line 232
    :cond_18
    invoke-virtual {v9, v1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    goto :goto_16

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    move-object/from16 v3, v21

    goto :goto_12

    :catch_4
    move-exception v0

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v22, v2

    goto :goto_f

    :catch_6
    move-exception v0

    move-object/from16 v18, v2

    :goto_f
    move-object/from16 p3, v3

    :goto_10
    move-object/from16 v19, v14

    move-object/from16 v23, v15

    :goto_11
    move-object/from16 v3, v21

    move-object/from16 v2, v24

    .line 235
    :goto_12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    :cond_19
    move-object/from16 v18, v2

    :goto_13
    move-object/from16 p3, v3

    :goto_14
    move-object/from16 v19, v14

    move-object/from16 v23, v15

    :goto_15
    move-object/from16 v3, v21

    move-object/from16 v2, v24

    :goto_16
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_26

    .line 242
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v8, v17

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p3

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v0, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 245
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v9, v18

    .line 246
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b

    const-string v11, "DAY2_RETENTION"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b

    move-object/from16 v11, v20

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b

    const-string v11, "_AND_ABOVE"

    .line 247
    invoke-virtual {v1, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto :goto_17

    .line 250
    :cond_1a
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 255
    :cond_1b
    :goto_17
    const-string v11, "content"

    if-eqz v7, :cond_1c

    :try_start_18
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1c

    .line 256
    invoke-virtual {v8, v11, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1c
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 260
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v2

    .line 261
    const-string v3, "method"

    invoke-virtual {v8, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_18

    :cond_1d
    move-object/from16 v9, v16

    .line 267
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 268
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, v9, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_18

    :cond_1e
    move-object/from16 v9, v22

    .line 271
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 272
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 276
    const-string v1, "tutorial_complete"

    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_18

    .line 278
    :cond_1f
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 279
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 280
    const-string v1, "price"

    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, v10, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_18

    :cond_20
    move-object/from16 v9, v23

    .line 283
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 284
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 285
    const-string v2, "price"

    invoke-virtual {v8, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_18

    :cond_21
    move-object/from16 v9, v19

    .line 288
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 289
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 290
    const-string v1, "item_name"

    invoke-virtual {v8, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "value"

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v8, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 292
    const-string v1, "virtual_currency_name"

    invoke-virtual {v8, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "currency"

    invoke-virtual {v8, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "spend_virtual_currency"

    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_18

    .line 296
    :cond_22
    const-string v9, "join_guild"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 297
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 298
    const-string v1, "group_id"

    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "join_group"

    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_18

    .line 301
    :cond_23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 302
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 303
    const-string v1, "character"

    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v1, "level"

    invoke-virtual {v8, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, v2, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_18

    .line 307
    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 308
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 309
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v8, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v8, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_18

    .line 317
    :cond_25
    invoke-virtual {v0, v1, v8}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    goto :goto_18

    :catchall_c
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_26
    :goto_18
    return-void
.end method

.method public sendGPCLaunchEvent()V
    .locals 3

    .line 544
    const-string v0, "APP_LAUNCH"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0, v1}, Lcom/AppEvent;->sendEvent(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public sendLoginGPCEvent()V
    .locals 18

    .line 448
    const-string v0, "day2"

    const-string v1, "SignUpTime"

    const-string v2, "LastLaunchTime"

    const-string v3, "SystemABOVE"

    .line 449
    :try_start_0
    new-instance v4, Lcom/gpc/util/LocalStorage;

    sget-object v5, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v5}, Lcom/igg/android/conquerors/col;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "Event_File"

    invoke-direct {v4, v5, v6}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v4, v3}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/AppEvent;->sendSystemABOVE()V

    .line 455
    invoke-virtual {v4, v3, v6}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V

    .line 459
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 460
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 461
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 462
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    .line 463
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x5

    .line 464
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 467
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, ""

    if-eqz v12, :cond_4

    .line 468
    :try_start_1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 469
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    move-object v13, v12

    .line 474
    :cond_2
    :goto_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gpc/sdk/account/GPCSession;->isAccountNewlyCreated()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 475
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/AppEvent;->sendSignUpEvent()V

    goto :goto_1

    .line 478
    :cond_3
    const-string v12, "kSIGN_UP"

    const-string v14, "No new Account"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_4
    :goto_1
    invoke-virtual {v4, v2}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 484
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 485
    invoke-virtual {v3, v12}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 486
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 487
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 488
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v15

    if-ne v12, v7, :cond_5

    if-ne v14, v9, :cond_5

    if-ne v15, v11, :cond_5

    goto/16 :goto_2

    .line 492
    :cond_5
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/AppEvent;->sendGPCLaunchEvent()V

    .line 493
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v2, v12}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/gpc/util/LocalStorage;->readLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_6

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 500
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 503
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, v14

    const-wide/32 v16, 0x5265c00

    div-long v1, v1, v16

    const-wide/16 v16, 0x7

    cmp-long v5, v1, v16

    if-gtz v5, :cond_7

    .line 506
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v14, v15}, Ljava/util/Date;-><init>(J)V

    .line 507
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 509
    invoke-virtual {v3, v10, v6}, Ljava/util/Calendar;->add(II)V

    .line 510
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 511
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 512
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v1, v7, :cond_7

    if-ne v2, v9, :cond_7

    if-ne v3, v11, :cond_7

    .line 515
    invoke-static {}, Lcom/AppEvent;->sharedInstance()Lcom/AppEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/AppEvent;->sendDay2Event()V

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v6}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method public sendRewardedADEvent(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 335
    const-string v5, ""

    .line 338
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v6, v5

    .line 343
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCIdsManager;->getADID()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {}, Lcom/gpc/sdk/GPCIdsManager;->sharedInstance()Lcom/gpc/sdk/GPCIdsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/gpc/sdk/GPCIdsManager;->getUUID()Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_2

    :goto_2
    move-object v5, v0

    goto :goto_4

    :cond_2
    if-eqz v7, :cond_3

    move-object v5, v7

    goto :goto_4

    .line 347
    :cond_3
    invoke-static {}, Lcom/InvokeHelper;->getDeviceID()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v5

    .line 349
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 352
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "sendEvent: key = "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AppEvent-"

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x1

    .line 355
    const-string v7, "af_content"

    const-wide/16 v9, 0x3e8

    const-string v11, "device_id"

    const-string v12, "time"

    const-string v13, "userid"

    if-eqz v0, :cond_8

    .line 357
    :try_start_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 359
    invoke-interface {v0, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 362
    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    div-long/2addr v14, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 365
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    .line 366
    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v3, :cond_7

    .line 369
    array-length v14, v3

    if-lez v14, :cond_7

    if-eqz v4, :cond_7

    array-length v14, v4

    if-lez v14, :cond_7

    array-length v14, v3

    array-length v15, v4

    if-ne v14, v15, :cond_7

    const/4 v14, 0x0

    .line 373
    :goto_5
    array-length v15, v3

    if-ge v14, v15, :cond_7

    .line 374
    aget-object v15, v3, v14

    aget-object v8, v4, v14

    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 377
    :cond_7
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v8

    sget-object v14, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-virtual {v8, v14, v1, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_6
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_d

    .line 386
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 387
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 388
    invoke-virtual {v0, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 391
    invoke-virtual {v0, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    div-long/2addr v14, v9

    long-to-int v8, v14

    int-to-long v14, v8

    invoke-virtual {v0, v12, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz v2, :cond_b

    .line 394
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 395
    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_b
    sget-object v7, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-static {v7}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v7

    if-eqz v3, :cond_c

    .line 399
    array-length v8, v3

    if-lez v8, :cond_c

    if-eqz v4, :cond_c

    array-length v8, v4

    if-lez v8, :cond_c

    array-length v8, v3

    array-length v14, v4

    if-ne v8, v14, :cond_c

    const/4 v8, 0x0

    .line 403
    :goto_7
    array-length v14, v3

    if-ge v8, v14, :cond_c

    .line 404
    aget-object v14, v3, v8

    aget-object v15, v4, v8

    invoke-virtual {v0, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 407
    :cond_c
    invoke-virtual {v7, v1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_8
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_12

    .line 415
    :try_start_4
    sget-object v0, Lcom/AppEvent;->GameInstance:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 416
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 418
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    .line 419
    invoke-virtual {v7, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_e
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_f

    .line 422
    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v9

    long-to-int v6, v5

    int-to-long v5, v6

    invoke-virtual {v7, v12, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz v2, :cond_10

    .line 425
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 426
    const-string v5, "content"

    invoke-virtual {v7, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    if-eqz v3, :cond_11

    .line 428
    array-length v2, v3

    if-lez v2, :cond_11

    if-eqz v4, :cond_11

    array-length v2, v4

    if-lez v2, :cond_11

    array-length v2, v3

    array-length v5, v4

    if-ne v2, v5, :cond_11

    const/4 v8, 0x0

    .line 432
    :goto_9
    array-length v2, v3

    if-ge v8, v2, :cond_11

    .line 433
    aget-object v2, v3, v8

    aget-object v5, v4, v8

    invoke-virtual {v7, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 436
    :cond_11
    invoke-virtual {v0, v1, v7}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_a
    return-void
.end method

.method public sendSignUpEvent()V
    .locals 3

    .line 528
    const-string v0, "kSIGN_UP"

    const-string v1, "send sign up!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v0, "SIGN_UP"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1}, Lcom/AppEvent;->sendEvent(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public sendSystemABOVE()V
    .locals 3

    .line 550
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    .line 551
    const-string v0, "ANDROID_6_AND_ABOVE"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1}, Lcom/AppEvent;->sendEvent(ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
