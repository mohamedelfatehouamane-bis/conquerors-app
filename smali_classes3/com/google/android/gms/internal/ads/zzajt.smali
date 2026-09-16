.class abstract Lcom/google/android/gms/internal/ads/zzajt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzajm;

.field private zzb:Lcom/google/android/gms/internal/ads/zzadt;

.field private zzc:Lcom/google/android/gms/internal/ads/zzacq;

.field private zzd:Lcom/google/android/gms/internal/ads/zzajo;

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzajq;

.field private zzk:J

.field private zzl:Z

.field private zzm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzj:Lcom/google/android/gms/internal/ads/zzajq;

    return-void
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzdy;)J
.end method

.method protected zzb(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzajq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzj:Lcom/google/android/gms/internal/ads/zzajq;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzf:J

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzh:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajt;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzg:J

    return-void
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzdy;JLcom/google/android/gms/internal/ads/zzajq;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzaco;Lcom/google/android/gms/internal/ads/zzadj;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzb:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzh:I

    const/4 v3, 0x3

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v7, :cond_7

    if-eq v2, v11, :cond_0

    return v6

    .line 8
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzd:Lcom/google/android/gms/internal/ads/zzajo;

    .line 10
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zzd(Lcom/google/android/gms/internal/ads/zzaco;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-ltz v2, :cond_1

    move-object/from16 v2, p2

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    return v7

    :cond_1
    cmp-long v2, v8, v4

    if-gez v2, :cond_2

    const-wide/16 v13, 0x2

    add-long/2addr v8, v13

    neg-long v8, v8

    .line 11
    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzajt;->zzi(J)V

    :cond_2
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzl:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzd:Lcom/google/android/gms/internal/ads/zzajo;

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzajo;->zze()Lcom/google/android/gms/internal/ads/zzadm;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/ads/zzadm;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzc:Lcom/google/android/gms/internal/ads/zzacq;

    .line 13
    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzl:Z

    :cond_3
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzk:J

    cmp-long v2, v7, v10

    if-gtz v2, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzajm;->zze(Lcom/google/android/gms/internal/ads/zzaco;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    iput v3, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzh:I

    return v6

    .line 14
    :cond_5
    :goto_0
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzk:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zza()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzajt;->zza(Lcom/google/android/gms/internal/ads/zzdy;)J

    move-result-wide v2

    cmp-long v6, v2, v10

    if-ltz v6, :cond_6

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzg:J

    add-long v8, v6, v2

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzajt;->zze:J

    cmp-long v13, v8, v10

    if-ltz v13, :cond_6

    .line 16
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzajt;->zzf(J)J

    move-result-wide v15

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzb:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v7

    .line 17
    invoke-interface {v6, v0, v7}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzb:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    .line 18
    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzajt;->zze:J

    :cond_6
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzg:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzg:J

    return v12

    :cond_7
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzf:J

    long-to-int v3, v2

    .line 19
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzh:I

    return v12

    .line 2
    :cond_8
    :goto_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzajm;->zze(Lcom/google/android/gms/internal/ads/zzaco;)Z

    move-result v2

    if-nez v2, :cond_9

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzh:I

    return v6

    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v8

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzf:J

    sub-long/2addr v8, v13

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzk:J

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajm;->zza()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v2

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzj:Lcom/google/android/gms/internal/ads/zzajq;

    .line 4
    invoke-virtual {v1, v2, v13, v14, v8}, Lcom/google/android/gms/internal/ads/zzajt;->zzc(Lcom/google/android/gms/internal/ads/zzdy;JLcom/google/android/gms/internal/ads/zzajq;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzf:J

    goto :goto_1

    :cond_a
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzj:Lcom/google/android/gms/internal/ads/zzajq;

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajq;->zza:Lcom/google/android/gms/internal/ads/zzab;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzi:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzm:Z

    if-nez v3, :cond_b

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzb:Lcom/google/android/gms/internal/ads/zzadt;

    .line 6
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzm:Z

    :cond_b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzj:Lcom/google/android/gms/internal/ads/zzajq;

    .line 7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Lcom/google/android/gms/internal/ads/zzajo;

    if-eqz v2, :cond_c

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzd:Lcom/google/android/gms/internal/ads/zzajo;

    goto :goto_3

    .line 9
    :cond_c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajr;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzajr;-><init>(Lcom/google/android/gms/internal/ads/zzajs;)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzd:Lcom/google/android/gms/internal/ads/zzajo;

    goto :goto_3

    :cond_d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajm;->zzb()Lcom/google/android/gms/internal/ads/zzajn;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzajn;->zza:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_e

    const/4 v10, 0x1

    goto :goto_2

    :cond_e
    const/4 v10, 0x0

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaji;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzf:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v5

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzd:I

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzajn;->zze:I

    add-int/2addr v7, v8

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzb:J

    int-to-long v13, v7

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v13

    .line 8
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajt;JJJJZ)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzd:Lcom/google/android/gms/internal/ads/zzajo;

    .line 7
    :goto_3
    iput v11, v1, Lcom/google/android/gms/internal/ads/zzajt;->zzh:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzd()V

    return v12
.end method

.method protected final zzf(J)J
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzi:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected final zzg(J)J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzi:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method final zzh(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzadt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzc:Lcom/google/android/gms/internal/ads/zzacq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzb:Lcom/google/android/gms/internal/ads/zzadt;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zzb(Z)V

    return-void
.end method

.method protected zzi(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzg:J

    return-void
.end method

.method final zzj(JJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzajm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajm;->zzc()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzl:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zzb(Z)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzh:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzajt;->zzg(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zze:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzd:Lcom/google/android/gms/internal/ads/zzajo;

    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzajo;

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajt;->zze:J

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajo;->zzg(J)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajt;->zzh:I

    :cond_1
    return-void
.end method
