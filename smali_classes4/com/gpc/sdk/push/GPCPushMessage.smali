.class public Lcom/gpc/sdk/push/GPCPushMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CHANNEL_ID:Ljava/lang/String; = "1"

.field public static CHANNEL_NAME:Ljava/lang/String; = "Channel1"

.field public static final p:Ljava/lang/String; = "GPCPushMessage"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Landroid/os/Bundle;

.field public o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "0"

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->o:Z

    .line 47
    iput-object p2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/gpc/sdk/push/GPCPushMessage;->b:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/gpc/sdk/push/GPCPushMessage;->c:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/gpc/sdk/push/GPCPushMessage;->d:Ljava/lang/String;

    .line 51
    iput p1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->e:I

    .line 52
    iput-object p6, p0, Lcom/gpc/sdk/push/GPCPushMessage;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->o:Z

    .line 67
    iput p1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->e:I

    .line 68
    iput-object p2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/gpc/sdk/push/GPCPushMessage;->b:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/gpc/sdk/push/GPCPushMessage;->c:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/gpc/sdk/push/GPCPushMessage;->d:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/gpc/sdk/push/GPCPushMessage;->f:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lcom/gpc/sdk/push/GPCPushMessage;->h:Ljava/lang/String;

    .line 75
    iput-object p9, p0, Lcom/gpc/sdk/push/GPCPushMessage;->i:Ljava/lang/String;

    .line 76
    iput-object p10, p0, Lcom/gpc/sdk/push/GPCPushMessage;->j:Ljava/lang/String;

    .line 77
    iput-object p11, p0, Lcom/gpc/sdk/push/GPCPushMessage;->k:Ljava/lang/String;

    .line 78
    iput-object p12, p0, Lcom/gpc/sdk/push/GPCPushMessage;->l:Ljava/lang/String;

    .line 79
    iput-object p13, p0, Lcom/gpc/sdk/push/GPCPushMessage;->m:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/gpc/sdk/push/GPCPushMessage;->a()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->n:Landroid/os/Bundle;

    return-void
.end method

