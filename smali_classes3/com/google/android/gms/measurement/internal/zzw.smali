.class final Lcom/google/android/gms/measurement/internal/zzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzfs$zze;

.field private zzb:Ljava/lang/Long;

.field private zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzs;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzs;Lcom/google/android/gms/measurement/internal/zzz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzs;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zze;)Lcom/google/android/gms/internal/measurement/zzfs$zze;
    .locals 14

    move-object/from16 v5, p2

    .line 1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzg()Ljava/lang/String;

    move-result-object v6

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzh()Ljava/util/List;

    move-result-object v7

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    const-string v0, "_eid"

    invoke-static {v5, v0}, Lcom/google/android/gms/measurement/internal/zznt;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_a

    .line 6
    const-string v4, "_ep"

    .line 7
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 9
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    const-string v1, "_en"

    invoke-static {v5, v1}, Lcom/google/android/gms/measurement/internal/zznt;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "Extra parameter without an event name. eventId"

    invoke-virtual {p1, v0, v10}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zze;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v1, v8, v11

    if-eqz v1, :cond_4

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    invoke-virtual {v1, p1, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 17
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v8, :cond_3

    goto/16 :goto_3

    .line 22
    :cond_3
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zze;

    .line 23
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:J

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/measurement/internal/zznt;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/Long;

    .line 26
    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:J

    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Clearing complex main event info. appId"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzan;->e_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 32
    const-string v2, "delete from main_event_params where app_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v1, "Error clearing complex main event"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v8

    iget-wide v11, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:J

    iget-object v13, p0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zze;

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfs$zze;)Z

    .line 38
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zzh()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v2

    if-nez v2, :cond_6

    .line 42
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 44
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 45
    invoke-interface {p1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v7, p1

    goto :goto_5

    .line 47
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "No unique parameters in main event. eventName"

    .line 49
    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 18
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "Extra parameter without existing main event. eventName, eventId"

    .line 20
    invoke-virtual {p1, v0, v6, v10}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_a
    if-eqz v1, :cond_d

    .line 51
    iput-object v10, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzb:Ljava/lang/Long;

    .line 52
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/zzw;->zza:Lcom/google/android/gms/internal/measurement/zzfs$zze;

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 55
    const-string v1, "_epc"

    invoke-static {v5, v1}, Lcom/google/android/gms/measurement/internal/zznt;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zze;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    move-object v0, v1

    .line 57
    :goto_4
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_c

    .line 59
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgb;->zzm()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object p1

    const-string v0, "Complex event with zero extra param count. eventName"

    .line 61
    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 62
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzd:Lcom/google/android/gms/measurement/internal/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    .line 63
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzw;->zzc:J

    move-object v1, p1

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzfs$zze;)Z

    .line 66
    :cond_d
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzju;->zzca()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object p1

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju$zza;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzd()Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zze;

    return-object p1
.end method
