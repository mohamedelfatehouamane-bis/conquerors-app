.class public final Lcom/google/android/gms/internal/ads/zzams;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzann;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzadt;

.field private zzd:Lcom/google/android/gms/internal/ads/zzamr;

.field private zze:Z

.field private final zzf:[Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzanb;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzanb;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzanb;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzanb;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzanb;

.field private zzl:J

.field private zzm:J

.field private final zzn:Lcom/google/android/gms/internal/ads/zzdy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzann;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzann;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzf:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanb;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzg:Lcom/google/android/gms/internal/ads/zzanb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanb;

    const/16 v0, 0x21

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:Lcom/google/android/gms/internal/ads/zzanb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanb;

    const/16 v0, 0x22

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:Lcom/google/android/gms/internal/ads/zzanb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanb;

    const/16 v0, 0x27

    .line 4
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Lcom/google/android/gms/internal/ads/zzanb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanb;

    const/16 v0, 0x28

    .line 5
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Lcom/google/android/gms/internal/ads/zzanb;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzm:J

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    return-void
.end method

.method private final zzf([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzd:Lcom/google/android/gms/internal/ads/zzamr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamr;->zzc([BII)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zze:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzg:Lcom/google/android/gms/internal/ads/zzanb;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:Lcom/google/android/gms/internal/ads/zzanb;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:Lcom/google/android/gms/internal/ads/zzanb;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Lcom/google/android/gms/internal/ads/zzanb;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Lcom/google/android/gms/internal/ads/zzanb;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdy;)V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzams;->zzl:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzams;->zzl:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzams;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzams;->zzf:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfk;->zza([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_9

    add-int/lit8 v5, v4, 0x3

    .line 5
    aget-byte v7, v3, v5

    and-int/lit8 v7, v7, 0x7e

    sub-int v8, v4, v1

    if-lez v8, :cond_1

    .line 6
    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzams;->zzf([BII)V

    :cond_1
    sub-int v12, v2, v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzams;->zzl:J

    int-to-long v13, v12

    sub-long/2addr v9, v13

    if-gez v8, :cond_2

    neg-int v4, v8

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzams;->zzm:J

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzams;->zzd:Lcom/google/android/gms/internal/ads/zzamr;

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzams;->zze:Z

    .line 7
    invoke-virtual {v8, v9, v10, v12, v11}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(JIZ)V

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzams;->zze:Z

    if-nez v8, :cond_5

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzams;->zzg:Lcom/google/android/gms/internal/ads/zzanb;

    .line 8
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzanb;->zzd(I)Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzams;->zzh:Lcom/google/android/gms/internal/ads/zzanb;

    .line 9
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzanb;->zzd(I)Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzams;->zzi:Lcom/google/android/gms/internal/ads/zzanb;

    .line 10
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzanb;->zzd(I)Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzams;->zzg:Lcom/google/android/gms/internal/ads/zzanb;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzanb;->zze()Z

    move-result v15

    if-eqz v15, :cond_5

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzams;->zzh:Lcom/google/android/gms/internal/ads/zzanb;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzanb;->zze()Z

    move-result v16

    if-eqz v16, :cond_5

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzams;->zzi:Lcom/google/android/gms/internal/ads/zzanb;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzanb;->zze()Z

    move-result v17

    if-eqz v17, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzb:Ljava/lang/String;

    move/from16 v18, v5

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    iget v6, v15, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    add-int/2addr v6, v5

    move/from16 v19, v6

    iget v6, v11, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    add-int v6, v19, v6

    .line 11
    new-array v6, v6, [B

    move/from16 v19, v7

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    move-wide/from16 v20, v9

    const/4 v9, 0x0

    .line 12
    invoke-static {v7, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    iget v7, v8, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    .line 13
    invoke-static {v5, v9, v6, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    iget v7, v8, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    add-int/2addr v7, v8

    iget v8, v11, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    .line 14
    invoke-static {v5, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    iget v7, v15, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    const/4 v8, 0x3

    const/4 v10, 0x0

    .line 15
    invoke-static {v5, v8, v7, v10}, Lcom/google/android/gms/internal/ads/zzfk;->zzc([BIILcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object v5

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzfe;->zza:Lcom/google/android/gms/internal/ads/zzez;

    if-eqz v7, :cond_3

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzez;->zzf:I

    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzez;->zze:[I

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzez;->zzd:I

    iget v15, v7, Lcom/google/android/gms/internal/ads/zzez;->zzc:I

    iget-boolean v9, v7, Lcom/google/android/gms/internal/ads/zzez;->zzb:Z

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzez;->zza:I

    move/from16 v22, v7

    move/from16 v27, v8

    move/from16 v23, v9

    move-object/from16 v26, v10

    move/from16 v25, v11

    move/from16 v24, v15

    .line 16
    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/ads/zzcy;->zzd(IZII[II)Ljava/lang/String;

    move-result-object v10

    :cond_3
    new-instance v7, Lcom/google/android/gms/internal/ads/zzz;

    .line 17
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 18
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const-string v1, "video/hevc"

    .line 19
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 20
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzz;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzfe;->zzd:I

    .line 21
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaf(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzfe;->zze:I

    .line 22
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzK(I)Lcom/google/android/gms/internal/ads/zzz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzfe;->zzh:I

    .line 23
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzfe;->zzi:I

    .line 24
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzfe;->zzj:I

    .line 25
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzfe;->zzb:I

    add-int/lit8 v8, v8, 0x8

    .line 26
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzfe;->zzc:I

    add-int/lit8 v8, v8, 0x8

    .line 27
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v1

    .line 29
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzB(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzz;

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzfe;->zzf:F

    .line 30
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzW(F)Lcom/google/android/gms/internal/ads/zzz;

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzfe;->zzg:I

    .line 31
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzS(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 32
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 33
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzams;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    .line 34
    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzab;->zzq:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    const/16 v17, 0x1

    goto :goto_2

    :cond_4
    const/16 v17, 0x0

    .line 35
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzfun;->zzl(Z)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzann;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzab;->zzq:I

    .line 36
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzann;->zze(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zze:Z

    goto :goto_3

    :cond_5
    move/from16 v18, v5

    move/from16 v19, v7

    move-wide/from16 v20, v9

    :goto_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Lcom/google/android/gms/internal/ads/zzanb;

    .line 37
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzanb;->zzd(I)Z

    move-result v1

    const/4 v5, 0x5

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Lcom/google/android/gms/internal/ads/zzanb;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    .line 38
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzb([BI)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzams;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Lcom/google/android/gms/internal/ads/zzanb;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    .line 39
    invoke-virtual {v6, v7, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzJ([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    .line 40
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzann;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzams;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    .line 41
    invoke-virtual {v1, v13, v14, v6}, Lcom/google/android/gms/internal/ads/zzann;->zza(JLcom/google/android/gms/internal/ads/zzdy;)V

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Lcom/google/android/gms/internal/ads/zzanb;

    .line 42
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzanb;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Lcom/google/android/gms/internal/ads/zzanb;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    .line 43
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzb([BI)I

    move-result v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzams;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Lcom/google/android/gms/internal/ads/zzanb;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    .line 44
    invoke-virtual {v4, v6, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzJ([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    .line 45
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzann;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzams;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    .line 46
    invoke-virtual {v1, v13, v14, v4}, Lcom/google/android/gms/internal/ads/zzann;->zza(JLcom/google/android/gms/internal/ads/zzdy;)V

    :cond_7
    const/16 v16, 0x1

    shr-int/lit8 v13, v19, 0x1

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzams;->zzm:J

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzams;->zzd:Lcom/google/android/gms/internal/ads/zzamr;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zze:Z

    move/from16 v16, v1

    move-wide/from16 v10, v20

    .line 47
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzamr;->zze(JIIJZ)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zze:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzg:Lcom/google/android/gms/internal/ads/zzanb;

    .line 48
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzanb;->zzc(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzh:Lcom/google/android/gms/internal/ads/zzanb;

    .line 49
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzanb;->zzc(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzi:Lcom/google/android/gms/internal/ads/zzanb;

    .line 50
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzanb;->zzc(I)V

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Lcom/google/android/gms/internal/ads/zzanb;

    .line 51
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzanb;->zzc(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Lcom/google/android/gms/internal/ads/zzanb;

    .line 52
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzanb;->zzc(I)V

    move-object/from16 v6, p1

    move/from16 v1, v18

    goto/16 :goto_0

    .line 53
    :cond_9
    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzams;->zzf([BII)V

    :cond_a
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzanx;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Lcom/google/android/gms/internal/ads/zzadt;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzd:Lcom/google/android/gms/internal/ads/zzamr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzann;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzann;->zzb(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzanx;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzann;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzann;->zzc()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzd:Lcom/google/android/gms/internal/ads/zzamr;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzl:J

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzamr;->zza(J)V

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzm:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzl:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzm:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzf:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzh([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzg:Lcom/google/android/gms/internal/ads/zzanb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:Lcom/google/android/gms/internal/ads/zzanb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:Lcom/google/android/gms/internal/ads/zzanb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Lcom/google/android/gms/internal/ads/zzanb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Lcom/google/android/gms/internal/ads/zzanb;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzann;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzann;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzd:Lcom/google/android/gms/internal/ads/zzamr;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamr;->zzd()V

    :cond_0
    return-void
.end method
