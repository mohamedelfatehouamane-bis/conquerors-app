.class public final Lcom/google/android/gms/internal/ads/zzemf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzetr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzetr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcj;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeoj;Lcom/google/android/gms/internal/ads/zzfcj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzetr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzbzm;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzetr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzetr;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeme;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeme;-><init>(Lcom/google/android/gms/internal/ads/zzemf;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzw;->zzg:Lcom/google/android/gms/internal/ads/zzgcs;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgch;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfuc;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzeua;)Lcom/google/android/gms/internal/ads/zzemg;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zze:Lcom/google/android/gms/ads/internal/client/zzs;

    iget-object v1, v3, Lcom/google/android/gms/ads/internal/client/zzs;->zzg:[Lcom/google/android/gms/ads/internal/client/zzs;

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v3, Lcom/google/android/gms/ads/internal/client/zzs;->zza:Ljava/lang/String;

    .line 6
    iget-boolean v6, v3, Lcom/google/android/gms/ads/internal/client/zzs;->zzi:Z

    goto :goto_1

    :cond_0
    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 29
    :goto_0
    array-length v11, v1

    if-ge v8, v11, :cond_5

    .line 2
    aget-object v11, v1, v8

    .line 3
    iget-boolean v12, v11, Lcom/google/android/gms/ads/internal/client/zzs;->zzi:Z

    if-nez v12, :cond_1

    if-nez v9, :cond_1

    .line 4
    iget-object v6, v11, Lcom/google/android/gms/ads/internal/client/zzs;->zza:Ljava/lang/String;

    const/4 v9, 0x1

    :cond_1
    if-eqz v12, :cond_3

    if-nez v10, :cond_2

    const/4 v7, 0x1

    :cond_2
    const/4 v10, 0x1

    :cond_3
    if-eqz v9, :cond_4

    if-nez v10, :cond_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    move-object v1, v6

    move v6, v7

    .line 6
    :goto_1
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzemf;->zzc:Landroid/content/Context;

    .line 7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    .line 8
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzbzm;

    .line 9
    iget v9, v7, Landroid/util/DisplayMetrics;->density:F

    .line 10
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbzm;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzj()Ljava/lang/String;

    move-result-object v2

    move v8, v9

    move v9, v7

    move v7, v8

    move v8, v10

    move-object v10, v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    move-object v10, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v12, v3, Lcom/google/android/gms/ads/internal/client/zzs;->zzg:[Lcom/google/android/gms/ads/internal/client/zzs;

    if-eqz v12, :cond_f

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    array-length v15, v12

    const/16 p1, 0x0

    const-string v2, "|"

    if-ge v13, v15, :cond_d

    .line 15
    aget-object v15, v12, v13

    .line 16
    iget-boolean v4, v15, Lcom/google/android/gms/ads/internal/client/zzs;->zzi:Z

    if-eqz v4, :cond_7

    const/4 v14, 0x1

    goto :goto_6

    .line 17
    :cond_7
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 18
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_8
    iget v2, v15, Lcom/google/android/gms/ads/internal/client/zzs;->zze:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    cmpl-float v2, v7, p1

    if-eqz v2, :cond_9

    .line 20
    iget v2, v15, Lcom/google/android/gms/ads/internal/client/zzs;->zzf:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-int v2, v2

    goto :goto_4

    :cond_9
    const/4 v2, -0x1

    .line 21
    :cond_a
    :goto_4
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    .line 22
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget v2, v15, Lcom/google/android/gms/ads/internal/client/zzs;->zzb:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_c

    cmpl-float v2, v7, p1

    if-eqz v2, :cond_b

    .line 24
    iget v2, v15, Lcom/google/android/gms/ads/internal/client/zzs;->zzc:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-int v2, v2

    goto :goto_5

    :cond_b
    const/4 v2, -0x2

    .line 25
    :cond_c
    :goto_5
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_d
    if-eqz v14, :cond_f

    .line 26
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_e

    .line 27
    invoke-virtual {v11, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v2, "320x50"

    .line 28
    invoke-virtual {v11, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-boolean v11, v4, Lcom/google/android/gms/internal/ads/zzfcj;->zzq:Z

    move v5, v6

    move-object v6, v2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzemg;

    move-object v4, v1

    .line 29
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzemg;-><init>(Lcom/google/android/gms/ads/internal/client/zzs;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V

    return-object v2
.end method