.method public static create(Landroid/os/Bundle;I)Lcom/gpc/sdk/push/GPCPushMessage;
    .locals 16

    move-object/from16 v0, p0

    if-eqz v0, :cond_0

    .line 1
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    const-string v1, "m_crm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    const-string v1, "m_qid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    const-string v1, "m_display"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    const-string v1, "m_source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",crm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",qid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCPushMessage"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v1, "extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 9
    const-string v1, "ex_layout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 10
    const-string v1, "ex_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 11
    const-string v1, "ex_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 12
    const-string v1, "ex_image_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 13
    const-string v1, "ex_button_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 14
    const-string v1, "ex_button_extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",imageUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",buttonName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",buttonExtra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v2, Lcom/gpc/sdk/push/GPCPushMessage;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/gpc/sdk/push/GPCPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static create(Lorg/json/JSONObject;I)Lcom/gpc/sdk/push/GPCPushMessage;
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "m_source"

    const-string v2, "m_display"

    const-string v3, "m_crm"

    const-string v4, "m_qid"

    const-string v5, "msg"

    const-string v6, ""

    const-string v7, "GPCPushMessage"

    const-string v8, "extra:"

    const-string v9, "msg:"

    .line 18
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 21
    const-string v0, "The data is illegal. msg not found."

    invoke-static {v7, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 24
    :cond_0
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 25
    const-string v0, "The data is illegal. m_qid not found."

    invoke-static {v7, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 28
    :cond_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 32
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 33
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_0

    :cond_2
    move-object v14, v6

    .line 37
    :goto_0
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 38
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v6

    .line 41
    :goto_1
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v6

    .line 44
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",crm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",qid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",display:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    const-string v4, "ex_layout"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    const-string v5, "ex_title"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    const-string v9, "ex_content"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    const-string v11, "ex_image_url"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 51
    const-string v12, "ex_button_name"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v25, v10

    .line 52
    :try_start_1
    const-string v10, "ex_button_extra"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",layout:"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",title:"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",content:"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",imageUrl:"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",buttonName:"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",buttonExtra:"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v11

    .line 55
    new-instance v11, Lcom/gpc/sdk/push/GPCPushMessage;

    move-object/from16 v23, v0

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    move-object/from16 v24, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    move-object/from16 v22, v12

    move/from16 v12, p1

    invoke-direct/range {v11 .. v24}, Lcom/gpc/sdk/push/GPCPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v25, v10

    .line 57
    :goto_3
    invoke-static {v7, v6, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v25
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 9

    .line 87
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 88
    iput p2, v0, Landroid/app/Notification;->icon:I

    .line 91
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "setLatestEventInfo"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Landroid/app/PendingIntent;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {p2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 92
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p3, v2, v6

    aput-object v1, v2, v7

    aput-object p4, v2, v8

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 95
    :goto_0
    const-string p2, "GPCPushMessage"

    const-string p3, "Method not found"

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->c:Ljava/lang/String;

    const-string v2, "m_qid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->d:Ljava/lang/String;

    const-string v2, "m_display"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->b:Ljava/lang/String;

    const-string v2, "m_crm"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->f:Ljava/lang/String;

    const-string v2, "m_source"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->m:Ljava/lang/String;

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    const-string v2, "ex_layout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->h:Ljava/lang/String;

    const-string v2, "ex_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->i:Ljava/lang/String;

    const-string v2, "ex_content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->j:Ljava/lang/String;

    const-string v2, "ex_image_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->k:Ljava/lang/String;

    const-string v2, "ex_button_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->l:Ljava/lang/String;

    const-string v2, "ex_button_extra"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    const-string v2, "msg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->c:Ljava/lang/String;

    const-string v2, "m_qid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->d:Ljava/lang/String;

    const-string v2, "m_display"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->b:Ljava/lang/String;

    const-string v2, "m_crm"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/gpc/sdk/push/GPCMessageMarker;->getAPPState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 103
    const-string v1, "m_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 40
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/push/GPCPushMessage;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCPushMessage"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->c:Ljava/lang/String;

    const-string v3, "messageId"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcom/gpc/sdk/push/GPCMessageMarker;->getAPPState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "messageState"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 53
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/gpc/sdk/push/GPCPushMessage;->b()I

    move-result v2

    const/high16 v3, 0xc000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/gpc/sdk/push/GPCPushMessage;->b()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_0
    const/16 v2, 0x19

    if-le v0, v2, :cond_2

    .line 66
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/gpc/sdk/push/GPCPushMessage;->c(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 72
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/gpc/sdk/push/GPCPushMessage;->b(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p2

    .line 81
    iget p3, p2, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p2, Landroid/app/Notification;->flags:I

    const/4 p3, 0x4

    .line 82
    iput p3, p2, Landroid/app/Notification;->defaults:I

    .line 85
    const-string p3, "notification"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 86
    invoke-virtual {p0}, Lcom/gpc/sdk/push/GPCPushMessage;->b()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/push/GPCPushMessage;->a(Landroid/content/Context;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    iget-object p2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/gpc/sdk/push/GPCPushMessage;->b(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/gpc/sdk/push/GPCPushMessage;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Z)Z
    .locals 5

    const-string v0, "isAPPRun: "

    .line 21
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "GPCPushMessage"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "notificationsEnabledInGame: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->o:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean p2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->o:Z

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/gpc/util/DeviceUtil;->isAPPRun(Landroid/content/Context;)Z

    move-result p2

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 33
    invoke-static {p1}, Lcom/gpc/util/backgroundcheck/SDKBackgroundUtil;->isAppInForeground(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :cond_1
    return v1

    :catch_0
    move-exception p1

    .line 38
    const-string p2, ""

    invoke-static {v3, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_2
    return v1

    .line 39
    :cond_3
    :goto_0
    const-string p1, "!TextUtils.isEmpty(crmInfo) || TextUtils.isEmpty(msg) || isCustom"

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public b()I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0xc350

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "randomIntValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCPushMessage"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public b(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 4

    .line 35
    iget v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->e:I

    if-gtz v0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/gpc/util/Utils;->getApplicationIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->e:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p3, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->c:Ljava/lang/String;

    const-string v2, "messageId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Lcom/gpc/sdk/push/GPCMessageMarker;->getAPPState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "messageState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Lcom/gpc/sdk/push/helper/a$e;

    invoke-direct {v1}, Lcom/gpc/sdk/push/helper/a$e;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/gpc/sdk/push/helper/a$e;->a:Ljava/lang/String;

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    iput-object p3, v1, Lcom/gpc/sdk/push/helper/a$e;->a:Ljava/lang/String;

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->i:Ljava/lang/String;

    iput-object v2, v1, Lcom/gpc/sdk/push/helper/a$e;->b:Ljava/lang/String;

    .line 15
    iget-object v2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->m:Ljava/lang/String;

    iput-object v2, v1, Lcom/gpc/sdk/push/helper/a$e;->f:Ljava/lang/String;

    .line 16
    iget-object v2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/gpc/sdk/push/helper/a$e;->c:Ljava/lang/String;

    .line 17
    iget-object v2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->k:Ljava/lang/String;

    iput-object v2, v1, Lcom/gpc/sdk/push/helper/a$e;->e:Ljava/lang/String;

    .line 18
    iget-object v2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->l:Ljava/lang/String;

    iput-object v2, v1, Lcom/gpc/sdk/push/helper/a$e;->g:Ljava/lang/String;

    .line 19
    iput p2, v1, Lcom/gpc/sdk/push/helper/a$e;->h:I

    .line 20
    iput p2, v1, Lcom/gpc/sdk/push/helper/a$e;->i:I

    .line 21
    iput-object v0, v1, Lcom/gpc/sdk/push/helper/a$e;->j:Landroid/os/Bundle;

    .line 22
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->n:Landroid/os/Bundle;

    iput-object v0, v1, Lcom/gpc/sdk/push/helper/a$e;->k:Landroid/os/Bundle;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "layout : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPCPushMessage"

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p1, v1}, Lcom/gpc/sdk/push/helper/a;->e(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V

    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-static {p1, v1}, Lcom/gpc/sdk/push/helper/a;->d(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V

    return-void

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-static {p1, v1}, Lcom/gpc/sdk/push/helper/a;->f(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V

    return-void

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    invoke-static {p1, v1}, Lcom/gpc/sdk/push/helper/a;->b(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V

    return-void

    .line 34
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/gpc/sdk/push/GPCPushMessage;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4

    .line 1
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3
    invoke-static {}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m$2()V

    sget-object v1, Lcom/gpc/sdk/push/GPCPushMessage;->CHANNEL_ID:Ljava/lang/String;

    sget-object v2, Lcom/gpc/sdk/push/GPCPushMessage;->CHANNEL_NAME:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    const v3, -0xff0100

    .line 6
    invoke-static {v1, v3}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 7
    invoke-static {v1, v2}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 8
    invoke-static {v0, v1}, Landroidx/activity/ComponentDialog$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 10
    invoke-static {}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m$3()V

    sget-object v1, Lcom/gpc/sdk/push/GPCPushMessage;->CHANNEL_ID:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 13
    iget v3, p0, Lcom/gpc/sdk/push/GPCPushMessage;->e:I

    if-gtz v3, :cond_0

    .line 15
    invoke-static {p1}, Lcom/gpc/util/Utils;->getApplicationIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 18
    iget v3, p0, Lcom/gpc/sdk/push/GPCPushMessage;->e:I

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 20
    :goto_0
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 27
    invoke-virtual {p0}, Lcom/gpc/sdk/push/GPCPushMessage;->b()I

    move-result p1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public getButtonExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCrmInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    const-string v0, "GPCPushMessage"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayout()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->n:Landroid/os/Bundle;

    return-object p1
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isNotificationsEnabledInGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->o:Z

    return v0
.end method

.method public isTargetSource()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "GPCPushMessage"

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "source is null."

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushMessage;->f:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "source is "

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/push/GPCPushMessage;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ignore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public notify(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/push/GPCPushMessage;->sendToMessageCenter(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gpc/sdk/push/GPCPushMessage;->a(Landroid/content/Context;ZILjava/lang/String;)V

    return-void
.end method

.method public sendToMessageCenter(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-string v1, "action.GPCNotification_message_rceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/push/GPCPushMessage;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setNotificationsEnabledInGame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->o:Z

    return-void
.end method

.method public setOriginalData(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/GPCPushMessage;->n:Landroid/os/Bundle;

    return-void
.end method
