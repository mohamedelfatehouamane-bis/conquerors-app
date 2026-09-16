.class public final Lcom/google/android/gms/internal/ads/zzedh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoa;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdow;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfcj;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbjs;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzebv;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdrq;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdrw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoa;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdow;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbjs;Lcom/google/android/gms/internal/ads/zzebv;Lcom/google/android/gms/internal/ads/zzdrq;Lcom/google/android/gms/internal/ads/zzdrw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzb:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zza:Lcom/google/android/gms/internal/ads/zzcoa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedh;->zze:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzc:Lcom/google/android/gms/internal/ads/zzdow;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzd:Lcom/google/android/gms/internal/ads/zzfcj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzg:Lcom/google/android/gms/internal/ads/zzbjs;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcl;->zziM:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzi:Lcom/google/android/gms/internal/ads/zzebv;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzj:Lcom/google/android/gms/internal/ads/zzdrq;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzk:Lcom/google/android/gms/internal/ads/zzdrw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfbo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdpa;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgch;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedd;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzedd;-><init>(Lcom/google/android/gms/internal/ads/zzedh;Lcom/google/android/gms/internal/ads/zzfbo;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzdpa;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgch;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/zzede;

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzede;-><init>(Lcom/google/android/gms/internal/ads/zzdpa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedh;->zze:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfbo;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfbo;->zzs:Lcom/google/android/gms/internal/ads/zzfbt;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbt;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfbo;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzdpa;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcl;->zzcm:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzj:Lcom/google/android/gms/internal/ads/zzdrq;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrq;->zza()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdre;->zzu:Lcom/google/android/gms/internal/ads/zzdre;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdre;->zza()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzc:Lcom/google/android/gms/internal/ads/zzdow;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzd:Lcom/google/android/gms/internal/ads/zzfcj;

    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzfca;->zzb:Lcom/google/android/gms/internal/ads/zzfbz;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfbz;->zzb:Lcom/google/android/gms/internal/ads/zzfbr;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zze:Lcom/google/android/gms/ads/internal/client/zzs;

    .line 8
    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzdow;->zza(Lcom/google/android/gms/ads/internal/client/zzs;Lcom/google/android/gms/internal/ads/zzfbo;Lcom/google/android/gms/internal/ads/zzfbr;)Lcom/google/android/gms/internal/ads/zzcex;

    move-result-object v8

    .line 9
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzfbo;->zzW:Z

    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/zzcex;->zzac(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzb:Landroid/content/Context;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzcex;->zzF()Landroid/view/View;

    move-result-object v2

    move-object/from16 v3, p3

    .line 10
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdpa;->zza(Landroid/content/Context;Landroid/view/View;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcl;->zzcm:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzj:Lcom/google/android/gms/internal/ads/zzdrq;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrq;->zza()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdre;->zzv:Lcom/google/android/gms/internal/ads/zzdre;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdre;->zza()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 16
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 17
    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcab;

    .line 18
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzcab;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zza:Lcom/google/android/gms/internal/ads/zzcoa;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrp;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzcrp;-><init>(Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfbo;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzd:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzh:Z

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzg:Lcom/google/android/gms/internal/ads/zzbjs;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzi:Lcom/google/android/gms/internal/ads/zzebv;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzk:Lcom/google/android/gms/internal/ads/zzdrw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdeu;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzedj;

    move-object v7, p1

    .line 19
    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/internal/ads/zzedj;-><init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfbo;Lcom/google/android/gms/internal/ads/zzcex;Lcom/google/android/gms/internal/ads/zzfcj;ZLcom/google/android/gms/internal/ads/zzbjs;Lcom/google/android/gms/internal/ads/zzebv;Lcom/google/android/gms/internal/ads/zzdrw;)V

    invoke-direct {v0, v4, v8}, Lcom/google/android/gms/internal/ads/zzdeu;-><init>(Lcom/google/android/gms/internal/ads/zzdgc;Lcom/google/android/gms/internal/ads/zzcex;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcny;

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzfbo;->zzaa:I

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzcny;-><init>(I)V

    .line 20
    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzcoa;->zza(Lcom/google/android/gms/internal/ads/zzcrp;Lcom/google/android/gms/internal/ads/zzdeu;Lcom/google/android/gms/internal/ads/zzcny;)Lcom/google/android/gms/internal/ads/zzcnx;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcl;->zzcm:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzj:Lcom/google/android/gms/internal/ads/zzdrq;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrq;->zza()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdre;->zzw:Lcom/google/android/gms/internal/ads/zzdre;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdre;->zza()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 26
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 27
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnx;->zzh()Lcom/google/android/gms/internal/ads/zzdov;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzh:Z

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzg:Lcom/google/android/gms/internal/ads/zzbjs;

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzj:Lcom/google/android/gms/internal/ads/zzdrq;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrq;->zza()Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v8, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzdov;->zzi(Lcom/google/android/gms/internal/ads/zzcex;ZLcom/google/android/gms/internal/ads/zzbjs;Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzcab;->zzc(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnx;->zzc()Lcom/google/android/gms/internal/ads/zzcwl;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedf;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzedf;-><init>(Lcom/google/android/gms/internal/ads/zzcex;)V

    .line 32
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzw;->zzg:Lcom/google/android/gms/internal/ads/zzgcs;

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdbj;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 34
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfbo;->zzs:Lcom/google/android/gms/internal/ads/zzfbt;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbt;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcl;->zzff:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnx;->zzi()Lcom/google/android/gms/internal/ads/zzecp;

    move-result-object v2

    const/4 v3, 0x1

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzecp;->zze(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgi;->zza(Lcom/google/android/gms/internal/ads/zzfbo;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcgi;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnx;->zzh()Lcom/google/android/gms/internal/ads/zzdov;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfbo;->zzs:Lcom/google/android/gms/internal/ads/zzfbt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbt;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedh;->zzj:Lcom/google/android/gms/internal/ads/zzdrq;

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 43
    invoke-static {v8, v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzdov;->zzj(Lcom/google/android/gms/internal/ads/zzcex;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedg;

    invoke-direct {v2, p0, v8, p1, v0}, Lcom/google/android/gms/internal/ads/zzedg;-><init>(Lcom/google/android/gms/internal/ads/zzedh;Lcom/google/android/gms/internal/ads/zzcex;Lcom/google/android/gms/internal/ads/zzfbo;Lcom/google/android/gms/internal/ads/zzcnx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedh;->zze:Ljava/util/concurrent/Executor;

    .line 44
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgch;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfuc;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
