.class public final Lcom/google/android/gms/internal/ads/zzadc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:F

.field public final zzj:I

.field public final zzk:Ljava/lang/String;

.field public final zzl:Lcom/google/android/gms/internal/ads/zzfh;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadc;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzb:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzc:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzd:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzf:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzg:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzh:I

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzi:F

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzj:I

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzk:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzadc;->zzl:Lcom/google/android/gms/internal/ads/zzfh;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzadc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzadc;->zzc(Lcom/google/android/gms/internal/ads/zzdy;ZLcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdy;Lcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzc(Lcom/google/android/gms/internal/ads/zzdy;ZLcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzdy;ZLcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :cond_0
    const/16 v4, 0x15

    .line 2
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    .line 5
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v12

    add-int/lit8 v13, v12, 0x4

    add-int/2addr v9, v13

    .line 8
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :try_start_3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 10
    new-array v6, v9, [B

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v26, p2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, -0x1

    const/16 v25, 0x0

    :goto_3
    if-ge v11, v5, :cond_1a

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v13

    const/16 v14, 0x3f

    and-int/2addr v13, v14

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v8
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v10, v26

    const/4 v3, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x1

    :goto_4
    if-ge v3, v8, :cond_19

    .line 13
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v14

    move/from16 v26, v3

    .line 14
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfk;->zza:[B

    invoke-static {v3, v7, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v12, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v7

    .line 15
    invoke-static {v2, v7, v6, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    if-ne v13, v2, :cond_3

    if-nez v26, :cond_4

    add-int v2, v3, v14

    .line 43
    invoke-static {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzd([BII)Lcom/google/android/gms/internal/ads/zzfh;

    move-result-object v10

    move/from16 v31, v3

    move/from16 v29, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_3
    move v2, v13

    :cond_4
    const/16 v7, 0x21

    move/from16 v29, v4

    const/16 v4, 0x8

    if-ne v2, v7, :cond_7

    if-nez v26, :cond_6

    add-int v2, v3, v14

    .line 41
    invoke-static {v6, v3, v2, v10}, Lcom/google/android/gms/internal/ads/zzfk;->zzc([BIILcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzd:I

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfe;->zze:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzb:I

    add-int/2addr v15, v4

    const/16 v30, 0x8

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzc:I

    add-int/lit8 v4, v4, 0x8

    move/from16 v31, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzh:I

    move/from16 v16, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzi:I

    move/from16 v17, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzj:I

    move/from16 v18, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzf:F

    move/from16 v19, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzg:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfe;->zza:Lcom/google/android/gms/internal/ads/zzez;

    if-eqz v2, :cond_5

    move/from16 v20, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzez;->zza:I

    move/from16 v32, v3

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzez;->zzb:Z

    move/from16 v33, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzez;->zzc:I

    move/from16 v34, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzez;->zzd:I

    move/from16 v35, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzez;->zze:[I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzez;->zzf:I

    move/from16 v37, v2

    move-object/from16 v36, v3

    .line 42
    invoke-static/range {v32 .. v37}, Lcom/google/android/gms/internal/ads/zzcy;->zzd(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    goto :goto_5

    :cond_5
    move/from16 v20, v3

    :goto_5
    move/from16 v21, v18

    move/from16 v23, v19

    move/from16 v24, v20

    move/from16 v3, v26

    move/from16 v18, v4

    move/from16 v19, v16

    move/from16 v20, v17

    const/4 v4, 0x0

    move/from16 v16, v12

    move/from16 v17, v15

    move v15, v7

    goto/16 :goto_10

    :cond_6
    move/from16 v31, v3

    goto/16 :goto_f

    :cond_7
    move/from16 v31, v3

    const/16 v30, 0x8

    const/16 v3, 0x27

    if-ne v2, v3, :cond_18

    if-nez v26, :cond_18

    add-int v3, v31, v14

    add-int/lit8 v12, v12, 0x6

    add-int/lit8 v3, v3, -0x1

    .line 16
    :goto_6
    aget-byte v2, v6, v3

    if-nez v2, :cond_8

    if-le v3, v12, :cond_16

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_16

    if-gt v3, v12, :cond_9

    goto/16 :goto_d

    .line 40
    :cond_9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfl;

    add-int/lit8 v3, v3, 0x1

    .line 17
    invoke-direct {v2, v6, v12, v3}, Lcom/google/android/gms/internal/ads/zzfl;-><init>([BII)V

    :cond_a
    const/16 v3, 0x10

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zzg(I)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v3, 0x8

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v4

    const/4 v7, 0x0

    :goto_7
    const/16 v12, 0xff

    if-ne v4, v12, :cond_b

    add-int/lit16 v7, v7, 0xff

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v4

    goto :goto_7

    :cond_b
    add-int/2addr v7, v4

    .line 21
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v4

    const/4 v3, 0x0

    :goto_8
    if-ne v4, v12, :cond_c

    add-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    .line 22
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v30

    move/from16 v4, v30

    goto :goto_8

    :cond_c
    const/16 v30, 0x8

    add-int/2addr v3, v4

    if-eqz v3, :cond_16

    .line 23
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zzg(I)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_d

    :cond_d
    const/16 v3, 0xb0

    if-ne v7, v3, :cond_a

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v33

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v4

    move/from16 v34, v4

    goto :goto_9

    :cond_e
    const/16 v34, 0x0

    .line 27
    :goto_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v4

    const/4 v7, 0x0

    const/16 v36, -0x1

    const/16 v37, -0x1

    const/16 v38, -0x1

    const/16 v39, -0x1

    const/16 v40, -0x1

    const/16 v41, -0x1

    :goto_a
    if-gt v7, v4, :cond_15

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v36

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzc()I

    move-result v37

    const/4 v12, 0x6

    move/from16 v30, v3

    .line 30
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v3

    const/16 v12, 0x3f

    if-ne v3, v12, :cond_f

    goto :goto_d

    :cond_f
    if-nez v3, :cond_10

    add-int/lit8 v12, v33, -0x1e

    move/from16 v35, v3

    const/4 v3, 0x0

    .line 31
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_b

    :cond_10
    move/from16 v35, v3

    const/4 v3, 0x0

    add-int v12, v35, v33

    add-int/lit8 v12, v12, -0x1f

    .line 32
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 33
    :goto_b
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v39

    if-eqz v30, :cond_13

    const/4 v3, 0x6

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v3

    const/16 v12, 0x3f

    if-ne v3, v12, :cond_11

    goto :goto_d

    :cond_11
    if-nez v3, :cond_12

    add-int/lit8 v12, v34, -0x1e

    move/from16 v32, v3

    const/4 v3, 0x0

    .line 35
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_c

    :cond_12
    move/from16 v32, v3

    const/4 v3, 0x0

    add-int v12, v32, v34

    add-int/lit8 v12, v12, -0x1f

    .line 36
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 37
    :goto_c
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzfl;->zza(I)I

    move-result v41

    move/from16 v40, v32

    .line 38
    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfl;->zzh()Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0xa

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfl;->zzf(I)V

    :cond_14
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v30

    move/from16 v38, v35

    goto :goto_a

    .line 32
    :cond_15
    new-instance v32, Lcom/google/android/gms/internal/ads/zzfd;

    add-int/lit8 v35, v4, 0x1

    invoke-direct/range {v32 .. v41}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(IIIIIIIII)V

    move-object/from16 v2, v32

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_18

    if-eqz v10, :cond_18

    .line 16
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:I

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    const/4 v4, 0x0

    .line 40
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfxn;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzex;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzex;->zzb:I

    if-ne v2, v3, :cond_17

    move/from16 v3, v26

    const/16 v22, 0x4

    goto :goto_10

    :cond_17
    const/4 v2, 0x5

    move/from16 v3, v26

    const/16 v22, 0x5

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v4, 0x0

    move/from16 v3, v26

    :goto_10
    add-int v12, v31, v14

    .line 44
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v29

    const/4 v2, 0x4

    const/4 v7, 0x0

    const/16 v14, 0x3f

    goto/16 :goto_4

    :cond_19
    move/from16 v29, v4

    const/4 v4, 0x0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v26, v10

    move/from16 v4, v29

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_1a
    move/from16 v29, v4

    const/16 v28, 0x1

    if-nez v9, :cond_1b

    .line 45
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_11

    :cond_1b
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_11
    move-object v13, v0

    new-instance v12, Lcom/google/android/gms/internal/ads/zzadc;

    add-int/lit8 v14, v29, 0x1

    invoke-direct/range {v12 .. v26}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Ljava/util/List;IIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfh;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v12

    :catch_1
    move-exception v0

    const/16 v28, 0x1

    :goto_12
    const/4 v2, 0x1

    if-eq v2, v1, :cond_1c

    .line 2
    const-string v1, "HEVC config"

    goto :goto_13

    .line 46
    :cond_1c
    const-string v1, "L-HEVC config"

    .line 2
    :goto_13
    const-string v2, "Error parsing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v0

    throw v0
.end method
