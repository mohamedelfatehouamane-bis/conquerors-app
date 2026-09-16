.class final Lcom/google/android/gms/internal/ads/zzaji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzajn;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:Lcom/google/android/gms/internal/ads/zzajt;

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J

.field private zzl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajt;JJJJZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-ltz v3, :cond_0

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzd:Lcom/google/android/gms/internal/ads/zzajt;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzc:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_2

    if-eqz p10, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    goto :goto_2

    .line 1
    :cond_2
    :goto_1
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzf:J

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajn;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaji;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzc:J

    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzaji;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:J

    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaji;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzf:J

    return-wide v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzaji;)Lcom/google/android/gms/internal/ads/zzajt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzd:Lcom/google/android/gms/internal/ads/zzajt;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzaco;)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_c

    const/4 v4, 0x2

    const/4 v10, 0x3

    if-eq v2, v4, :cond_1

    if-eq v2, v10, :cond_0

    return-wide v6

    :cond_0
    move-wide/from16 v20, v6

    const-wide/16 v15, 0x2

    goto/16 :goto_4

    .line 18
    :cond_1
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzi:J

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzj:J

    cmp-long v2, v11, v13

    if-nez v2, :cond_2

    move-wide v13, v6

    move-wide/from16 v20, v13

    :goto_0
    const-wide/16 v15, 0x2

    goto/16 :goto_3

    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v11

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    .line 1
    invoke-virtual {v2, v1, v13, v14}, Lcom/google/android/gms/internal/ads/zzajn;->zzc(Lcom/google/android/gms/internal/ads/zzaco;J)Z

    move-result v2

    if-nez v2, :cond_4

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzi:J

    cmp-long v2, v13, v11

    if-eqz v2, :cond_3

    move-wide/from16 v20, v6

    goto :goto_0

    .line 6
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    .line 2
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    .line 3
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajn;->zzb(Lcom/google/android/gms/internal/ads/zzaco;Z)Z

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzh:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    const-wide/16 v15, 0x2

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzb:J

    sub-long/2addr v13, v8

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajn;->zze:I

    add-int/2addr v4, v2

    const-wide/16 v17, 0x0

    cmp-long v2, v13, v17

    if-ltz v2, :cond_5

    const-wide/32 v17, 0x11940

    cmp-long v19, v13, v17

    if-gez v19, :cond_5

    move-wide v13, v6

    move-wide/from16 v20, v13

    goto :goto_3

    :cond_5
    if-gez v2, :cond_6

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzj:J

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzl:J

    goto :goto_1

    :cond_6
    int-to-long v11, v4

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v17

    add-long v11, v17, v11

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzi:J

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzk:J

    .line 4
    :goto_1
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzj:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzi:J

    sub-long v17, v8, v11

    const-wide/32 v19, 0x186a0

    cmp-long v21, v17, v19

    if-gez v21, :cond_7

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzj:J

    move-wide/from16 v20, v6

    move-wide v13, v11

    goto :goto_3

    :cond_7
    int-to-long v3, v4

    if-gtz v2, :cond_8

    move-wide/from16 v20, v15

    goto :goto_2

    :cond_8
    const-wide/16 v20, 0x1

    :goto_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v22

    mul-long v3, v3, v20

    sub-long v22, v22, v3

    mul-long v13, v13, v17

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzl:J

    move-wide/from16 v20, v6

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzk:J

    sub-long/2addr v2, v5

    .line 5
    div-long/2addr v13, v2

    add-long v2, v22, v13

    add-long v8, v8, v20

    .line 6
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    :goto_3
    cmp-long v2, v13, v20

    if-eqz v2, :cond_9

    return-wide v13

    .line 18
    :cond_9
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    .line 7
    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    move-wide/from16 v3, v20

    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzajn;->zzc(Lcom/google/android/gms/internal/ads/zzaco;J)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajn;->zzb(Lcom/google/android/gms/internal/ads/zzaco;Z)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzb:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzh:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_a

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzk:J

    add-long/2addr v1, v15

    neg-long v1, v1

    return-wide v1

    :cond_a
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajn;->zze:I

    add-int/2addr v3, v2

    .line 9
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzi:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzb:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzk:J

    const-wide/16 v20, -0x1

    goto :goto_4

    .line 6
    :cond_b
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzg:J

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzc:J

    const-wide/32 v7, -0xff1b

    add-long/2addr v5, v7

    cmp-long v7, v5, v2

    if-lez v7, :cond_c

    return-wide v5

    .line 9
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajn;->zza()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    const-wide/16 v5, -0x1

    .line 12
    invoke-virtual {v2, v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzajn;->zzc(Lcom/google/android/gms/internal/ads/zzaco;J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 13
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajn;->zzb(Lcom/google/android/gms/internal/ads/zzaco;Z)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajn;->zze:I

    add-int/2addr v3, v2

    .line 15
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzb:J

    :goto_5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzajn;->zza:I

    const/4 v7, 0x4

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_e

    const-wide/16 v6, -0x1

    .line 16
    invoke-virtual {v5, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzajn;->zzc(Lcom/google/android/gms/internal/ads/zzaco;J)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzc:J

    cmp-long v5, v8, v10

    if-gez v5, :cond_e

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    .line 17
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzajn;->zzb(Lcom/google/android/gms/internal/ads/zzaco;Z)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzajn;->zzd:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzajn;->zze:I

    add-int/2addr v8, v5

    .line 18
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzacr;->zze(Lcom/google/android/gms/internal/ads/zzaco;I)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_6

    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzajn;->zzb:J

    goto :goto_5

    :cond_e
    :goto_6
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzf:J

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaji;->zzg:J

    return-wide v1

    .line 13
    :cond_f
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/ads/zzadm;
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzf:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajg;

    invoke-direct {v0, p0, v4}, Lcom/google/android/gms/internal/ads/zzajg;-><init>(Lcom/google/android/gms/internal/ads/zzaji;Lcom/google/android/gms/internal/ads/zzajh;)V

    return-object v0

    :cond_0
    return-object v4
.end method

.method public final zzg(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzf:J

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzh:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzb:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzi:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzk:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaji;->zzl:J

    return-void
.end method
