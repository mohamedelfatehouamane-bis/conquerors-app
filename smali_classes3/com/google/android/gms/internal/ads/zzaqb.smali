.class public Lcom/google/android/gms/internal/ads/zzaqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapf;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzaqd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaqa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqa;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqd;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:Lcom/google/android/gms/internal/ads/zzaqa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zza:Lcom/google/android/gms/internal/ads/zzaqd;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzapm;)Lcom/google/android/gms/internal/ads/zzapi;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzapv;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, "Error occurred when closing InputStream"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2
    :goto_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapm;->zzd()Lcom/google/android/gms/internal/ads/zzaov;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_1

    .line 46
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    .line 5
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaov;->zzb:Ljava/lang/String;

    if-eqz v11, :cond_1

    const-string v12, "If-None-Match"

    .line 6
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaov;->zzd:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    .line 7
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzaqj;->zzc(J)Ljava/lang/String;

    move-result-object v11

    .line 8
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v10

    .line 4
    :goto_1
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:Lcom/google/android/gms/internal/ads/zzaqa;

    .line 9
    invoke-virtual {v10, v2, v0}, Lcom/google/android/gms/internal/ads/zzaqa;->zza(Lcom/google/android/gms/internal/ads/zzapm;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzaqk;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqk;->zzb()I

    move-result v12

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqk;->zzd()Ljava/util/List;

    move-result-object v17
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    const/16 v0, 0x130

    if-ne v12, v0, :cond_a

    .line 11
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v22, v11, v4

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapm;->zzd()Lcom/google/android/gms/internal/ads/zzaov;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_3

    :try_start_3
    new-instance v13, Lcom/google/android/gms/internal/ads/zzapi;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v14, 0x130

    move-object/from16 v19, v17

    move-wide/from16 v17, v22

    .line 27
    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzapi;-><init>(I[BZJLjava/util/List;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_6

    :cond_3
    move-object/from16 v11, v17

    move-wide/from16 v17, v22

    :try_start_4
    new-instance v12, Ljava/util/TreeSet;

    sget-object v13, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 13
    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 14
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v13, :cond_4

    .line 15
    :try_start_5
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzape;

    .line 16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzape;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_2

    :cond_4
    :try_start_6
    new-instance v13, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaov;->zzh:Ljava/util/List;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v11, :cond_7

    .line 18
    :try_start_7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaov;->zzh:Ljava/util/List;

    .line 19
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzape;

    .line 20
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzape;->zza()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 21
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_3

    :cond_6
    move-wide/from16 v22, v17

    const/16 v25, 0x1

    goto :goto_5

    .line 26
    :cond_7
    :try_start_8
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaov;->zzg:Ljava/util/Map;

    .line 22
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaov;->zzg:Ljava/util/Map;

    .line 23
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    new-instance v15, Lcom/google/android/gms/internal/ads/zzape;

    .line 25
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v25, 0x1

    :try_start_9
    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v6, v14}, Lcom/google/android/gms/internal/ads/zzape;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const/16 v25, 0x1

    move-wide/from16 v22, v17

    .line 21
    :goto_5
    new-instance v18, Lcom/google/android/gms/internal/ads/zzapi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaov;->zza:[B

    const/16 v21, 0x1

    const/16 v19, 0x130

    move-object/from16 v20, v0

    move-object/from16 v24, v13

    .line 26
    invoke-direct/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/zzapi;-><init>(I[BZJLjava/util/List;)V

    move-object/from16 v13, v18

    :goto_6
    return-object v13

    :catch_0
    move-exception v0

    const/16 v25, 0x1

    goto/16 :goto_f

    :cond_a
    move-object/from16 v11, v17

    const/16 v25, 0x1

    .line 25
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqk;->zzc()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqk;->zza()I

    move-result v0

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzaqb;->zza:Lcom/google/android/gms/internal/ads/zzaqd;

    .line 28
    new-instance v14, Lcom/google/android/gms/internal/ads/zzaqq;

    invoke-direct {v14, v13, v0}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(Lcom/google/android/gms/internal/ads/zzaqd;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    const/16 v0, 0x400

    .line 29
    :try_start_a
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzb(I)[B

    move-result-object v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 30
    :goto_7
    :try_start_b
    invoke-virtual {v6, v15}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/16 v18, 0x2

    const/4 v7, -0x1

    if-eq v0, v7, :cond_b

    .line 31
    :try_start_c
    invoke-virtual {v14, v15, v9, v0}, Lcom/google/android/gms/internal/ads/zzaqq;->write([BII)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_9

    .line 32
    :cond_b
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaqq;->toByteArray()[B

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 33
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_8

    .line 37
    :catch_1
    :try_start_e
    new-array v6, v9, [Ljava/lang/Object;

    .line 34
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzapy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_8
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaqd;->zza([B)V

    .line 36
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaqq;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_b

    :catchall_1
    move-exception v0

    const/16 v18, 0x2

    goto :goto_9

    :catchall_2
    move-exception v0

    const/16 v18, 0x2

    move-object v15, v8

    .line 33
    :goto_9
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_a

    .line 66
    :catch_2
    :try_start_10
    new-array v6, v9, [Ljava/lang/Object;

    .line 34
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzapy;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :goto_a
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzaqd;->zza([B)V

    .line 36
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaqq;->close()V

    .line 37
    throw v0

    :cond_c
    const/16 v18, 0x2

    .line 46
    new-array v0, v9, [B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :goto_b
    move-object v13, v0

    .line 38
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 39
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzapy;->zzb:Z

    if-nez v0, :cond_e

    const-wide/16 v14, 0xbb8

    cmp-long v0, v6, v14

    if-lez v0, :cond_d

    goto :goto_c

    :cond_d
    const/16 v19, 0x0

    goto :goto_e

    :cond_e
    :goto_c
    const-string v0, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    if-eqz v13, :cond_f

    array-length v7, v13

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_d

    .line 46
    :cond_f
    const-string v7, "null"

    .line 42
    :goto_d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapm;->zzy()Lcom/google/android/gms/internal/ads/zzapa;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzapa;->zza()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    const/16 v19, 0x0

    const/4 v9, 0x5

    :try_start_12
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v19

    aput-object v6, v9, v25

    aput-object v7, v9, v18

    const/4 v6, 0x3

    aput-object v14, v9, v6

    const/4 v6, 0x4

    aput-object v15, v9, v6

    .line 44
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzapy;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_e
    const/16 v0, 0xc8

    if-lt v12, v0, :cond_10

    const/16 v0, 0x12b

    if-gt v12, v0, :cond_10

    move-object/from16 v17, v11

    .line 45
    new-instance v11, Lcom/google/android/gms/internal/ads/zzapi;

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v6, v4

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzapi;-><init>(I[BZJLjava/util/List;)V

    return-object v11

    .line 44
    :cond_10
    new-instance v0, Ljava/io/IOException;

    .line 45
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    const/16 v19, 0x0

    goto :goto_12

    :catch_5
    move-exception v0

    goto :goto_10

    :catch_6
    move-exception v0

    :goto_f
    const/16 v18, 0x2

    :goto_10
    const/16 v19, 0x0

    goto :goto_11

    :catch_7
    move-exception v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v25, 0x1

    :goto_11
    move-object v13, v8

    goto :goto_12

    :catch_8
    move-exception v0

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v25, 0x1

    move-object v10, v8

    move-object v13, v10

    .line 47
    :goto_12
    instance-of v6, v0, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqo;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzapu;

    .line 48
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzapu;-><init>()V

    const-string v7, "socket"

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapv;Lcom/google/android/gms/internal/ads/zzaqp;)V

    :goto_13
    move-object v6, v0

    goto :goto_15

    .line 49
    :cond_11
    instance-of v6, v0, Ljava/net/MalformedURLException;

    if-nez v6, :cond_17

    if-eqz v10, :cond_16

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqk;->zzb()I

    move-result v12

    .line 50
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapm;->zzk()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v0, v9, v19

    aput-object v6, v9, v25

    const-string v0, "Unexpected response code %d for %s"

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzapy;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_15

    .line 51
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqk;->zzd()Ljava/util/List;

    move-result-object v17

    new-instance v11, Lcom/google/android/gms/internal/ads/zzapi;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v6, v4

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzapi;-><init>(I[BZJLjava/util/List;)V

    const/16 v0, 0x191

    if-eq v12, v0, :cond_14

    const/16 v0, 0x193

    if-ne v12, v0, :cond_12

    goto :goto_14

    :cond_12
    const/16 v0, 0x190

    if-lt v12, v0, :cond_13

    const/16 v0, 0x1f3

    if-gt v12, v0, :cond_13

    .line 61
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoz;

    .line 62
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzaoz;-><init>(Lcom/google/android/gms/internal/ads/zzapi;)V

    throw v0

    .line 54
    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapt;

    .line 61
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzapt;-><init>(Lcom/google/android/gms/internal/ads/zzapi;)V

    throw v0

    .line 52
    :cond_14
    :goto_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqo;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaou;

    .line 53
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzaou;-><init>(Lcom/google/android/gms/internal/ads/zzapi;)V

    const-string v7, "auth"

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapv;Lcom/google/android/gms/internal/ads/zzaqp;)V

    goto :goto_13

    .line 60
    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqo;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaph;

    .line 54
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzaph;-><init>()V

    const-string v7, "network"

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaqo;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapv;Lcom/google/android/gms/internal/ads/zzaqp;)V

    goto :goto_13

    .line 55
    :goto_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapm;->zzy()Lcom/google/android/gms/internal/ads/zzapa;

    move-result-object v0

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapm;->zzb()I

    move-result v7

    :try_start_13
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaqo;->zza(Lcom/google/android/gms/internal/ads/zzaqo;)Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v8

    .line 57
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzapa;->zzc(Lcom/google/android/gms/internal/ads/zzapv;)V
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/zzapv; {:try_start_13 .. :try_end_13} :catch_9

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaqo;->zzb(Lcom/google/android/gms/internal/ads/zzaqo;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v19

    aput-object v6, v7, v25

    const-string v0, "%s-retry [timeout=%s]"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzapm;->zzm(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_9
    move-exception v0

    .line 59
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaqo;->zzb(Lcom/google/android/gms/internal/ads/zzaqo;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v19

    aput-object v4, v5, v25

    const-string v3, "%s-timeout-giveup [timeout=%s]"

    .line 64
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzapm;->zzm(Ljava/lang/String;)V

    .line 66
    throw v0

    .line 53
    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapj;

    .line 60
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 49
    :cond_17
    new-instance v3, Ljava/lang/RuntimeException;

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapm;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bad URL "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
