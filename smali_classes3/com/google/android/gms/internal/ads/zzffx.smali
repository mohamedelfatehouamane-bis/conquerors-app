.class public final Lcom/google/android/gms/internal/ads/zzffx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# direct methods
.method public static final zza(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgd;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfgf;->zze(Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzgcs;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzffx;->zzb(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzgcs;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgd;

    move-result-object p0

    return-object p0
.end method

.method public static final zzb(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzgcs;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgd;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgf;->zzd()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzgcs;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfgd;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfge;)V

    return-object v0
.end method

.method public static final zzc(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgd;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgf;->zzd()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    move-object v2, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfgd;-><init>(Lcom/google/android/gms/internal/ads/zzfgf;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfge;)V

    return-object v0
.end method

.method public static final zzd(Lcom/google/android/gms/internal/ads/zzffs;Lcom/google/android/gms/internal/ads/zzgcs;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgd;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzffw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzffw;-><init>(Lcom/google/android/gms/internal/ads/zzffs;)V

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzffx;->zzb(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzgcs;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfgf;)Lcom/google/android/gms/internal/ads/zzfgd;

    move-result-object p0

    return-object p0
.end method
