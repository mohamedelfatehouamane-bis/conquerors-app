.class final Lcom/google/android/gms/measurement/internal/zzkv;
.super Lcom/google/android/gms/measurement/internal/zznf;
.source "com.google.android.gms:play-services-measurement@@21.6.2"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzng;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznf;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    return-void
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)[B
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    .line 5
    const-string v2, "_r"

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzu:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzho;->zzy()V

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzbh;->zzbe:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    new-array v0, v5, [B

    return-object v0

    .line 12
    :cond_0
    const-string v4, "_iap"

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_1

    const-string v4, "_iapx"

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v4, "Generating a payload for this event is not available. package_name, event_name"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 18
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzb()Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;

    move-result-object v4

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzan;->zzp()V

    .line 20
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zze(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzf;

    move-result-object v7

    if-nez v7, :cond_2

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    new-array v0, v5, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-object v0

    .line 26
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzar()Z

    move-result v8

    if-nez v8, :cond_3

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    new-array v0, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-object v0

    .line 31
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzj;->zzv()Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v8

    const-string v9, "android"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v8

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 34
    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzae()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 36
    :cond_5
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 37
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzaf()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 38
    :cond_6
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v9

    const-wide/32 v11, -0x80000000

    cmp-long v13, v9, v11

    if-eqz v13, :cond_7

    .line 39
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zze()J

    move-result-wide v9

    long-to-int v10, v9

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 41
    :cond_7
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzq()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v9

    .line 42
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzo()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 43
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzah()Ljava/lang/String;

    move-result-object v9

    .line 44
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzaa()Ljava/lang/String;

    move-result-object v10

    .line 45
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 46
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_0

    .line 47
    :cond_8
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 48
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 49
    :cond_9
    :goto_0
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzw()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 50
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzng;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v9

    .line 51
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzn()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 52
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzu:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzho;->zzac()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzae;->zzk(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 53
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 55
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 56
    :cond_a
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzis;->zzg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 57
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzis;->zzi()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzaq()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzn()Lcom/google/android/gms/measurement/internal/zzmg;

    move-result-object v10

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzmg;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzis;)Landroid/util/Pair;

    move-result-object v10

    .line 61
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzaq()Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v10, :cond_b

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    .line 62
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v11, :cond_b

    .line 63
    :try_start_3
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    .line 64
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 65
    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 66
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    :try_start_4
    iget-object v11, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v11, :cond_b

    .line 74
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_1

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    new-array v0, v5, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-object v0

    .line 76
    :cond_b
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v10

    .line 77
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzin;->zzac()V

    .line 78
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 79
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v10

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v11

    .line 81
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzin;->zzac()V

    .line 82
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 83
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v10

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaz;->zzg()J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzj(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v10

    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzf()Lcom/google/android/gms/measurement/internal/zzaz;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzaz;->zzh()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :try_start_6
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 87
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzad()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 89
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzad()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    .line 90
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 91
    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzkv;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 99
    :cond_c
    :try_start_7
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 100
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzag()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 102
    :cond_d
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v10

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzan;->zzj(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 105
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zznx;

    .line 106
    const-string v13, "_lte"

    iget-object v14, v12, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    goto :goto_2

    :cond_f
    move-object v12, v6

    :goto_2
    const-wide/16 v17, 0x0

    if-eqz v12, :cond_11

    .line 110
    iget-object v11, v12, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    if-nez v11, :cond_10

    goto :goto_3

    :cond_10
    move-object v6, v9

    goto :goto_4

    :cond_11
    :goto_3
    move-object v11, v9

    .line 111
    new-instance v9, Lcom/google/android/gms/measurement/internal/zznx;

    move-object v12, v11

    const-string v11, "auto"

    move-object v13, v12

    const-string v12, "_lte"

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v16, v13

    move-wide v13, v14

    .line 113
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v6, v16

    invoke-direct/range {v9 .. v15}, Lcom/google/android/gms/measurement/internal/zznx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 114
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zznx;)Z

    .line 116
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/gms/internal/measurement/zzfs$zzn;

    .line 117
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_12

    .line 118
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzn;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v10

    .line 119
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v10

    .line 120
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zznx;

    iget-wide v11, v11, Lcom/google/android/gms/measurement/internal/zznx;->zzd:J

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;

    move-result-object v10

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v11

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zznx;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzn$zza;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfs$zzn;

    aput-object v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 125
    :cond_12
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 126
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)V

    .line 127
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzf;Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)V

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzgf;->zza(Lcom/google/android/gms/measurement/internal/zzbf;)Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v5

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v6

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Landroid/os/Bundle;

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 131
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v6

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/google/android/gms/measurement/internal/zzae;->zzb(Ljava/lang/String;)I

    move-result v9

    .line 134
    invoke-virtual {v6, v5, v9}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/measurement/internal/zzgf;I)V

    .line 135
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgf;->zzb:Landroid/os/Bundle;

    .line 136
    const-string v6, "_c"

    const-wide/16 v9, 0x1

    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v6

    const-string v11, "Marking in-app purchase as real-time"

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v5, v2, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 139
    const-string v6, "_o"

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v6, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzf;->zzam()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zznw;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v6

    const-string v11, "_dbg"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v5, v2, v9}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    if-nez v2, :cond_14

    .line 146
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzbb;

    move-object v6, v4

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v5

    move-object v11, v6

    const-wide/16 v5, 0x0

    move-object v13, v7

    move-object v14, v8

    const-wide/16 v7, 0x0

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    const-wide/16 v11, 0x0

    move-object/from16 v22, v13

    const/4 v13, 0x0

    move-object/from16 v23, v14

    const/4 v14, 0x0

    move-object/from16 v24, v20

    move-object/from16 v25, v23

    const/16 v19, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/measurement/internal/zzbb;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v9, v17

    goto :goto_6

    :cond_14
    move-object/from16 v24, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move-object/from16 v25, v8

    const/16 v19, 0x0

    .line 147
    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzbb;->zzf:J

    .line 148
    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    .line 149
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzbb;->zza(J)Lcom/google/android/gms/measurement/internal/zzbb;

    move-result-object v2

    move-wide v9, v3

    :goto_6
    move-object v12, v2

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzbb;)V

    .line 151
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzay;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzu:Lcom/google/android/gms/measurement/internal/zzho;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzc:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zzd:J

    move-object/from16 v5, p2

    move-object/from16 v11, v21

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/zzay;-><init>(Lcom/google/android/gms/measurement/internal/zzho;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    move-object v3, v5

    .line 152
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zze;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object v4

    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzay;->zzc:J

    .line 153
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object v4

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzay;->zzb:Ljava/lang/String;

    .line 154
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object v4

    iget-wide v5, v2, Lcom/google/android/gms/measurement/internal/zzay;->zzd:J

    .line 155
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    move-result-object v4

    .line 156
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzay;->zze:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzba;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;

    move-result-object v7

    .line 158
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzay;->zze:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/measurement/internal/zzba;->zzc(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lcom/google/android/gms/measurement/internal/zznt;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;

    goto :goto_7

    :cond_16
    move-object/from16 v14, v25

    .line 164
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v2

    .line 165
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzk;->zza()Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;

    move-result-object v5

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzf;->zza()Lcom/google/android/gms/internal/measurement/zzfs$zzf$zza;

    move-result-object v6

    iget-wide v7, v12, Lcom/google/android/gms/measurement/internal/zzbb;->zzc:J

    .line 167
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzfs$zzf$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzf$zza;

    move-result-object v6

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbf;->zza:Ljava/lang/String;

    .line 168
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzf$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzf$zza;

    move-result-object v0

    .line 169
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;

    move-result-object v0

    .line 170
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 172
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzg()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v5

    .line 173
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzf;->zzac()Ljava/lang/String;

    move-result-object v6

    .line 174
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 175
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzab()Ljava/util/List;

    move-result-object v8

    .line 176
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 177
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 178
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzs;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 180
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzg()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 182
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v0

    .line 183
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfs$zze$zza;->zzc()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 184
    :cond_17
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzf;->zzs()J

    move-result-wide v4

    cmp-long v0, v4, v17

    if-eqz v0, :cond_18

    .line 186
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 187
    :cond_18
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzf;->zzu()J

    move-result-wide v6

    cmp-long v2, v6, v17

    if-eqz v2, :cond_19

    .line 189
    invoke-virtual {v14, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    goto :goto_8

    :cond_19
    if-eqz v0, :cond_1a

    .line 191
    invoke-virtual {v14, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 192
    :cond_1a
    :goto_8
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzf;->zzal()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 194
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzbh;->zzbs:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzae;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v0, :cond_1b

    .line 195
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 196
    :cond_1b
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzf;->zzap()V

    .line 198
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzf;->zzt()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v0

    const-wide/32 v4, 0x157c0

    .line 199
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v0

    .line 200
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 201
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzd(Z)Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;

    .line 202
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzbh;->zzbx:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 203
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkv;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)V

    :cond_1c
    move-object/from16 v6, v24

    .line 204
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;

    .line 205
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zzf()J

    move-result-wide v4

    move-object/from16 v13, v22

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzr(J)V

    .line 206
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;->zze()J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Lcom/google/android/gms/measurement/internal/zzf;->zzp(J)V

    .line 207
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzan;->zza(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzw()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 209
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 213
    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->g_()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhy;->zzbx()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zznt;->zzb([B)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 215
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 217
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 218
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v19

    :catch_2
    move-exception v0

    .line 95
    :try_start_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzc()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-array v0, v5, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 211
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznc;->zzh()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzan;->zzu()V

    .line 212
    throw v0
.end method

.method protected final zzc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
