.class final Lcom/google/android/gms/internal/ads/zzego;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcd;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfbr;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfbo;

.field final synthetic zzd:Ljava/lang/String;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfiv;

.field final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfca;

.field final synthetic zzg:Lcom/google/android/gms/internal/ads/zzegq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzegq;JLcom/google/android/gms/internal/ads/zzfbr;Lcom/google/android/gms/internal/ads/zzfbo;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfiv;Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Lcom/google/android/gms/internal/ads/zzfbr;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzego;->zze:Lcom/google/android/gms/internal/ads/zzfiv;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzego;->zzf:Lcom/google/android/gms/internal/ads/zzfca;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zze(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:J

    sub-long v8, v0, v2

    .line 2
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    move-object v3, v2

    const/4 v7, 0x2

    goto :goto_1

    .line 23
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzefy;

    if-eqz v0, :cond_1

    move-object v3, v2

    const/4 v7, 0x3

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    move-object v3, v2

    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfcq;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    move-object v3, v2

    const/4 v7, 0x5

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdvy;

    const/4 v3, 0x6

    if-eqz v0, :cond_6

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 5
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    .line 6
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcl;->zzbK:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzeda;

    if-eqz v3, :cond_5

    .line 8
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeda;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move v7, v0

    goto :goto_1

    :cond_5
    move v7, v0

    move-object v3, v2

    goto :goto_1

    :cond_6
    move-object v3, v2

    const/4 v7, 0x6

    .line 2
    :goto_1
    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    monitor-enter v11

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzn(Lcom/google/android/gms/internal/ads/zzegq;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzc(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzegs;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzeda;

    if-eqz v0, :cond_7

    .line 10
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeda;

    :cond_7
    move-wide v9, v8

    move-object v8, v2

    .line 11
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegs;->zza(Lcom/google/android/gms/internal/ads/zzfbr;Lcom/google/android/gms/internal/ads/zzfbo;ILcom/google/android/gms/internal/ads/zzeda;J)V

    move-wide v8, v9

    .line 12
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcl;->zzij:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzd(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzfja;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zze:Lcom/google/android/gms/internal/ads/zzfiv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzego;->zzf:Lcom/google/android/gms/internal/ads/zzfca;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 14
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzfbo;->zzn:Ljava/util/List;

    .line 15
    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfiv;->zzc(Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfbo;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfbo;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    .line 14
    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzfja;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzo(Lcom/google/android/gms/internal/ads/zzegq;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 24
    monitor-exit v11

    return-void

    :cond_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzh(Lcom/google/android/gms/internal/ads/zzegq;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzegp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Ljava/lang/String;

    .line 16
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzfbo;->zzaf:Ljava/lang/String;

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegp;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    .line 18
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeda;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeda;-><init>(ILcom/google/android/gms/ads/internal/client/zze;)V

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfdk;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p1

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzb(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzedb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 22
    invoke-virtual {v0, v1, v8, v9, p1}, Lcom/google/android/gms/internal/ads/zzedb;->zzf(Lcom/google/android/gms/internal/ads/zzfbo;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 23
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzegq;->zze(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzego;->zza:J

    sub-long v8, v0, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzn(Lcom/google/android/gms/internal/ads/zzegq;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzc(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzegs;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzb:Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    const/4 v7, 0x0

    move-wide v9, v8

    const/4 v8, 0x0

    .line 2
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegs;->zza(Lcom/google/android/gms/internal/ads/zzfbr;Lcom/google/android/gms/internal/ads/zzfbo;ILcom/google/android/gms/internal/ads/zzeda;J)V

    goto :goto_0

    :cond_0
    move-wide v9, v8

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzo(Lcom/google/android/gms/internal/ads/zzegq;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    monitor-exit p1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzegq;->zzp(Lcom/google/android/gms/internal/ads/zzegq;Lcom/google/android/gms/internal/ads/zzfbo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzh(Lcom/google/android/gms/internal/ads/zzegq;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzegp;

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzegp;->zzd:J

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzh(Lcom/google/android/gms/internal/ads/zzegq;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzegp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzego;->zzd:Ljava/lang/String;

    .line 5
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfbo;->zzaf:Ljava/lang/String;

    const/4 v7, 0x0

    move-wide v8, v9

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegp;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Integer;)V

    move-wide v9, v8

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzego;->zzg:Lcom/google/android/gms/internal/ads/zzegq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegq;->zzb(Lcom/google/android/gms/internal/ads/zzegq;)Lcom/google/android/gms/internal/ads/zzedb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzego;->zzc:Lcom/google/android/gms/internal/ads/zzfbo;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzedb;->zzg(Lcom/google/android/gms/internal/ads/zzfbo;JLcom/google/android/gms/ads/internal/client/zze;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
