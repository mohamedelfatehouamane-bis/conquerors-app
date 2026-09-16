.class public final Lcom/google/android/gms/internal/ads/zzfjf;
.super Lcom/google/android/gms/internal/ads/zzfkh;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzcf;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfjg;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/zzfkh;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzcf;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfjg;Lcom/google/android/gms/common/util/Clock;)V

    return-void
.end method


# virtual methods
.method protected final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdb;->zze()Lcom/google/android/gms/internal/ads/zzgdb;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjf;->zzb:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzs;->zzb()Lcom/google/android/gms/ads/internal/client/zzs;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjf;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfjf;->zzd:Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjf;->zza:Lcom/google/android/gms/ads/internal/ClientApi;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzfjf;->zzc:I

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/ads/internal/ClientApi;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/client/zzs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;I)Lcom/google/android/gms/ads/internal/client/zzby;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjf;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfje;

    .line 5
    invoke-direct {v4, p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfje;-><init>(Lcom/google/android/gms/internal/ads/zzfjf;Lcom/google/android/gms/internal/ads/zzgdb;Lcom/google/android/gms/ads/internal/client/zzft;)V

    .line 6
    invoke-interface {v0, v4}, Lcom/google/android/gms/ads/internal/client/zzby;->zzH(Lcom/google/android/gms/internal/ads/zzbag;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjf;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzft;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/internal/client/zzby;->zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 10
    const-string v3, "Failed to load app open ad."

    .line 8
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjc;

    const-string v3, "remote exception"

    .line 9
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjc;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgdb;->zzd(Ljava/lang/Throwable;)Z

    return-object v1

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjc;

    const-string v3, "Failed to create an app open ad manager."

    .line 10
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjc;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgdb;->zzd(Ljava/lang/Throwable;)Z

    return-object v1
.end method

.method protected final bridge synthetic zzb(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbad;

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzf()Lcom/google/android/gms/ads/internal/client/zzdy;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to get response info for the app open ad."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
