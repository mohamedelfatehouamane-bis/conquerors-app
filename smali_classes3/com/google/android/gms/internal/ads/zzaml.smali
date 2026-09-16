.class public final Lcom/google/android/gms/internal/ads/zzaml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamj;


# static fields
.field private static final zza:[D


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzadt;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaoa;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzanb;

.field private final zzg:[Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzamk;

.field private zzi:J

.field private zzj:Z

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:J

.field private zzp:Z

.field private zzq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaml;->zza:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzd:Lcom/google/android/gms/internal/ads/zzaoa;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:[Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamk;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:Lcom/google/android/gms/internal/ads/zzamk;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanb;

    const/16 v0, 0xb2

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzanb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdy;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzo:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdy;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzi:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzi:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v5

    move-object/from16 v6, p1

    .line 2
    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:[Z

    .line 3
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfk;->zza([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:Lcom/google/android/gms/internal/ads/zzamk;

    .line 34
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzamk;->zza([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    .line 4
    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    if-nez v9, :cond_a

    if-lez v8, :cond_3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:Lcom/google/android/gms/internal/ads/zzamk;

    .line 5
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzamk;->zza([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:Lcom/google/android/gms/internal/ads/zzamk;

    .line 6
    invoke-virtual {v12, v5, v9}, Lcom/google/android/gms/internal/ads/zzamk;->zzc(II)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzb:Ljava/lang/String;

    .line 36
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzamk;->zzc:[B

    iget v14, v9, Lcom/google/android/gms/internal/ads/zzamk;->zza:I

    .line 8
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v14, 0x4

    .line 9
    aget-byte v15, v13, v14

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x5

    .line 10
    aget-byte v10, v13, v16

    and-int/lit16 v11, v10, 0xff

    const/16 v17, 0x6

    const/16 v18, 0x4

    .line 11
    aget-byte v14, v13, v17

    and-int/lit16 v14, v14, 0xff

    const/16 v17, 0x7

    move/from16 v19, v2

    .line 12
    aget-byte v2, v13, v17

    and-int/lit16 v2, v2, 0xf0

    and-int/lit8 v10, v10, 0xf

    shl-int/lit8 v15, v15, 0x4

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v11, v15

    shr-int/lit8 v2, v2, 0x4

    const/16 v15, 0x8

    shl-int/2addr v10, v15

    or-int/2addr v10, v14

    const/4 v14, 0x2

    if-eq v2, v14, :cond_7

    const/4 v14, 0x3

    if-eq v2, v14, :cond_6

    const/4 v14, 0x4

    if-eq v2, v14, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    mul-int/lit8 v2, v10, 0x79

    mul-int/lit8 v14, v11, 0x64

    goto :goto_2

    :cond_6
    mul-int/lit8 v2, v10, 0x10

    mul-int/lit8 v14, v11, 0x9

    goto :goto_2

    :cond_7
    mul-int/lit8 v2, v10, 0x4

    mul-int/lit8 v14, v11, 0x3

    :goto_2
    int-to-float v2, v2

    int-to-float v14, v14

    div-float/2addr v2, v14

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/ads/zzz;

    .line 13
    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 14
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzz;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const-string v12, "video/mpeg2"

    .line 15
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 16
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzz;->zzaf(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 17
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzz;->zzK(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 18
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzW(F)Lcom/google/android/gms/internal/ads/zzz;

    .line 19
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 20
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v2

    .line 21
    aget-byte v10, v13, v17

    and-int/lit8 v10, v10, 0xf

    add-int/lit8 v10, v10, -0x1

    const-wide/16 v11, 0x0

    if-ltz v10, :cond_9

    if-ge v10, v15, :cond_9

    sget-object v11, Lcom/google/android/gms/internal/ads/zzaml;->zza:[D

    aget-wide v10, v11, v10

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzamk;->zzb:I

    add-int/lit8 v9, v9, 0x9

    .line 22
    aget-byte v9, v13, v9

    and-int/lit8 v12, v9, 0x60

    shr-int/lit8 v12, v12, 0x5

    and-int/lit8 v9, v9, 0x1f

    if-eq v12, v9, :cond_8

    int-to-double v12, v12

    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    int-to-double v14, v9

    div-double/2addr v12, v14

    mul-double v10, v10, v12

    :cond_8
    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v12, v10

    double-to-long v11, v12

    .line 23
    :cond_9
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    .line 24
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzab;

    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    .line 25
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzl:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    goto :goto_4

    :cond_a
    move/from16 v19, v2

    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    if-eqz v2, :cond_e

    if-lez v8, :cond_b

    .line 26
    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzanb;->zza([BII)V

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    neg-int v1, v8

    :goto_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    .line 27
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzanb;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    .line 28
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanb;->zzb:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzb([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaml;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    .line 29
    sget v8, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdy;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzanb;->zza:[B

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzJ([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzd:Lcom/google/android/gms/internal/ads/zzaoa;

    .line 30
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaoa;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzo:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaml;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v1, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza(JLcom/google/android/gms/internal/ads/zzdy;)V

    :cond_c
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_e

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    add-int/lit8 v5, v4, 0x2

    .line 31
    aget-byte v2, v2, v5

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    .line 32
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzanb;->zzc(I)V

    :cond_d
    const/16 v5, 0xb2

    :cond_e
    if-eqz v5, :cond_10

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_f

    goto :goto_6

    :cond_f
    const/16 v1, 0xb8

    if-ne v5, v1, :cond_18

    const/4 v2, 0x1

    .line 33
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzp:Z

    goto :goto_c

    :cond_10
    :goto_6
    sub-int v13, v19, v4

    .line 32
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzq:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzk:Z

    if-eqz v1, :cond_11

    move-wide v1, v8

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzo:J

    cmp-long v4, v9, v1

    if-eqz v4, :cond_12

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzp:Z

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzi:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzn:J

    sub-long/2addr v14, v1

    long-to-int v1, v14

    sub-int v12, v1, v13

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    const/4 v14, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    goto :goto_7

    :cond_11
    move-wide v1, v8

    :cond_12
    :goto_7
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzj:Z

    if-eqz v4, :cond_14

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzq:Z

    if-eqz v4, :cond_13

    goto :goto_8

    :cond_13
    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    :goto_8
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzi:J

    int-to-long v10, v13

    sub-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzn:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzm:J

    cmp-long v4, v8, v1

    if-eqz v4, :cond_15

    goto :goto_9

    :cond_15
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzo:J

    cmp-long v4, v8, v1

    if-eqz v4, :cond_16

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzl:J

    add-long/2addr v8, v10

    goto :goto_9

    :cond_16
    move-wide v8, v1

    :goto_9
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzo:J

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzp:Z

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzm:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzj:Z

    :goto_a
    if-nez v5, :cond_17

    const/4 v10, 0x1

    goto :goto_b

    :cond_17
    const/4 v10, 0x0

    :goto_b
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaml;->zzq:Z

    :cond_18
    :goto_c
    move v1, v7

    move/from16 v2, v19

    goto/16 :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzanx;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanx;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzd:Lcom/google/android/gms/internal/ads/zzaoa;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzanx;)V

    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzp:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzi:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzn:J

    sub-long/2addr v0, v2

    move-wide v2, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    move-wide v5, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzo:J

    long-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzm:J

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzg:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzh([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzh:Lcom/google/android/gms/internal/ads/zzamk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzf:Lcom/google/android/gms/internal/ads/zzanb;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanb;->zzb()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzi:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzj:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaml;->zzo:J

    return-void
.end method
