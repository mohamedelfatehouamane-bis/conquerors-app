.class public final Lcom/appsflyer/internal/AFd1qSDK;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFd1qSDK$AFa1ySDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFInAppEventType:C = '\u0000'

.field private static AFKeystoreWrapper:C = '\u0000'

.field private static AFLogger:I = 0x0

.field private static d:[B = null

.field private static e:I = 0x0

.field private static force:I = 0x0

.field private static registerClient:C = '\u0000'

.field private static unregisterClient:I = 0x0

.field private static v:[S = null

.field private static valueOf:C = '\u0000'

.field private static w:I = 0x1


# instance fields
.field private final AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    const-string v1, ""

    invoke-static {v1, v1, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    invoke-static {v1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    invoke-static {v0, v0}, Landroid/view/View;->resolveSize(II)I

    invoke-static {v1, v1, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    const/16 v2, 0x30

    invoke-static {v1, v2, v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    invoke-static {v1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    invoke-static {v1, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    invoke-static {v1, v0}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    invoke-static {v0, v0}, Landroid/view/View;->resolveSize(II)I

    invoke-static {v1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    invoke-static {v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    sget v0, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 54
    iput-object p2, p0, Lcom/appsflyer/internal/AFd1qSDK;->values:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1qSDK;->valueOf()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private AFInAppEventParameterName()Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "\u114d\udb2b\ue21f\u2d74\u2c10\u3abc\uee37\u30e2\ue460\u1471\u3d38\u914e\ud082\u44d3\u68d8\u1435\u5e49\u34d2\u6891\u92fa\uac97\u88d8\u0950\uc58b\u7a4f\u6fdb\u7518\uaa98\u2d38\u5a2f\ud7fa\ubbda\u3d57\u7d7b\u566c\uf367\u4b93\ube74\uc286\u9bcb\u7aa9\u3761\u5b5a\ufd5f"

    const-string v3, ""

    const/4 v4, 0x2

    .line 156
    rem-int v0, v4, v4

    const-wide/16 v5, 0x0

    const/16 v7, 0x30

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 121
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v12, "\ubdcd\u7343\u37e7\uaef3\u76b5\u8628\u342c\u7592\u520a\ue36f\u04b8\uf739"

    invoke-static {v11, v11}, Landroid/view/View;->getDefaultSize(II)I

    move-result v13

    rsub-int/lit8 v13, v13, 0xc

    new-array v14, v10, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v12, v14, v11

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v12, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    add-int/lit8 v13, v13, -0x22

    int-to-short v14, v13

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    int-to-byte v15, v13

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v13

    const v16, 0x6e712801

    sub-int v16, v16, v13

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v13, v17, v19

    rsub-int/lit8 v17, v13, -0x57

    invoke-static {v11, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    const v18, 0xf88d7e7

    add-int v18, v13, v18

    new-array v13, v10, [Ljava/lang/Object;

    move-object/from16 v19, v13

    invoke-static/range {v14 .. v19}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v13, v19, v11

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 123
    invoke-static {v3, v7, v11, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v13

    rsub-int/lit8 v13, v13, -0x2b

    int-to-short v14, v13

    invoke-static {v9, v9}, Landroid/graphics/PointF;->length(FF)F

    move-result v13

    cmpl-float v13, v13, v9

    int-to-byte v15, v13

    invoke-static {v11, v11, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v13

    const v16, 0x6e7127d1

    add-int v16, v13, v16

    invoke-static {v11, v11}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v17

    cmp-long v13, v17, v5

    add-int/lit8 v17, v13, -0x60

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    const v18, 0xf88d7f5

    sub-int v18, v18, v13

    new-array v13, v10, [Ljava/lang/Object;

    move-object/from16 v19, v13

    invoke-static/range {v14 .. v19}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v13, v19, v11

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 124
    const-string v14, "\ud238\u73ed\ub85a\ubddc\ucc3b\u6195"

    invoke-static {v7}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v15, v15, -0x2b

    const/16 v16, 0x2

    :try_start_1
    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v14, v15, v4}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v4, v4, v11

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v16, 0x2

    .line 129
    :goto_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/2addr v4, v8

    rsub-int/lit8 v4, v4, -0x7

    int-to-short v4, v4

    invoke-static {v9, v9}, Landroid/graphics/PointF;->length(FF)F

    move-result v12

    const v13, 0x6e712802

    const v14, 0xf88d7fa

    const v15, 0x6e7127fd

    cmpl-float v12, v12, v9

    int-to-byte v12, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v17

    shr-int/lit8 v17, v17, 0x10

    sub-int v19, v13, v17

    invoke-static {v11, v11}, Landroid/view/View;->getDefaultSize(II)I

    move-result v13

    rsub-int/lit8 v20, v13, -0x41

    invoke-static {v11}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x14

    shr-int/lit8 v13, v13, 0x6

    add-int v21, v13, v14

    new-array v13, v10, [Ljava/lang/Object;

    move/from16 v17, v4

    move/from16 v18, v12

    move-object/from16 v22, v13

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v4, v22, v11

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v12

    add-int/lit8 v12, v12, 0x2c

    new-array v13, v10, [Ljava/lang/Object;

    invoke-static {v2, v12, v13}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v12, v13, v11

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/2addr v4, v8

    rsub-int/lit8 v4, v4, -0x34

    int-to-short v4, v4

    invoke-static {v3, v7}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v12

    add-int/2addr v12, v10

    int-to-byte v12, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v13

    shr-int/lit8 v13, v13, 0x8

    sub-int v19, v15, v13

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v13

    shr-int/2addr v13, v8

    add-int/lit8 v20, v13, -0x55

    const v13, 0xf88d81e

    invoke-static {v3, v7, v11, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v14

    sub-int v21, v13, v14

    new-array v13, v10, [Ljava/lang/Object;

    move/from16 v17, v4

    move/from16 v18, v12

    move-object/from16 v22, v13

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v4, v22, v11

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 135
    :try_start_2
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1qSDK;->values:Landroid/content/Context;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "\u5d68\ubf26\u569b\u4794\u0d45\u6892\u36d6\u0c12\u68d8\u1435\u1cce\ucf3b\u12c1\ucf42\u5c23\u0ff7\u4227\u7125\uc10d\u516a\u8b75\uedc0\u505f\ucc1a\u563d\u4e22\ue950\u1522\ue27f\u975a\uc4db\u5870\u84d0\u6ca8\ua9cf\ua6d8\u890f\uec5b"

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    shr-int/2addr v14, v8

    add-int/lit8 v14, v14, 0x25

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v13, v15, v11

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v12, -0xa8c

    if-eqz v0, :cond_0

    .line 156
    sget v13, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v13, v13, 0x39

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/lit8 v13, v13, 0x2

    .line 138
    :try_start_3
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v13

    shr-int/2addr v13, v8

    rsub-int/lit8 v13, v13, -0x67

    int-to-short v13, v13

    invoke-static {v11, v11}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v14

    int-to-byte v14, v14

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    shr-int/lit8 v15, v15, 0x16

    const v17, 0x6e71280f

    add-int v19, v15, v17

    invoke-static {v11, v11}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v17

    cmp-long v15, v17, v5

    add-int/lit8 v20, v15, -0x5b

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v15

    shr-int/lit8 v15, v15, 0x18

    const v17, 0xf88d830

    sub-int v21, v17, v15

    new-array v15, v10, [Ljava/lang/Object;

    move/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v22, v15

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v13, v22, v11

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 140
    :cond_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFd1qSDK;->values:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const/4 v13, -0x1

    if-eqz v0, :cond_2

    .line 141
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v14

    cmpl-float v14, v14, v9

    add-int/lit8 v14, v14, 0x7

    int-to-short v14, v14

    invoke-static {v3, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    invoke-static {v11}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x14

    shr-int/lit8 v15, v15, 0x6

    const v17, 0x6e712813

    add-int v19, v15, v17

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v15

    cmpl-float v15, v15, v9

    add-int/lit8 v20, v15, -0x64

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    shr-int/lit8 v15, v15, 0x16

    const v17, 0xf88d83a

    add-int v21, v15, v17

    new-array v15, v10, [Ljava/lang/Object;

    move/from16 v18, v7

    move/from16 v17, v14

    move-object/from16 v22, v15

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v7, v22, v11

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eq v0, v10, :cond_1

    goto :goto_2

    .line 156
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v7, v0, 0x80

    sput v7, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 142
    :goto_3
    :try_start_4
    iget-object v7, v1, Lcom/appsflyer/internal/AFd1qSDK;->values:Landroid/content/Context;

    const-string v14, "\u23fa\u3df1\u1587\u0b8c\ud740\u1e85"

    invoke-static {v11, v9, v9}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v15

    cmpl-float v9, v15, v9

    add-int/lit8 v9, v9, 0x6

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v14, v9, v15}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v9, v15, v11

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/SensorManager;

    .line 143
    invoke-virtual {v7, v13}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4dc8\u498f"

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v14

    shr-int/2addr v14, v8

    add-int/2addr v14, v10

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v13, v15, v11

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v11, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v12

    add-int/lit8 v12, v12, -0x53

    int-to-short v12, v12

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v13

    add-int/2addr v13, v10

    int-to-byte v13, v13

    invoke-static {v3, v11}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v14

    const v15, 0x6e7127c1

    sub-int v19, v15, v14

    invoke-static {v3, v11, v11}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v14

    rsub-int/lit8 v20, v14, -0x65

    invoke-static {v3, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const v14, 0xf88d83c

    add-int v21, v3, v14

    new-array v3, v10, [Ljava/lang/Object;

    move-object/from16 v22, v3

    move/from16 v17, v12

    move/from16 v18, v13

    invoke-static/range {v17 .. v22}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v3, v22, v11

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u00df\u3756"

    invoke-static {v11, v11}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v12

    cmp-long v3, v12, v5

    rsub-int/lit8 v3, v3, 0x1

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v0, v5, v11

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u1db9\u3f75"

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x2

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v0, v5, v11

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-static {v0}, Lcom/appsflyer/internal/AFd1qSDK$AFa1ySDK;->AFKeystoreWrapper(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFd1qSDK$AFa1ySDK;->values([B)[B

    move-result-object v0

    .line 1189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    array-length v6, v0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_4

    aget-byte v9, v0, v7

    .line 1191
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 1192
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v10, :cond_3

    .line 1193
    const-string v12, "0"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1195
    :cond_3
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1197
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 156
    sget v2, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 152
    invoke-static {v11}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v3

    add-int/2addr v3, v8

    new-array v5, v10, [Ljava/lang/Object;

    const-string v6, "\uac60\ue0a1\u4582\ueeac\ueff2\u047e\u9be5\ueaf3\ue575\u9e4b\u3d57\u7d7b\ua4b6\u9819\ud740\u1e85"

    invoke-static {v6, v3, v5}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v3, v5, v11

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v5, v5, 0x2c

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v6, v11

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    sub-int/2addr v8, v2

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "\u63c4\u21d5\u44cf\u9328\uf8cf\u74c6\u3861\u5194\u81ea\u99b7(\u3ea3\u9836\u2953\u70af\u4344"

    invoke-static {v3, v8, v2}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v2, v2, v11

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method static AFInAppEventType()V
    .locals 1

    const/16 v0, 0x5ec8

    sput-char v0, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper:C

    const v0, 0xf8e9

    sput-char v0, Lcom/appsflyer/internal/AFd1qSDK;->registerClient:C

    const/16 v0, 0x1564

    sput-char v0, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType:C

    const v0, 0xfc6f

    sput-char v0, Lcom/appsflyer/internal/AFd1qSDK;->valueOf:C

    const v0, -0x4e0f7081

    sput v0, Lcom/appsflyer/internal/AFd1qSDK;->e:I

    const v0, 0x4187a769

    sput v0, Lcom/appsflyer/internal/AFd1qSDK;->AFLogger:I

    const v0, -0x2ff68095

    sput v0, Lcom/appsflyer/internal/AFd1qSDK;->unregisterClient:I

    const/16 v0, 0xb9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x38t
        -0x4ft
        -0x7t
        0x0t
        -0x5t
        0x54t
        -0x5ct
        0x19t
        -0xdt
        0x40t
        -0x4dt
        0xat
        -0xdt
        0x40t
        -0x4et
        -0xet
        0x6t
        -0xat
        0x18t
        -0x4t
        0x1et
        -0xct
        0x2t
        0xft
        0x44t
        -0x4ft
        0xct
        -0xet
        0x8t
        0x5t
        -0x10t
        0x47t
        -0x5ct
        0x19t
        0x13t
        0x12t
        -0x2ft
        -0x15t
        0x1ct
        0xft
        0x44t
        -0x69t
        0x71t
        -0x44t
        -0x49t
        -0x5at
        -0x47t
        -0x50t
        -0x45t
        -0x70t
        -0x38t
        -0xat
        0x65t
        -0x57t
        -0x50t
        -0x55t
        0x4t
        0x54t
        -0x37t
        -0x5dt
        -0x10t
        0x63t
        -0x46t
        -0x5dt
        -0x10t
        0x62t
        -0x5et
        -0x4at
        -0x5at
        -0x38t
        -0x54t
        -0x32t
        -0x5ct
        -0x4et
        -0x41t
        -0xct
        0x61t
        -0x44t
        -0x5et
        -0x48t
        -0x4bt
        -0x60t
        -0x55t
        -0x55t
        -0x55t
        0x76t
        -0x58t
        -0x6ft
        0x1dt
        0x3bt
        0x31t
        -0x10t
        0x29t
        0x19t
        0x15t
        0x38t
        0x39t
        -0xct
        0x2dt
        0x2dt
        0x25t
        0x2bt
        0x22t
        0x2bt
        0x22t
        0x23t
        0x2ct
        -0x7t
        0x1et
        0x1ct
        -0x4t
        0x53t
        -0x31t
        0x6t
        0xft
        0x5ct
        -0x32t
        0xet
        0x2t
        -0xet
        0x14t
        -0x8t
        0x1at
        -0x10t
        0x1et
        0xbt
        0x40t
        -0x33t
        0x8t
        0xet
        0x4t
        0x1t
        0xct
        0x43t
        -0x34t
        -0x7t
        0x1et
        0x1ct
        0x1ct
        0x25t
        -0x13t
        -0x19t
        0x18t
        0xbt
        0x35t
        0x3bt
        0x3ct
        0xet
        0x67t
        0x22t
        0x7t
        0x66t
        0x3et
        0x3dt
        0x37t
        -0xft
        0x36t
        0x3et
        0x39t
        0x3bt
        0x3dt
        0x54t
        0x6at
        0x66t
        0x74t
        0x58t
        0x7at
        0x52t
        0x64t
        0x61t
        0x56t
        -0x7t
        -0x49t
        -0x55t
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
    .end array-data
.end method

.method private static varargs AFKeystoreWrapper([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 77
    rem-int v1, v0, v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    array-length v2, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v3

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :cond_1
    :goto_1
    if-ge v5, v1, :cond_4

    .line 70
    array-length v6, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_3

    .line 77
    sget v8, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    add-int/lit8 v8, v8, 0x6b

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    rem-int/2addr v8, v0

    .line 70
    aget-object v8, p0, v7

    .line 71
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-nez v6, :cond_2

    .line 77
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    add-int/lit8 v6, v6, 0xd

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    :goto_3
    rem-int/2addr v6, v0

    goto :goto_4

    .line 72
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    xor-int/2addr v8, v6

    .line 77
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v6, v6, 0x39

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    goto :goto_3

    .line 72
    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    .line 77
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    add-int/lit8 v6, v6, 0x37

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    rem-int/2addr v6, v0

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    rem-int/2addr v6, v6

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 18

    const/4 v0, 0x2

    .line 2124
    rem-int v1, v0, v0

    if-eqz p0, :cond_0

    .line 0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2124
    sget v2, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    rem-int/2addr v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    .line 0
    :goto_0
    check-cast v1, [C

    .line 2095
    new-instance v2, Lcom/appsflyer/internal/AFj1pSDK;

    invoke-direct {v2}, Lcom/appsflyer/internal/AFj1pSDK;-><init>()V

    .line 2097
    array-length v3, v1

    new-array v3, v3, [C

    const/4 v4, 0x0

    .line 2099
    iput v4, v2, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    .line 2100
    new-array v5, v0, [C

    .line 2124
    sget v6, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    add-int/lit8 v6, v6, 0x41

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    rem-int/2addr v6, v0

    .line 2101
    :goto_1
    iget v6, v2, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 2103
    iget v6, v2, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    aget-char v6, v1, v6

    aput-char v6, v5, v4

    .line 2104
    iget v6, v2, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aget-char v6, v1, v6

    aput-char v6, v5, v7

    const v6, 0xe370

    const/4 v8, 0x0

    :goto_2
    const/16 v9, 0x10

    if-ge v8, v9, :cond_1

    .line 2124
    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/lit8 v10, v9, 0x1

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/2addr v10, v0

    .line 2109
    aget-char v10, v5, v7

    aget-char v11, v5, v4

    add-int v12, v11, v6

    shl-int/lit8 v13, v11, 0x4

    sget-char v14, Lcom/appsflyer/internal/AFd1qSDK;->valueOf:C

    int-to-long v14, v14

    const-wide v16, -0x2228788a10b648eL

    xor-long v14, v14, v16

    long-to-int v15, v14

    int-to-char v14, v15

    add-int/2addr v13, v14

    xor-int/2addr v12, v13

    ushr-int/lit8 v13, v11, 0x5

    sget-char v14, Lcom/appsflyer/internal/AFd1qSDK;->registerClient:C

    int-to-long v14, v14

    xor-long v14, v14, v16

    long-to-int v15, v14

    int-to-char v14, v15

    add-int/2addr v13, v14

    xor-int/2addr v12, v13

    sub-int/2addr v10, v12

    int-to-char v10, v10

    aput-char v10, v5, v7

    add-int v12, v10, v6

    shl-int/lit8 v13, v10, 0x4

    .line 2112
    sget-char v14, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventType:C

    int-to-long v14, v14

    xor-long v14, v14, v16

    long-to-int v15, v14

    int-to-char v14, v15

    add-int/2addr v13, v14

    xor-int/2addr v12, v13

    ushr-int/lit8 v10, v10, 0x5

    sget-char v13, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper:C

    int-to-long v13, v13

    xor-long v13, v13, v16

    long-to-int v14, v13

    int-to-char v13, v14

    add-int/2addr v10, v13

    xor-int/2addr v10, v12

    sub-int/2addr v11, v10

    int-to-char v10, v11

    aput-char v10, v5, v4

    const v10, 0x9e37

    sub-int/2addr v6, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1f

    .line 2124
    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/2addr v9, v0

    goto :goto_2

    .line 2118
    :cond_1
    iget v6, v2, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    aget-char v8, v5, v4

    aput-char v8, v3, v6

    .line 2119
    iget v6, v2, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    add-int/2addr v6, v7

    aget-char v7, v5, v7

    aput-char v7, v3, v6

    .line 2120
    iget v6, v2, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    add-int/2addr v6, v0

    iput v6, v2, Lcom/appsflyer/internal/AFj1pSDK;->AFKeystoreWrapper:I

    goto/16 :goto_1

    .line 2124
    :cond_2
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v4

    return-void
.end method

.method private static b(SBIII[Ljava/lang/Object;)V
    .locals 14

    const/4 v0, 0x2

    .line 2246
    rem-int v1, v0, v0

    .line 2186
    new-instance v1, Lcom/appsflyer/internal/AFj1nSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFj1nSDK;-><init>()V

    .line 2187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2190
    sget v3, Lcom/appsflyer/internal/AFd1qSDK;->AFLogger:I

    int-to-long v3, v3

    const-wide v5, 0x6c7e5d154187a70eL    # 4.08874731179044E214

    xor-long/2addr v3, v5

    long-to-int v4, v3

    add-int v3, p3, v4

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v3, v4, :cond_0

    .line 2246
    sget v4, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/lit8 v4, v4, 0x1d

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/2addr v4, v0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eq v4, v8, :cond_1

    goto :goto_2

    .line 2194
    :cond_1
    sget-object v3, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    if-eqz v3, :cond_4

    .line 2246
    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/2addr v9, v8

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/2addr v9, v0

    if-eqz v9, :cond_2

    array-length v9, v3

    new-array v10, v9, [B

    const/4 v11, 0x1

    goto :goto_1

    .line 2194
    :cond_2
    array-length v9, v3

    new-array v10, v9, [B

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_3

    aget-byte v12, v3, v11

    int-to-long v12, v12

    xor-long/2addr v12, v5

    long-to-int v13, v12

    int-to-byte v12, v13

    aput-byte v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move-object v3, v10

    :cond_4
    if-eqz v3, :cond_5

    .line 2196
    sget-object v3, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->e:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v10, v9

    add-int v10, p4, v10

    aget-byte v3, v3, v10

    int-to-long v9, v3

    xor-long/2addr v9, v5

    long-to-int v3, v9

    int-to-byte v3, v3

    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->AFLogger:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v10, v9

    add-int/2addr v3, v10

    int-to-byte v3, v3

    goto :goto_2

    .line 2202
    :cond_5
    sget-object v3, Lcom/appsflyer/internal/AFd1qSDK;->v:[S

    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->e:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v10, v9

    add-int v10, p4, v10

    aget-short v3, v3, v10

    int-to-long v9, v3

    xor-long/2addr v9, v5

    long-to-int v3, v9

    int-to-short v3, v3

    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->AFLogger:I

    int-to-long v9, v9

    xor-long/2addr v9, v5

    long-to-int v10, v9

    add-int/2addr v3, v10

    int-to-short v3, v3

    .line 2246
    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    add-int/lit8 v9, v9, 0x23

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    rem-int/2addr v9, v0

    :goto_2
    if-lez v3, :cond_a

    sget v9, Lcom/appsflyer/internal/AFd1qSDK;->$11:I

    add-int/lit8 v9, v9, 0x7d

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFd1qSDK;->$10:I

    rem-int/2addr v9, v0

    add-int v9, p4, v3

    sub-int/2addr v9, v0

    .line 2211
    sget v0, Lcom/appsflyer/internal/AFd1qSDK;->e:I

    int-to-long v10, v0

    xor-long/2addr v10, v5

    long-to-int v0, v10

    add-int/2addr v9, v0

    add-int/2addr v9, v4

    iput v9, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    .line 2222
    sget v0, Lcom/appsflyer/internal/AFd1qSDK;->unregisterClient:I

    int-to-long v9, v0

    xor-long/2addr v9, v5

    long-to-int v0, v9

    add-int v0, p2, v0

    int-to-char v0, v0

    iput-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    .line 2223
    iget-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2226
    iget-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    iput-char v0, v1, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    .line 2227
    sget-object v0, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    if-eqz v0, :cond_7

    array-length v4, v0

    new-array v9, v4, [B

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_6

    aget-byte v11, v0, v10

    int-to-long v11, v11

    xor-long/2addr v11, v5

    long-to-int v12, v11

    int-to-byte v11, v12

    aput-byte v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v9

    :cond_7
    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 2228
    :goto_4
    iput v8, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    :goto_5
    iget v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    if-ge v4, v3, :cond_a

    if-eqz v0, :cond_9

    .line 2233
    sget-object v4, Lcom/appsflyer/internal/AFd1qSDK;->d:[B

    iget v9, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    aget-byte v4, v4, v9

    int-to-long v9, v4

    xor-long/2addr v9, v5

    long-to-int v4, v9

    int-to-byte v4, v4

    .line 2234
    iget-char v9, v1, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    add-int/2addr v4, p0

    int-to-byte v4, v4

    xor-int/2addr v4, p1

    add-int/2addr v9, v4

    int-to-char v4, v9

    iput-char v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    goto :goto_6

    .line 2238
    :cond_9
    sget-object v4, Lcom/appsflyer/internal/AFd1qSDK;->v:[S

    iget v9, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFInAppEventParameterName:I

    aget-short v4, v4, v9

    int-to-long v9, v4

    xor-long/2addr v9, v5

    long-to-int v4, v9

    int-to-short v4, v4

    .line 2239
    iget-char v9, v1, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    add-int/2addr v4, p0

    int-to-short v4, v4

    xor-int/2addr v4, p1

    add-int/2addr v9, v4

    int-to-char v4, v9

    iput-char v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    .line 2241
    :goto_6
    iget-char v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2242
    iget-char v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->valueOf:C

    iput-char v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->values:C

    .line 2228
    iget v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    add-int/2addr v4, v8

    iput v4, v1, Lcom/appsflyer/internal/AFj1nSDK;->AFKeystoreWrapper:I

    goto :goto_5

    .line 2246
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p5, v7

    return-void
.end method

.method private valueOf()Ljava/lang/String;
    .locals 22

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v0, 0x2

    .line 113
    rem-int v3, v0, v0

    sget v3, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v3, v3, 0x59

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/2addr v3, v0

    const/16 v3, 0x30

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 83
    :try_start_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 84
    iget-object v10, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v11, "\ubdcd\u7343\u37e7\uaef3\u76b5\u8628\u342c\u7592\u520a\ue36f\u04b8\uf739"

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v12

    cmpl-float v12, v12, v4

    add-int/lit8 v12, v12, 0xb

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v11, v13, v8

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 85
    iget-object v11, v1, Lcom/appsflyer/internal/AFd1qSDK;->AFInAppEventParameterName:Ljava/util/Map;

    const-string v12, "\u8e04\ue9ed\u5d68\ubf26\u763a\uf25e"

    invoke-static {v2, v3, v8}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v13

    const/4 v14, 0x4

    rsub-int/lit8 v13, v13, 0x4

    new-array v15, v7, [Ljava/lang/Object;

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v12, v15, v8

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_0

    .line 88
    const-string v11, "\u5e8d\u0370\ube05\u9f02\u7a30\ueec8\ue3ac\uc0e1"

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x8

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFd1qSDK;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v11, v13, v8

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 91
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v9, v11, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/appsflyer/internal/AFd1qSDK;->AFKeystoreWrapper([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 95
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v10, v14, :cond_2

    .line 113
    sget v11, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    add-int/lit8 v11, v11, 0x5

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    rem-int/2addr v11, v0

    if-nez v11, :cond_1

    .line 98
    :try_start_1
    invoke-virtual {v9, v0, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v14, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v10, v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x31

    .line 104
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    sget v11, Lcom/appsflyer/internal/AFd1qSDK;->w:I

    add-int/lit8 v11, v11, 0x19

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFd1qSDK;->force:I

    rem-int/2addr v11, v0

    goto :goto_0

    .line 107
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v2, v8}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    int-to-short v10, v0

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-byte v11, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    const v12, 0x6e712806

    sub-int/2addr v12, v0

    invoke-static {v4, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    cmpl-float v0, v0, v4

    rsub-int/lit8 v13, v0, -0x64

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    const v14, 0xf88d78f

    sub-int/2addr v14, v0

    new-array v15, v7, [Ljava/lang/Object;

    invoke-static/range {v10 .. v15}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v0, v15, v8

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const v11, 0x6e7127bb

    const v12, 0xf88d791

    const v13, 0x6e712800

    const v14, 0x6e712805

    const v15, 0xf88d7e1

    cmp-long v16, v9, v5

    rsub-int/lit8 v9, v16, -0x2

    int-to-short v9, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v16

    shr-int/lit8 v16, v16, 0x10

    add-int v18, v16, v11

    invoke-static {v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v11

    add-int/lit8 v19, v11, -0x3e

    invoke-static {v8}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v11

    cmpl-float v4, v11, v4

    sub-int v20, v12, v4

    new-array v4, v7, [Ljava/lang/Object;

    move-object/from16 v21, v4

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-static/range {v16 .. v21}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v4, v21, v8

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v9

    add-int/lit8 v9, v9, 0x4e

    int-to-short v9, v9

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v10

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v11

    cmp-long v16, v11, v5

    add-int v18, v16, v13

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v11

    rsub-int/lit8 v19, v11, -0x3d

    const v11, 0xf88d7b8

    invoke-static {v2, v2, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v12

    sub-int v20, v11, v12

    new-array v11, v7, [Ljava/lang/Object;

    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v21, v11

    invoke-static/range {v16 .. v21}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v9, v21, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 113
    invoke-static {v2, v3, v8}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit8 v0, v0, 0x5c

    int-to-short v0, v0

    invoke-static {v8}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    cmp-long v11, v9, v5

    add-int v18, v11, v14

    invoke-static {v2, v3, v8}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    rsub-int/lit8 v19, v2, -0x61

    invoke-static {}, Landroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int v20, v2, v15

    new-array v2, v7, [Ljava/lang/Object;

    move/from16 v16, v0

    move-object/from16 v21, v2

    move/from16 v17, v4

    invoke-static/range {v16 .. v21}, Lcom/appsflyer/internal/AFd1qSDK;->b(SBIII[Ljava/lang/Object;)V

    aget-object v0, v21, v8

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
