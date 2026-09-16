.class public final Lcom/appsflyer/internal/AFi1qSDK;
.super Lcom/appsflyer/internal/AFi1ySDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFi1qSDK$AFa1vSDK;
    }
.end annotation


# instance fields
.field private final AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

.field private final e:Lcom/appsflyer/internal/AFi1rSDK;

.field private i:Ljava/lang/String;

.field private final registerClient:Ljava/lang/Runnable;

.field private final valueOf:Lcom/appsflyer/internal/AFd1rSDK;


# direct methods
.method public static synthetic $r8$lambda$UYwRYFhhVsNGfoKJggFZNOcJrbQ(Lcom/appsflyer/internal/AFi1qSDK;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFi1qSDK;->valueOf(Lcom/appsflyer/internal/AFi1qSDK;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1rSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFi1rSDK;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    sget-object v0, Lcom/appsflyer/internal/AFi1tSDK$AFa1vSDK;->valueOf:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1265
    const-string v0, "instagram"

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1264
    :cond_1
    const-string v0, "facebook"

    .line 53
    :goto_0
    const-string v1, "app"

    invoke-direct {p0, v1, v0, p1, p4}, Lcom/appsflyer/internal/AFi1ySDK;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/appsflyer/internal/AFd1rSDK;Ljava/lang/Runnable;)V

    .line 48
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1qSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    .line 49
    iput-object p2, p0, Lcom/appsflyer/internal/AFi1qSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    .line 50
    iput-object p3, p0, Lcom/appsflyer/internal/AFi1qSDK;->e:Lcom/appsflyer/internal/AFi1rSDK;

    .line 52
    iput-object p5, p0, Lcom/appsflyer/internal/AFi1qSDK;->registerClient:Ljava/lang/Runnable;

    return-void
.end method

.method private static AFInAppEventParameterName(Landroid/content/Context;)Z
    .locals 2

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.facebook.katana.provider.InstallReferrerProvider"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private final AFInAppEventType(Landroid/content/Context;)Z
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1qSDK;->e:Lcom/appsflyer/internal/AFi1rSDK;

    sget-object v1, Lcom/appsflyer/internal/AFi1qSDK$AFa1vSDK;->values:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 251
    invoke-static {p1}, Lcom/appsflyer/internal/AFi1qSDK;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 250
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFi1qSDK;->AFInAppEventParameterName(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private static AFKeystoreWrapper(Landroid/content/Context;)Z
    .locals 2

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.instagram.contentprovider.InstallReferrerProvider"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private static final valueOf(Lcom/appsflyer/internal/AFi1qSDK;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "actual_timestamp"

    const-string v3, "install_referrer"

    const-string v4, "is_ct"

    const-string v5, ""

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/appsflyer/internal/AFi1nSDK;->d:J

    .line 4032
    sget-object v6, Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    iput-object v6, v1, Lcom/appsflyer/internal/AFi1nSDK;->unregisterClient:Lcom/appsflyer/internal/AFi1nSDK$AFa1uSDK;

    .line 4033
    new-instance v6, Lcom/appsflyer/internal/AFi1nSDK$3;

    invoke-direct {v6, v1}, Lcom/appsflyer/internal/AFi1nSDK$3;-><init>(Lcom/appsflyer/internal/AFi1nSDK;)V

    invoke-virtual {v1, v6}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 66
    iget-object v6, v1, Lcom/appsflyer/internal/AFi1qSDK;->i:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    .line 4106
    :try_start_0
    iget-object v9, v1, Lcom/appsflyer/internal/AFi1qSDK;->e:Lcom/appsflyer/internal/AFi1rSDK;

    .line 4227
    sget-object v10, Lcom/appsflyer/internal/AFi1qSDK$AFa1vSDK;->values:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    if-ne v9, v10, :cond_1

    .line 4239
    invoke-static {v0}, Lcom/appsflyer/internal/AFi1qSDK;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4240
    const-string v9, "[MetaReferrer]: Found Instagram content provider"

    invoke-static {v9}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 4241
    const-string v9, "content://com.instagram.contentprovider.InstallReferrerProvider/"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 4243
    :cond_0
    const-string v6, "[MetaReferrer]: Instagram content provider not found"

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 4244
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 4229
    :cond_2
    invoke-static {v0}, Lcom/appsflyer/internal/AFi1qSDK;->AFInAppEventParameterName(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4230
    const-string v9, "[MetaReferrer]: Found Facebook content provider"

    invoke-static {v9}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 4231
    const-string v9, "content://com.facebook.katana.provider.InstallReferrerProvider/"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_0
    move-object v13, v6

    goto :goto_2

    .line 4233
    :cond_3
    const-string v6, "[MetaReferrer]: Facebook content provider noy found"

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :goto_1
    move-object v13, v8

    :goto_2
    if-nez v13, :cond_4

    goto/16 :goto_a

    .line 4108
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4109
    :try_start_1
    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v14

    if-eqz v12, :cond_5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    .line 4110
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :cond_5
    move-object v6, v8

    :goto_3
    if-eqz v6, :cond_10

    .line 4111
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_7

    .line 5146
    :cond_6
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_7

    .line 5149
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 5151
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "[MetaReferrer]: No such column, "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/appsflyer/internal/AFi1qSDK;->e:Lcom/appsflyer/internal/AFi1rSDK;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " provider"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    move-object v3, v8

    :goto_4
    if-eqz v3, :cond_e

    .line 4117
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[MetaReferrer]: Collected "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/appsflyer/internal/AFi1qSDK;->e:Lcom/appsflyer/internal/AFi1rSDK;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " attribution data."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 4119
    iget-object v13, v1, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "response"

    const-string v15, "OK"

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    iget-object v13, v1, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "referrer"

    invoke-interface {v13, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5158
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_8

    .line 5160
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object v2, v8

    :goto_5
    if-eqz v2, :cond_9

    .line 4121
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 4122
    iget-object v13, v1, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v14, "click_ts"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v13, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5168
    :cond_9
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v9, :cond_a

    .line 5171
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_a
    if-eqz v8, :cond_b

    .line 4124
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 4126
    new-array v3, v11, [Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 4125
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 4128
    iget-object v3, v1, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    const-string v4, "meta_custom"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5179
    :cond_b
    iget-object v2, v1, Lcom/appsflyer/internal/AFi1qSDK;->e:Lcom/appsflyer/internal/AFi1rSDK;

    sget-object v3, Lcom/appsflyer/internal/AFi1qSDK$AFa1vSDK;->values:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v11, :cond_d

    if-ne v2, v10, :cond_c

    .line 5181
    const-string v2, "com.instagram.android"

    goto :goto_6

    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 5180
    :cond_d
    const-string v2, "com.facebook.katana"

    .line 5183
    :goto_6
    iget-object v3, v1, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "api_ver"

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5184
    iget-object v3, v1, Lcom/appsflyer/internal/AFi1nSDK;->values:Ljava/util/Map;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "api_ver_name"

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4136
    :cond_e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_f

    if-eqz v12, :cond_15

    .line 4138
    invoke-static {v12}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V

    goto :goto_a

    :cond_f
    if-eqz v12, :cond_15

    goto :goto_9

    .line 4112
    :cond_10
    :goto_7
    :try_start_3
    const-string v0, "[MetaReferrer]: Content provider returned no data"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_11

    .line 4136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4137
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_12

    if-eqz v12, :cond_15

    .line 4138
    invoke-static {v12}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V

    goto :goto_a

    :cond_12
    if-eqz v12, :cond_15

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v8, v6

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v12, v8

    .line 4134
    :goto_8
    :try_start_4
    const-string v2, "[MetaReferrer]: Error while collecting Meta Install Referrer"

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 4136
    move-object v0, v8

    check-cast v0, Landroid/database/Cursor;

    if-eqz v8, :cond_13

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4137
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_14

    if-eqz v12, :cond_15

    .line 4138
    invoke-static {v12}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V

    goto :goto_a

    :cond_14
    if-eqz v12, :cond_15

    .line 4140
    :goto_9
    invoke-virtual {v12}, Landroid/content/ContentProviderClient;->release()Z

    .line 67
    :cond_15
    :goto_a
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFi1nSDK;->AFInAppEventType()V

    .line 68
    iget-object v0, v1, Lcom/appsflyer/internal/AFi1qSDK;->registerClient:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_3
    move-exception v0

    .line 4136
    move-object v1, v8

    check-cast v1, Landroid/database/Cursor;

    if-eqz v8, :cond_16

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4137
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_17

    if-eqz v12, :cond_18

    .line 4138
    invoke-static {v12}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V

    goto :goto_b

    :cond_17
    if-eqz v12, :cond_18

    .line 4140
    invoke-virtual {v12}, Landroid/content/ContentProviderClient;->release()Z

    :cond_18
    :goto_b
    throw v0
.end method

.method private final valueOf(Landroid/content/Context;)Z
    .locals 4

    .line 73
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFi1qSDK;->AFInAppEventParameterName()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    const-string p1, "[MetaReferrer]: Referrer collection disallowed by counter."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return v1

    .line 3196
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1qSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    const-string v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFd1rSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3197
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 3198
    :cond_1
    const-string v0, "[MetaReferrer]: Facebook app id Manifest metadata is not found."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    if-nez v0, :cond_7

    .line 3205
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1qSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    const-string v2, "facebook_application_id"

    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFd1rSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3206
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 3207
    :cond_3
    const-string v0, "[MetaReferrer]: Facebook app id string resource is not found."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    if-nez v0, :cond_7

    .line 3214
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1qSDK;->valueOf:Lcom/appsflyer/internal/AFd1rSDK;

    const-string v2, "com.appsflyer.FacebookApplicationId"

    invoke-virtual {v0, v2}, Lcom/appsflyer/internal/AFd1rSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3215
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 3216
    :cond_5
    const-string v0, "[MetaReferrer]: AF Facebook app id Manifest metadata is not found."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    move-object v0, v3

    :cond_6
    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move-object v3, v0

    .line 78
    :goto_0
    iput-object v3, p0, Lcom/appsflyer/internal/AFi1qSDK;->i:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 80
    const-string p1, "[MetaReferrer]: Referrer collection disallowed by missing Facebook app id."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return v1

    .line 84
    :cond_8
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1qSDK;->AFInAppEventType(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 85
    const-string p1, "[MetaReferrer]: Referrer collection disallowed by missing content providers."

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return v1

    :cond_9
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final values(Landroid/content/Context;)V
    .locals 2

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFi1qSDK;->valueOf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object p1, p0, Lcom/appsflyer/internal/AFi1qSDK;->registerClient:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1qSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/appsflyer/internal/AFi1qSDK$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/internal/AFi1qSDK$$ExternalSyntheticLambda0;-><init>(Lcom/appsflyer/internal/AFi1qSDK;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
