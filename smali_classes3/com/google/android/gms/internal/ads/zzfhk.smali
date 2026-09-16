.class public final Lcom/google/android/gms/internal/ads/zzfhk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Object;

.field public static zzb:Ljava/lang/Boolean;

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfhp;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdpj;

.field private final zzk:Ljava/util/List;

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzbvs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhk;->zzc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhk;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdpj;Lcom/google/android/gms/internal/ads/zzdzq;Lcom/google/android/gms/internal/ads/zzbvs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfht;->zzb()Lcom/google/android/gms/internal/ads/zzfhp;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzg:Lcom/google/android/gms/internal/ads/zzfhp;

    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzh:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzj:Lcom/google/android/gms/internal/ads/zzdpj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzm:Lcom/google/android/gms/internal/ads/zzbvs;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcl;->zziJ:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzd()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzk:Ljava/util/List;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzk:Ljava/util/List;

    return-void
.end method

.method public static zza()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhk;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhk;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbee;->zzb:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfhk;->zzb:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbee;->zza:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfhk;->zzb:Ljava/lang/Boolean;

    .line 2
    :cond_2
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhk;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhk;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfhk;->zzc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzg:Lcom/google/android/gms/internal/ads/zzfhp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhp;->zza()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    monitor-exit v1

    return-void

    .line 4
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzg:Lcom/google/android/gms/internal/ads/zzfhp;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxl;->zzbn()Lcom/google/android/gms/internal/ads/zzgxr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfht;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvs;->zzaV()[B

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzg:Lcom/google/android/gms/internal/ads/zzfhp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhp;->zzc()Lcom/google/android/gms/internal/ads/zzfhp;

    .line 7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzn;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcl;->zziD:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "application/x-protobuf"

    const/4 v8, 0x0

    const v4, 0xea60

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdzn;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zze:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzm:Lcom/google/android/gms/internal/ads/zzbvs;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdzp;

    invoke-direct {v5, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdzp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvs;I)V

    .line 12
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzn;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzdzp;->zzb(Lcom/google/android/gms/internal/ads/zzdzn;)Lcom/google/android/gms/internal/ads/zzdzo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdvy;

    if-eqz v1, :cond_3

    .line 13
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdvy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdvy;->zza()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v1, "CuiMonitor.sendCuiPing"

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzm;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbzm;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    .line 4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfha;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzw;->zza:Lcom/google/android/gms/internal/ads/zzgcs;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfhj;-><init>(Lcom/google/android/gms/internal/ads/zzfhk;Lcom/google/android/gms/internal/ads/zzfha;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcs;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfha;)V
    .locals 8

    .line 1
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfhk;->zzd:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzl:Z

    if-eqz v0, :cond_0

    monitor-exit v7

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzl:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhk;->zza()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_3

    .line 4
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zze:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzm;

    move-result-object v2

    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzm;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zze:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzi:I

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcl;->zziE:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcl;->zzlK:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzw;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v4, v2

    int-to-long v2, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v4

    move-wide v4, v2

    move-object v1, p0

    .line 12
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 13
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzw;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v2, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    move-object v0, v1

    move-object v1, p0

    .line 14
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 15
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhk;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz p1, :cond_6

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfhk;->zzc:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzg:Lcom/google/android/gms/internal/ads/zzfhp;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhp;->zza()I

    move-result v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcl;->zziF:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 20
    monitor-exit v2

    goto/16 :goto_4

    .line 21
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfho;->zza()Lcom/google/android/gms/internal/ads/zzfhl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzm()I

    move-result v3

    .line 22
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzu(I)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzl()Z

    move-result v3

    .line 23
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzq(Z)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzb()J

    move-result-wide v3

    .line 24
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhl;->zzg(J)Lcom/google/android/gms/internal/ads/zzfhl;

    const/4 v3, 0x3

    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzw(I)Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzh:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzr(I)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzo()I

    move-result v3

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzv(I)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zza()I

    move-result v3

    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzj(I)Lcom/google/android/gms/internal/ads/zzfhl;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzi:I

    int-to-long v3, v3

    .line 32
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhl;->zze(J)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzn()I

    move-result v3

    .line 33
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzt(I)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zze()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzh()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzj:Lcom/google/android/gms/internal/ads/zzdpj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzh()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpj;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzi()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzd()Lcom/google/android/gms/internal/ads/zzfhm;

    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzm(Lcom/google/android/gms/internal/ads/zzfhm;)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzk()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzj()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfha;->zzc()J

    move-result-wide v3

    .line 44
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhl;->zzp(J)Lcom/google/android/gms/internal/ads/zzfhl;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcl;->zziJ:Lcom/google/android/gms/internal/ads/zzbcc;

    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbe;->zzc()Lcom/google/android/gms/internal/ads/zzbcj;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcj;->zza(Lcom/google/android/gms/internal/ads/zzbcc;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzk:Ljava/util/List;

    .line 47
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfhl;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfhl;

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhk;->zzg:Lcom/google/android/gms/internal/ads/zzfhp;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhr;->zza()Lcom/google/android/gms/internal/ads/zzfhq;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfhq;->zza(Lcom/google/android/gms/internal/ads/zzfhl;)Lcom/google/android/gms/internal/ads/zzfhq;

    .line 49
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhp;->zzb(Lcom/google/android/gms/internal/ads/zzfhq;)Lcom/google/android/gms/internal/ads/zzfhp;

    .line 50
    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_6
    :goto_4
    return-void

    :catchall_1
    move-exception v0

    .line 15
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
