.class public final Lcom/google/android/gms/internal/ads/zzti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzacs;

.field private zzb:Lcom/google/android/gms/internal/ads/zzacn;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaco;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Lcom/google/android/gms/internal/ads/zzacs;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzadj;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzacn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzc:Lcom/google/android/gms/internal/ads/zzaco;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaco;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Lcom/google/android/gms/internal/ads/zzaco;Lcom/google/android/gms/internal/ads/zzadj;)I

    move-result p1

    return p1
.end method

.method public final zzb()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzc:Lcom/google/android/gms/internal/ads/zzaco;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzahs;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzahs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahs;->zza()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzl;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zzacq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacc;

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(Lcom/google/android/gms/internal/ads/zzl;JJ)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzc:Lcom/google/android/gms/internal/ads/zzaco;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zza:Lcom/google/android/gms/internal/ads/zzacs;

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzacs;->zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object p1

    .line 3
    array-length p3, p1

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfxn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfxk;

    move-result-object p4

    const/4 p5, 0x0

    const/4 p6, 0x1

    if-ne p3, p6, :cond_1

    .line 20
    aget-object p1, p1, p5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    goto/16 :goto_4

    :cond_1
    const/4 p7, 0x0

    :goto_0
    if-ge p7, p3, :cond_9

    .line 5
    aget-object v0, p1, p7

    .line 6
    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzacn;->zzi(Lcom/google/android/gms/internal/ads/zzaco;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v5

    cmp-long p3, v5, v3

    if-nez p3, :cond_3

    :cond_2
    const/4 p5, 0x1

    .line 9
    :cond_3
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    goto :goto_3

    .line 7
    :cond_4
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacn;->zzd()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzfxk;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxk;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    if-nez v0, :cond_8

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_7

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    if-nez p2, :cond_5

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide p2

    cmp-long p4, p2, v3

    if-nez p4, :cond_6

    :cond_5
    const/4 p5, 0x1

    .line 9
    :cond_6
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    .line 19
    throw p1

    :catch_0
    nop

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    if-nez v0, :cond_8

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x1

    .line 9
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    add-int/lit8 p7, p7, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    if-eqz p3, :cond_a

    .line 20
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    .line 21
    invoke-interface {p1, p8}, Lcom/google/android/gms/internal/ads/zzacn;->zze(Lcom/google/android/gms/internal/ads/zzacq;)V

    return-void

    .line 10
    :cond_a
    new-instance p3, Lcom/google/android/gms/internal/ads/zzwk;

    .line 11
    const-string p5, ", "

    move-object p6, p5

    check-cast p6, Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxn;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p1

    new-instance p6, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {p6}, Lcom/google/android/gms/internal/ads/zzth;-><init>()V

    .line 13
    invoke-static {p1, p6}, Lcom/google/android/gms/internal/ads/zzfyd;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    new-instance p6, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p6, p1, p5}, Lcom/google/android/gms/internal/ads/zzfuf;->zzc(Ljava/lang/StringBuilder;Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "None of the available extractors ("

    .line 16
    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    move-object p5, p2

    check-cast p5, Landroid/net/Uri;

    .line 18
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;)V

    throw p3
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->zzc:Lcom/google/android/gms/internal/ads/zzaco;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->zzb:Lcom/google/android/gms/internal/ads/zzacn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzacn;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzacn;->zzf(JJ)V

    return-void
.end method
