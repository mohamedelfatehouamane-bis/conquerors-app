.class public Lcom/instacart/library/truetime/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final INDEX_ORIGINATE_TIME:I = 0x18

.field private static final INDEX_RECEIVE_TIME:I = 0x20

.field private static final INDEX_ROOT_DELAY:I = 0x4

.field private static final INDEX_ROOT_DISPERSION:I = 0x8

.field private static final INDEX_TRANSMIT_TIME:I = 0x28

.field private static final INDEX_VERSION:I = 0x0

.field private static final NTP_MODE:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field public static final RESPONSE_INDEX_DISPERSION:I = 0x5

.field public static final RESPONSE_INDEX_ORIGINATE_TIME:I = 0x0

.field public static final RESPONSE_INDEX_RECEIVE_TIME:I = 0x1

.field public static final RESPONSE_INDEX_RESPONSE_TICKS:I = 0x7

.field public static final RESPONSE_INDEX_RESPONSE_TIME:I = 0x3

.field public static final RESPONSE_INDEX_ROOT_DELAY:I = 0x4

.field public static final RESPONSE_INDEX_SIZE:I = 0x8

.field public static final RESPONSE_INDEX_STRATUM:I = 0x6

.field public static final RESPONSE_INDEX_TRANSMIT_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SntpClient"


# instance fields
.field private _cachedDeviceUptime:Ljava/util/concurrent/atomic/AtomicLong;

