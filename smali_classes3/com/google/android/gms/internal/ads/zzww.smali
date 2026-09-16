.class public final synthetic Lcom/google/android/gms/internal/ads/zzww;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxn;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzxh;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxh;Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzww;->zza:Lcom/google/android/gms/internal/ads/zzxh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzww;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzww;->zzc:[I

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbr;[I)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    sget v1, Lcom/google/android/gms/internal/ads/zzxt;->zzb:I

    .line 1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzww;->zza:Lcom/google/android/gms/internal/ads/zzxh;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzww;->zzc:[I

    aget v8, v1, p1

    .line 2
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzxh;->zzi:I

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzxh;->zzj:I

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzxh;->zzk:Z

    const v13, 0x7fffffff

    if-eq v1, v13, :cond_8

    if-ne v2, v13, :cond_0

    const/16 v16, -0x1

    goto/16 :goto_6

    :cond_0
    const/4 v6, 0x0

    const v7, 0x7fffffff

    .line 3
    :goto_0
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzbr;->zza:I

    if-ge v6, v9, :cond_7

    .line 4
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzbr;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v9

    .line 5
    iget v14, v9, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    if-lez v14, :cond_5

    iget v15, v9, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-lez v15, :cond_5

    if-eqz v4, :cond_3

    if-gt v14, v15, :cond_1

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/4 v11, 0x1

    :goto_1
    if-gt v1, v2, :cond_2

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    const/4 v12, 0x1

    :goto_2
    if-eq v11, v12, :cond_3

    move v11, v1

    move v12, v2

    goto :goto_3

    :cond_3
    move v12, v1

    move v11, v2

    :goto_3
    const/16 v16, -0x1

    mul-int v10, v14, v11

    mul-int v13, v15, v12

    if-lt v10, v13, :cond_4

    new-instance v10, Landroid/graphics/Point;

    .line 6
    sget v11, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    div-int/2addr v13, v14

    invoke-direct {v10, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    .line 9
    :cond_4
    new-instance v12, Landroid/graphics/Point;

    .line 7
    sget v13, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    add-int/2addr v10, v15

    add-int/lit8 v10, v10, -0x1

    div-int/2addr v10, v15

    invoke-direct {v12, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    move-object v10, v12

    .line 8
    :goto_4
    iget v11, v9, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    iget v12, v9, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    mul-int v12, v12, v11

    .line 9
    iget v13, v10, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148    # 0.98f

    mul-float v13, v13, v14

    float-to-int v13, v13

    if-lt v11, v13, :cond_6

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    mul-float v10, v10, v14

    float-to-int v10, v10

    if-lt v9, v10, :cond_6

    if-ge v12, v7, :cond_6

    move v7, v12

    goto :goto_5

    :cond_5
    const/16 v16, -0x1

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    const v13, 0x7fffffff

    goto :goto_0

    :cond_7
    const/16 v16, -0x1

    move v13, v7

    goto :goto_6

    :cond_8
    const/16 v16, -0x1

    const v13, 0x7fffffff

    .line 10
    :goto_6
    new-instance v10, Lcom/google/android/gms/internal/ads/zzfxk;

    .line 11
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    const/4 v4, 0x0

    .line 12
    :goto_7
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzbr;->zza:I

    if-ge v4, v1, :cond_b

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbr;->zzb(I)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzab;->zza()I

    move-result v1

    const v11, 0x7fffffff

    if-eq v13, v11, :cond_a

    const/4 v12, -0x1

    if-eq v1, v12, :cond_9

    if-gt v1, v13, :cond_9

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    goto :goto_9

    :cond_a
    const/4 v12, -0x1

    :goto_8
    const/4 v9, 0x1

    :goto_9
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzww;->zzb:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxr;

    .line 14
    aget v6, p3, v4

    move/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzxr;-><init>(ILcom/google/android/gms/internal/ads/zzbr;ILcom/google/android/gms/internal/ads/zzxh;ILjava/lang/String;IZ)V

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p2

    const/16 v16, -0x1

    goto :goto_7

    .line 15
    :cond_b
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v1

    return-object v1
.end method
