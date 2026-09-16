.class public Lcom/localService/localPush;
.super Ljava/lang/Object;
.source "localPush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localService/localPush$PushData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "localPush"

.field static m_com:Lcom/igg/android/conquerors/col; = null

.field private static m_lock:Ljava/lang/Object; = null

.field public static final m_sTid:Ljava/lang/String; = "pusgstr"

.field private static m_splitNotify:Ljava/lang/String; = "&"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/localService/localPush;->m_lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearPush()V
    .locals 6

    .line 122
    const-string v0, "clearPush"

    const-string v1, "localPush"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/localService/localPush;->m_com:Lcom/igg/android/conquerors/col;

    invoke-virtual {v2}, Lcom/igg/android/conquerors/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/localService/AlarmReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    sget-object v2, Lcom/localService/localPush;->m_com:Lcom/igg/android/conquerors/col;

    const-string v3, "alarm"

    .line 128
    invoke-virtual {v2, v3}, Lcom/igg/android/conquerors/col;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 131
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    const/high16 v3, 0xc000000

    goto :goto_0

    :cond_0
    const/high16 v3, 0x8000000

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    .line 135
    sget-object v5, Lcom/localService/localPush;->m_com:Lcom/igg/android/conquerors/col;

    .line 136
    invoke-virtual {v5}, Lcom/igg/android/conquerors/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 135
    invoke-static {v5, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 140
    invoke-virtual {v2, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 144
    const-string v2, "error"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static getNotifyPath()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getCocos2dxWritablePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/conquerors_notify_file.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPushData()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/localService/localPush$PushData;",
            ">;"
        }
    .end annotation

    .line 152
    const-string v0, "localPush"

    const-string v1, "getPushData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v0, Lcom/localService/localPush;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_0
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/localService/localPush;->getNotifyPath()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {v3, v2}, Lcom/CommonUtility;->getFileBySplit(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 160
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 162
    :cond_0
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 165
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    .line 166
    sget-object v8, Lcom/localService/localPush;->m_splitNotify:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 167
    new-instance v8, Lcom/localService/localPush$PushData;

    invoke-direct {v8}, Lcom/localService/localPush$PushData;-><init>()V

    .line 168
    aget-object v9, v7, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/localService/localPush$PushData;->iPushTime:J

    const/4 v9, 0x1

    .line 169
    aget-object v10, v7, v9

    iput-object v10, v8, Lcom/localService/localPush$PushData;->sPushTxt:Ljava/lang/String;

    .line 170
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v8, "localPush"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPushData Data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v7, v9

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    :cond_1
    :try_start_3
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 179
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static init(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 35
    sput-object p0, Lcom/localService/localPush;->m_com:Lcom/igg/android/conquerors/col;

    return-void
.end method

.method private static push(ILjava/lang/String;I)V
    .locals 8

    const-string v0, "time:"

    .line 73
    sget-object v1, Lcom/localService/localPush;->m_com:Lcom/igg/android/conquerors/col;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 p0, p0, 0x5

    .line 78
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/localService/localPush;->m_com:Lcom/igg/android/conquerors/col;

    invoke-virtual {v2}, Lcom/igg/android/conquerors/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/localService/AlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v2, "pusgstr"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0xd

    .line 83
    invoke-virtual {v2, v3, p0}, Ljava/util/Calendar;->add(II)V

    .line 85
    sget-object v3, Lcom/localService/localPush;->m_com:Lcom/igg/android/conquerors/col;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Lcom/igg/android/conquerors/col;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 88
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    const/high16 v4, 0xc000000

    goto :goto_0

    :cond_1
    const/high16 v4, 0x8000000

    .line 92
    :goto_0
    sget-object v6, Lcom/localService/localPush;->m_com:Lcom/igg/android/conquerors/col;

    .line 93
    invoke-virtual {v6}, Lcom/igg/android/conquerors/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 92
    invoke-static {v6, p2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 95
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    const/4 v7, 0x2

    if-lt v4, v6, :cond_2

    .line 96
    invoke-static {v3}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlarmManager;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 97
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_4

    .line 98
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v3, v7, v4, v5, v1}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 101
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_3

    .line 103
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v3, v7, v4, v5, v1}, Lcom/CommonUtility$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 113
    :cond_4
    :goto_1
    const-string v1, "localPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " text:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " id:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " calendar :"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static pushBeg()V
    .locals 10

    .line 52
    :try_start_0
    invoke-static {}, Lcom/localService/localPush;->getPushData()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 56
    :cond_0
    invoke-static {}, Lcom/localService/localPush;->clearPush()V

    .line 57
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 58
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 59
    div-long/2addr v1, v3

    const/4 v3, 0x0

    .line 60
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 61
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/localService/localPush$PushData;

    .line 62
    iget-wide v5, v4, Lcom/localService/localPush$PushData;->iPushTime:J

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    long-to-int v6, v5

    .line 64
    iget-object v4, v4, Lcom/localService/localPush$PushData;->sPushTxt:Ljava/lang/String;

    invoke-static {v6, v4, v3}, Lcom/localService/localPush;->push(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static pushClear()V
    .locals 1

    .line 40
    :try_start_0
    invoke-static {}, Lcom/localService/localPush;->clearPush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