.field private _cachedSntpTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private _sntpInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedDeviceUptime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedSntpTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/instacart/library/truetime/SntpClient;->_sntpInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private doubleMillis(J)D
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x4050624dd2f1a9fcL    # 65.536

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public static getClockOffset([J)J
    .locals 6

    const/4 v0, 0x1

    .line 78
    aget-wide v0, p0, v0

    const/4 v2, 0x0

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/4 v4, 0x3

    aget-wide v4, p0, v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getRoundTripDelay([J)J
    .locals 6

    const/4 v0, 0x3

    .line 69
    aget-wide v0, p0, v0

    const/4 v2, 0x0

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/4 v4, 0x1

    aget-wide v4, p0, v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private read([BI)J
    .locals 5

    .line 305
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 306
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    .line 307
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    .line 308
    aget-byte p1, p1, p2

    .line 310
    invoke-direct {p0, v0}, Lcom/instacart/library/truetime/SntpClient;->ui(B)I

    move-result p2

    int-to-long v3, p2

    const/16 p2, 0x18

    shl-long/2addr v3, p2

    .line 311
    invoke-direct {p0, v1}, Lcom/instacart/library/truetime/SntpClient;->ui(B)I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x10

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    .line 312
    invoke-direct {p0, v2}, Lcom/instacart/library/truetime/SntpClient;->ui(B)I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x8

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    .line 313
    invoke-direct {p0, p1}, Lcom/instacart/library/truetime/SntpClient;->ui(B)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private readTimeStamp([BI)J
    .locals 4

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/instacart/library/truetime/SntpClient;->read([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/instacart/library/truetime/SntpClient;->read([BI)J

    move-result-wide p1

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    mul-long p1, p1, v2

    const-wide v2, 0x100000000L

    .line 295
    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private ui(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private writeTimeStamp([BIJ)V
    .locals 11

    const-wide/16 v0, 0x3e8

    .line 263
    div-long v2, p3, v0

    mul-long v4, v2, v0

    sub-long/2addr p3, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v6, v2, v5

    long-to-int v7, v6

    int-to-byte v6, v7

    .line 271
    aput-byte v6, p1, p2

    add-int/lit8 v6, p2, 0x2

    const/16 v7, 0x10

    shr-long v8, v2, v7

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 272
    aput-byte v8, p1, v4

    add-int/lit8 v4, p2, 0x3

    const/16 v8, 0x8

    shr-long v9, v2, v8

    long-to-int v10, v9

    int-to-byte v9, v10

    .line 273
    aput-byte v9, p1, v6

    add-int/lit8 v6, p2, 0x4

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 274
    aput-byte v2, p1, v4

    const-wide v2, 0x100000000L

    mul-long p3, p3, v2

    .line 276
    div-long/2addr p3, v0

    add-int/lit8 v0, p2, 0x5

    shr-long v1, p3, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 279
    aput-byte v1, p1, v6

    add-int/lit8 v1, p2, 0x6

    shr-long v2, p3, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 280
    aput-byte v2, p1, v0

    add-int/lit8 p2, p2, 0x7

    shr-long/2addr p3, v8

    long-to-int p4, p3

    int-to-byte p3, p4

    .line 281
    aput-byte p3, p1, v1

    .line 284
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p3

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double p3, p3, v0

    double-to-int p3, p3

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method

.method private writeVersion([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1b

    .line 253
    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method cacheTrueTimeInfo([J)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedSntpTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1}, Lcom/instacart/library/truetime/SntpClient;->sntpTime([J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 217
    iget-object v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedDeviceUptime:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v1, 0x7

    aget-wide v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method getCachedDeviceUptime()J
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedDeviceUptime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method getCachedSntpTime()J
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedSntpTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized requestTime(Ljava/lang/String;FFII)[J
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "---- SNTP successful response from "

    const-string v6, "Request was sent more than 10 seconds back "

    const-string v7, "untrusted stratum value for TrueTime: "

    const-string v8, "untrusted mode value for TrueTime: "

    const-string v9, "---- SNTP request failed for "

    monitor-enter p0

    const/16 v11, 0x30

    .line 99
    :try_start_0
    new-array v12, v11, [B

    .line 100
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 102
    new-instance v14, Ljava/net/DatagramPacket;

    const/16 v15, 0x7b

    invoke-direct {v14, v12, v11, v13, v15}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 104
    invoke-direct {v1, v12}, Lcom/instacart/library/truetime/SntpClient;->writeVersion([B)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const/16 v13, 0x28

    .line 112
    invoke-direct {v1, v12, v13, v10, v11}, Lcom/instacart/library/truetime/SntpClient;->writeTimeStamp([BIJ)V

    .line 114
    new-instance v15, Ljava/net/DatagramSocket;

    invoke-direct {v15}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v13, p5

    .line 115
    :try_start_1
    invoke-virtual {v15, v13}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 116
    invoke-virtual {v15, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v13, 0x8

    .line 121
    new-array v14, v13, [J

    .line 122
    new-instance v13, Ljava/net/DatagramPacket;

    move-wide/from16 v21, v10

    const/16 v10, 0x30

    invoke-direct {v13, v12, v10}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 123
    invoke-virtual {v15, v13}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v13, 0x7

    .line 126
    aput-wide v10, v14, v13

    const/16 v13, 0x18

    .line 133
    invoke-direct {v1, v12, v13}, Lcom/instacart/library/truetime/SntpClient;->readTimeStamp([BI)J

    move-result-wide v18

    const/16 v13, 0x20

    .line 134
    invoke-direct {v1, v12, v13}, Lcom/instacart/library/truetime/SntpClient;->readTimeStamp([BI)J

    move-result-wide v23

    const/16 v13, 0x28

    .line 135
    invoke-direct {v1, v12, v13}, Lcom/instacart/library/truetime/SntpClient;->readTimeStamp([BI)J

    move-result-wide v25

    sub-long v10, v10, v16

    add-long v10, v21, v10

    const/4 v13, 0x0

    .line 138
    aput-wide v18, v14, v13

    const/16 v16, 0x0

    const/4 v13, 0x1

    .line 139
    aput-wide v23, v14, v13

    const/16 v17, 0x2

    .line 140
    aput-wide v25, v14, v17

    const/16 v17, 0x1

    const/4 v13, 0x3

    .line 141
    aput-wide v10, v14, v13

    const/16 v20, 0x3

    const/4 v13, 0x4

    move-wide/from16 v21, v10

    .line 146
    invoke-direct {v1, v12, v13}, Lcom/instacart/library/truetime/SntpClient;->read([BI)J

    move-result-wide v10

    aput-wide v10, v14, v13

    .line 147
    invoke-direct {v1, v10, v11}, Lcom/instacart/library/truetime/SntpClient;->doubleMillis(J)D

    move-result-wide v10

    move-object/from16 v27, v14

    float-to-double v13, v0

    cmpl-double v28, v10, v13

    if-gtz v28, :cond_7

    const/16 v13, 0x8

    .line 156
    invoke-direct {v1, v12, v13}, Lcom/instacart/library/truetime/SntpClient;->read([BI)J

    move-result-wide v10

    const/4 v0, 0x5

    aput-wide v10, v27, v0

    .line 157
    invoke-direct {v1, v10, v11}, Lcom/instacart/library/truetime/SntpClient;->doubleMillis(J)D

    move-result-wide v10

    float-to-double v13, v3

    cmpl-double v28, v10, v13

    if-gtz v28, :cond_6

    .line 166
    aget-byte v3, v12, v16

    and-int/lit8 v10, v3, 0x7

    int-to-byte v10, v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    if-ne v10, v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    :goto_0
    aget-byte v0, v12, v17

    and-int/lit16 v0, v0, 0xff

    int-to-long v10, v0

    const/4 v8, 0x6

    .line 172
    aput-wide v10, v27, v8

    const/4 v10, 0x1

    if-lt v0, v10, :cond_5

    const/16 v10, 0xf

    if-gt v0, v10, :cond_5

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    sub-long v10, v21, v18

    sub-long v25, v25, v23

    sub-long v10, v10, v25

    .line 182
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    long-to-double v7, v7

    int-to-double v10, v4

    cmpl-double v0, v7, v10

    if-gez v0, :cond_3

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v18, v18, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v7, 0x2710

    cmp-long v0, v3, v7

    if-gez v0, :cond_2

    .line 197
    iget-object v0, v1, Lcom/instacart/library/truetime/SntpClient;->_sntpInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    sget-object v0, Lcom/instacart/library/truetime/SntpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    .line 202
    invoke-virtual {v1, v0}, Lcom/instacart/library/truetime/SntpClient;->cacheTrueTimeInfo([J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :try_start_2
    invoke-virtual {v15}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 203
    monitor-exit p0

    return-object v0

    .line 193
    :cond_2
    :try_start_3
    new-instance v0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_3
    new-instance v0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    const-string v3, "%s too large for comfort %f [actual] >= %f [expected]"

    const-string v5, "server_response_delay"

    double-to-float v6, v7

    int-to-float v4, v4

    invoke-direct {v0, v3, v5, v6, v4}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    throw v0

    .line 179
    :cond_4
    new-instance v0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    const-string v3, "unsynchronized server responded for TrueTime"

    invoke-direct {v0, v3}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_5
    new-instance v3, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :cond_6
    new-instance v0, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    const-string v4, "Invalid response from NTP server. %s violation. %f [actual] > %f [expected]"

    const-string v5, "root_dispersion"

    double-to-float v6, v10

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    throw v0

    .line 149
    :cond_7
    new-instance v3, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    const-string v4, "Invalid response from NTP server. %s violation. %f [actual] > %f [expected]"

    const-string v5, "root_delay"

    double-to-float v6, v10

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v10, v15

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v10, v15

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v10, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    .line 206
    :goto_1
    :try_start_4
    sget-object v3, Lcom/instacart/library/truetime/SntpClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/instacart/library/truetime/TrueLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_2
    if-eqz v10, :cond_8

    .line 210
    :try_start_5
    invoke-virtual {v10}, Ljava/net/DatagramSocket;->close()V

    .line 212
    :cond_8
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method sntpTime([J)J
    .locals 4

    .line 221
    invoke-static {p1}, Lcom/instacart/library/truetime/SntpClient;->getClockOffset([J)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 222
    aget-wide v2, p1, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method wasInitialized()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/instacart/library/truetime/SntpClient;->_sntpInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
