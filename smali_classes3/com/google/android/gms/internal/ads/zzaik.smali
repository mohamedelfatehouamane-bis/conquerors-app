.class public final Lcom/google/android/gms/internal/ads/zzaik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const-string v0, "OpusHead"

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaik;->zzb:[B

    return-void
.end method

.method public static zza(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 12

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaik;->zzi(Lcom/google/android/gms/internal/ads/zzdy;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v6

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    add-int/2addr v6, v7

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_4

    if-ge v7, v1, :cond_4

    .line 17
    aget-object v7, v3, v7

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v8

    if-ge v8, v6, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v9

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v10

    const v11, 0x64617461

    if-ne v10, v11, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v10

    add-int/lit8 v9, v9, -0x10

    .line 23
    new-array v11, v9, [B

    .line 24
    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzem;

    .line 25
    invoke-direct {v9, v7, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzem;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v8, v9

    .line 20
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_5

    .line 26
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipped metadata with unknown key index: "

    .line 16
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BoxParsers"

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_5
    :goto_4
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/google/android/gms/internal/ads/zzay;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzay;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_5
    return-object v2
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzeo;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzay;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzax;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzay;-><init>(J[Lcom/google/android/gms/internal/ads/zzax;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v3

    if-lt v3, v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v6

    add-int/2addr v6, v3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    const v8, 0x6d657461

    const/4 v9, 0x0

    if-ne v7, v8, :cond_5

    .line 4
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzg(Lcom/google/android/gms/internal/ads/zzdy;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v3

    if-ge v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    add-int/2addr v7, v3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    const v10, 0x696c7374

    if-ne v8, v10, :cond_3

    .line 10
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    new-instance v3, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v8

    if-ge v8, v7, :cond_1

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzais;->zza(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzax;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 14
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 30
    :cond_2
    new-instance v9, Lcom/google/android/gms/internal/ads/zzay;

    .line 15
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzay;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    goto :goto_1

    .line 16
    :cond_4
    :goto_3
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzay;->zzd(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v1

    goto/16 :goto_a

    :cond_5
    const v8, 0x736d7461

    if-ne v7, v8, :cond_13

    .line 17
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/16 v3, 0xc

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v7

    if-ge v7, v6, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v7

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v10

    const v11, 0x73617574

    if-ne v10, v11, :cond_11

    const/16 v7, 0x10

    if-ge v8, v7, :cond_6

    goto/16 :goto_9

    :cond_6
    const/4 v7, 0x4

    .line 22
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_5
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v8, v11, :cond_9

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v11

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v13

    if-nez v11, :cond_7

    move v7, v13

    goto :goto_6

    :cond_7
    if-ne v11, v12, :cond_8

    move v10, v13

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    const v8, -0x7fffffff

    if-ne v7, v3, :cond_a

    const/16 v3, 0xf0

    goto :goto_8

    :cond_a
    const/16 v11, 0xd

    if-ne v7, v11, :cond_b

    const/16 v3, 0x78

    goto :goto_8

    :cond_b
    const/16 v11, 0x15

    if-eq v7, v11, :cond_d

    :cond_c
    :goto_7
    const v3, -0x7fffffff

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v7

    if-lt v7, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v7

    add-int/2addr v7, v0

    if-le v7, v6, :cond_e

    goto :goto_7

    .line 25
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v11

    if-lt v7, v3, :cond_c

    const v3, 0x73726672

    if-eq v11, v3, :cond_f

    goto :goto_7

    .line 27
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzn()I

    move-result v3

    :goto_8
    if-ne v3, v8, :cond_10

    goto :goto_9

    .line 24
    :cond_10
    new-instance v9, Lcom/google/android/gms/internal/ads/zzay;

    new-array v7, v12, [Lcom/google/android/gms/internal/ads/zzax;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzahc;

    int-to-float v3, v3

    invoke-direct {v8, v3, v10}, Lcom/google/android/gms/internal/ads/zzahc;-><init>(FI)V

    aput-object v8, v7, v2

    invoke-direct {v9, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzay;-><init>(J[Lcom/google/android/gms/internal/ads/zzax;)V

    goto :goto_9

    :cond_11
    add-int/2addr v7, v8

    .line 21
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    goto/16 :goto_4

    .line 28
    :cond_12
    :goto_9
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzay;->zzd(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v1

    goto :goto_a

    :cond_13
    const v3, -0x56878686

    if-ne v7, v3, :cond_14

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzl(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzay;->zzd(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v1

    .line 30
    :cond_14
    :goto_a
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    goto/16 :goto_0

    :cond_15
    return-object v1
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzew;
    .locals 11

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzt()J

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzt()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v9

    new-instance v4, Lcom/google/android/gms/internal/ads/zzew;

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzew;-><init>(JJJ)V

    return-object v4
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzajb;Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzadb;)Lcom/google/android/gms/internal/ads/zzaje;
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaig;

    .line 2
    invoke-direct {v6, v3, v5}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(Lcom/google/android/gms/internal/ads/zzeo;Lcom/google/android/gms/internal/ads/zzab;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 120
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaih;

    .line 5
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Lcom/google/android/gms/internal/ads/zzeo;)V

    .line 2
    :goto_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaid;->zzb()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaje;

    new-array v2, v5, [J

    new-array v3, v5, [I

    new-array v4, v5, [J

    new-array v6, v5, [I

    const-wide/16 v7, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(Lcom/google/android/gms/internal/ads/zzajb;[J[II[J[IJ)V

    return-object v0

    :cond_1
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ne v7, v8, :cond_2

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzf:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_2

    int-to-float v7, v3

    long-to-float v11, v11

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v12

    const v13, 0x49742400    # 1000000.0f

    div-float/2addr v11, v13

    div-float/2addr v7, v11

    .line 7
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzz;->zzI(F)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzajb;->zza(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzajb;

    move-result-object v1

    :cond_2
    move-object v12, v1

    const v1, 0x7374636f

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v1

    if-nez v1, :cond_3

    const v1, 0x636f3634

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v11, v1

    check-cast v11, Lcom/google/android/gms/internal/ads/zzeo;

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    const v13, 0x73747363

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v13

    .line 131
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v14, v13

    check-cast v14, Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const v14, 0x73747473

    .line 11
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v14

    .line 130
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v15, v14

    check-cast v15, Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const v15, 0x73747373

    .line 12
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v15

    if-eqz v15, :cond_4

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    move-wide/from16 v16, v9

    const v9, 0x63747473

    .line 13
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzahz;

    .line 14
    invoke-direct {v9, v13, v1, v11}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(Lcom/google/android/gms/internal/ads/zzdy;Lcom/google/android/gms/internal/ads/zzdy;Z)V

    const/16 v1, 0xc

    .line 15
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v10

    const/4 v11, -0x1

    add-int/2addr v10, v11

    .line 17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v13

    .line 18
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v4

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v19

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    :goto_4
    if-eqz v15, :cond_8

    .line 21
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 22
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v1

    if-lez v1, :cond_7

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    const/16 v18, -0x1

    :goto_6
    const/16 v20, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaid;->zza()I

    move-result v5

    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    if-eq v5, v11, :cond_f

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const/16 p0, -0x1

    const-string v11, "audio/raw"

    .line 24
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "audio/g711-mlaw"

    .line 25
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "audio/g711-alaw"

    .line 26
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_9
    if-nez v10, :cond_10

    if-nez v19, :cond_e

    if-nez v1, :cond_e

    iget v0, v9, Lcom/google/android/gms/internal/ads/zzahz;->zza:I

    new-array v1, v0, [J

    new-array v6, v0, [I

    .line 49
    :goto_7
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzahz;->zza()Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, v9, Lcom/google/android/gms/internal/ads/zzahz;->zzb:I

    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/zzahz;->zzd:J

    .line 50
    aput-wide v10, v1, v8

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzahz;->zzc:I

    .line 51
    aput v10, v6, v8

    goto :goto_7

    :cond_a
    int-to-long v8, v4

    const/16 v4, 0x2000

    .line 52
    div-int/2addr v4, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_8
    if-ge v10, v0, :cond_b

    .line 53
    aget v13, v6, v10

    .line 54
    sget v14, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    add-int/2addr v13, v4

    add-int/lit8 v13, v13, -0x1

    .line 55
    div-int/2addr v13, v4

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 56
    :cond_b
    new-array v10, v11, [J

    .line 57
    new-array v13, v11, [I

    .line 58
    new-array v14, v11, [J

    .line 59
    new-array v11, v11, [I

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x1

    :goto_9
    if-ge v15, v0, :cond_d

    .line 60
    aget v23, v6, v15

    .line 61
    aget-wide v24, v1, v15

    move/from16 v43, v19

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v18, v43

    move/from16 v43, v23

    move-object/from16 v23, v1

    move/from16 v1, v43

    :goto_a
    if-lez v1, :cond_c

    .line 62
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 63
    aput-wide v24, v10, v18

    move/from16 p1, v1

    mul-int v1, v5, v26

    .line 64
    aput v1, v13, v18

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v27, v0

    int-to-long v0, v7

    mul-long v0, v0, v8

    .line 66
    aput-wide v0, v14, v18

    .line 67
    aput v22, v11, v18

    .line 68
    aget v0, v13, v18

    int-to-long v0, v0

    add-long v24, v24, v0

    add-int v7, v7, v26

    sub-int v1, p1, v26

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v27

    goto :goto_a

    :cond_c
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v18

    move/from16 v18, v0

    move/from16 v0, v19

    move/from16 v19, v1

    move-object/from16 v1, v23

    goto :goto_9

    :cond_d
    int-to-long v0, v7

    mul-long v8, v8, v0

    move-wide v4, v8

    move-object v0, v14

    move/from16 v15, v18

    move-object v14, v13

    goto/16 :goto_1c

    :cond_e
    const/16 v22, 0x1

    const/4 v10, 0x0

    goto :goto_b

    :cond_f
    const/16 p0, -0x1

    :cond_10
    const/16 v22, 0x1

    .line 85
    :goto_b
    new-array v5, v3, [J

    new-array v7, v3, [I

    new-array v8, v3, [J

    new-array v11, v3, [I

    move-object/from16 p1, v0

    move/from16 v23, v1

    move-object/from16 v25, v6

    move/from16 v24, v10

    move/from16 v31, v13

    move-wide/from16 v27, v16

    move-wide/from16 v29, v27

    move/from16 v10, v18

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    :goto_c
    const-string v13, "BoxParsers"

    if-ge v0, v3, :cond_1c

    move-wide/from16 v32, v27

    const/16 v27, 0x1

    :goto_d
    if-nez v18, :cond_12

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzahz;->zza()Z

    move-result v27

    if-eqz v27, :cond_11

    move-object/from16 v28, v14

    move-object/from16 v34, v15

    iget-wide v14, v9, Lcom/google/android/gms/internal/ads/zzahz;->zzd:J

    move/from16 v35, v3

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzahz;->zzc:I

    move/from16 v18, v3

    move-wide/from16 v32, v14

    move-object/from16 v14, v28

    move-object/from16 v15, v34

    move/from16 v3, v35

    goto :goto_d

    :cond_11
    move/from16 v35, v3

    const/4 v3, 0x0

    goto :goto_e

    :cond_12
    move/from16 v35, v3

    move/from16 v3, v18

    :goto_e
    move-object/from16 v28, v14

    move-object/from16 v34, v15

    if-nez v27, :cond_13

    const-string v3, "Unexpected end of chunk data"

    .line 39
    invoke-static {v13, v3}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 41
    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    .line 42
    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    .line 43
    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    move-object v10, v3

    move-object v14, v5

    move-object v11, v7

    move v3, v0

    goto/16 :goto_13

    :cond_13
    if-nez p1, :cond_14

    goto :goto_10

    :cond_14
    :goto_f
    if-nez v26, :cond_16

    if-lez v19, :cond_15

    add-int/lit8 v19, v19, -0x1

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v26

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v1

    goto :goto_f

    :cond_15
    const/16 v26, 0x0

    :cond_16
    add-int/lit8 v26, v26, -0x1

    .line 30
    :goto_10
    aput-wide v32, v5, v0

    .line 31
    invoke-interface/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzaid;->zzc()I

    move-result v13

    aput v13, v7, v0

    if-le v13, v6, :cond_17

    move v6, v13

    :cond_17
    int-to-long v13, v1

    add-long v13, v29, v13

    .line 32
    aput-wide v13, v8, v0

    if-nez v34, :cond_18

    const/4 v13, 0x1

    goto :goto_11

    :cond_18
    const/4 v13, 0x0

    .line 33
    :goto_11
    aput v13, v11, v0

    if-ne v0, v10, :cond_19

    .line 34
    aput v22, v11, v0

    add-int/lit8 v23, v23, -0x1

    if-lez v23, :cond_19

    .line 44
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    move-object/from16 v15, v34

    check-cast v15, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :cond_19
    int-to-long v13, v4

    add-long v29, v29, v13

    add-int/lit8 v31, v31, -0x1

    if-nez v31, :cond_1b

    if-lez v24, :cond_1a

    .line 36
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v4

    .line 37
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v13

    add-int/lit8 v24, v24, -0x1

    move/from16 v31, v4

    move v4, v13

    goto :goto_12

    :cond_1a
    const/16 v31, 0x0

    .line 38
    :cond_1b
    :goto_12
    aget v13, v7, v0

    int-to-long v13, v13

    add-long v13, v32, v13

    add-int/lit8 v18, v3, -0x1

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v43, v13

    move-object/from16 v14, v28

    move-wide/from16 v27, v43

    move-object/from16 v15, v34

    move/from16 v3, v35

    goto/16 :goto_c

    :cond_1c
    move/from16 v35, v3

    move-object v10, v5

    move-object v4, v7

    move-object v14, v8

    :goto_13
    int-to-long v0, v1

    add-long v8, v29, v0

    if-eqz p1, :cond_1e

    :goto_14
    if-lez v19, :cond_1e

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_15

    .line 46
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    add-int/lit8 v19, v19, -0x1

    goto :goto_14

    :cond_1e
    const/4 v0, 0x1

    :goto_15
    if-nez v23, :cond_24

    if-nez v31, :cond_23

    if-nez v18, :cond_22

    if-nez v24, :cond_21

    if-nez v26, :cond_20

    if-nez v0, :cond_1f

    move/from16 p1, v3

    move-object/from16 v18, v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    goto :goto_19

    :cond_1f
    move/from16 p1, v3

    move-object/from16 v18, v4

    move/from16 v19, v6

    move-wide/from16 v23, v8

    goto/16 :goto_1b

    :cond_20
    move/from16 p1, v3

    move-object/from16 v18, v4

    move/from16 v15, v26

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_16

    :cond_21
    move/from16 p1, v3

    move-object/from16 v18, v4

    move/from16 v7, v24

    move/from16 v15, v26

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_16
    move v3, v0

    goto :goto_18

    :cond_22
    move/from16 p1, v3

    move/from16 v5, v18

    move/from16 v7, v24

    move/from16 v15, v26

    const/4 v1, 0x0

    goto :goto_17

    :cond_23
    move/from16 p1, v3

    move/from16 v5, v18

    move/from16 v7, v24

    move/from16 v15, v26

    move/from16 v1, v31

    :goto_17
    move v3, v0

    move-object/from16 v18, v4

    :goto_18
    const/4 v0, 0x0

    goto :goto_19

    :cond_24
    move/from16 p1, v3

    move/from16 v5, v18

    move/from16 v7, v24

    move/from16 v15, v26

    move/from16 v1, v31

    move v3, v0

    move-object/from16 v18, v4

    move/from16 v0, v23

    .line 45
    :goto_19
    iget v4, v12, Lcom/google/android/gms/internal/ads/zzajb;->zza:I

    move/from16 v19, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-wide/from16 v23, v8

    const-string v8, "Inconsistent stbl box for track "

    .line 47
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": remainingSynchronizationSamples "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-eq v0, v3, :cond_25

    const-string v0, ", ctts invalid"

    goto :goto_1a

    .line 48
    :cond_25
    const-string v0, ""

    .line 47
    :goto_1a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    move/from16 v3, p1

    move-object v0, v14

    move-object/from16 v14, v18

    move/from16 v15, v19

    move-wide/from16 v4, v23

    :goto_1c
    move-object v13, v10

    .line 68
    iget-wide v8, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    .line 69
    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v6, 0xf4240

    .line 70
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v18

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzi:[J

    if-nez v1, :cond_26

    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    .line 71
    invoke-static {v0, v6, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzei;->zzF([JJJ)V

    move-object/from16 v17, v11

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaje;

    move-object/from16 v16, v0

    .line 72
    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(Lcom/google/android/gms/internal/ads/zzajb;[J[II[J[IJ)V

    return-object v11

    :cond_26
    move-object/from16 v18, v14

    move-wide/from16 v8, v16

    move-object v14, v0

    move-object/from16 v17, v11

    array-length v0, v1

    const/4 v10, 0x1

    if-ne v0, v10, :cond_29

    iget v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    if-ne v0, v10, :cond_29

    .line 73
    array-length v0, v14

    const/4 v10, 0x2

    if-lt v0, v10, :cond_29

    iget-object v10, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzj:[J

    .line 129
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    check-cast v10, [J

    aget-wide v23, v10, v20

    .line 75
    aget-wide v25, v1, v20

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    move-wide/from16 v32, v8

    iget-wide v8, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzd:J

    sget-object v31, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v29, v8

    move-wide/from16 v27, v10

    .line 76
    invoke-static/range {v25 .. v31}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    add-long v8, v23, v8

    add-int/lit8 v1, v0, -0x1

    const/4 v10, 0x4

    .line 77
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v0, v0, -0x4

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    aget-wide v25, v14, v11

    cmp-long v1, v25, v23

    if-gtz v1, :cond_2a

    aget-wide v10, v14, v10

    cmp-long v1, v23, v10

    if-gez v1, :cond_2a

    aget-wide v0, v14, v0

    cmp-long v10, v0, v8

    if-gez v10, :cond_2a

    cmp-long v0, v8, v4

    if-gtz v0, :cond_2a

    sub-long v34, v23, v25

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    int-to-long v0, v0

    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v36, v0

    move-wide/from16 v38, v10

    .line 80
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    iget-object v10, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    iget-wide v6, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    sub-long v23, v4, v8

    iget v8, v10, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    int-to-long v8, v8

    sget-object v29, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v27, v6

    move-wide/from16 v25, v8

    .line 81
    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    cmp-long v8, v0, v32

    if-nez v8, :cond_27

    cmp-long v0, v6, v32

    if-eqz v0, :cond_2a

    move-wide/from16 v0, v32

    :cond_27
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v0, v8

    if-gtz v10, :cond_2a

    cmp-long v10, v6, v8

    if-lez v10, :cond_28

    goto :goto_1d

    :cond_28
    long-to-int v1, v0

    .line 119
    iput v1, v2, Lcom/google/android/gms/internal/ads/zzadb;->zza:I

    long-to-int v0, v6

    iput v0, v2, Lcom/google/android/gms/internal/ads/zzadb;->zzb:I

    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    const-wide/32 v2, 0xf4240

    .line 82
    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzF([JJJ)V

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzi:[J

    const/16 v20, 0x0

    .line 83
    aget-wide v1, v0, v20

    iget-wide v5, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzd:J

    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v3, 0xf4240

    .line 84
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaje;

    move-object/from16 v16, v14

    move-object/from16 v14, v18

    move-wide/from16 v18, v0

    .line 85
    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(Lcom/google/android/gms/internal/ads/zzajb;[J[II[J[IJ)V

    return-object v11

    :cond_29
    move-wide/from16 v32, v8

    .line 81
    :cond_2a
    :goto_1d
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzi:[J

    .line 86
    array-length v1, v0

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2d

    const/16 v20, 0x0

    aget-wide v1, v0, v20

    cmp-long v0, v1, v32

    if-nez v0, :cond_2c

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzj:[J

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    check-cast v0, [J

    aget-wide v1, v0, v20

    const/4 v0, 0x0

    .line 122
    :goto_1e
    array-length v3, v14

    if-ge v0, v3, :cond_2b

    .line 123
    aget-wide v6, v14, v0

    sub-long v19, v6, v1

    iget-wide v6, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v21, 0xf4240

    move-wide/from16 v23, v6

    .line 124
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 125
    aput-wide v6, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2b
    sub-long v19, v4, v1

    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v21, 0xf4240

    move-wide/from16 v23, v0

    .line 126
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaje;

    move-object/from16 v16, v14

    move-object/from16 v14, v18

    move-wide/from16 v18, v0

    .line 127
    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(Lcom/google/android/gms/internal/ads/zzajb;[J[II[J[IJ)V

    return-object v11

    :cond_2c
    const/4 v1, 0x1

    :cond_2d
    move-object v0, v14

    move-object/from16 v11, v17

    move-object/from16 v14, v18

    iget v2, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_2e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v2, 0x0

    :goto_1f
    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzj:[J

    new-array v5, v1, [I

    new-array v1, v1, [I

    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    check-cast v4, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_20
    iget-object v10, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzi:[J

    move-object/from16 v16, v1

    .line 88
    array-length v1, v10

    if-ge v6, v1, :cond_33

    move-object v1, v5

    move/from16 v17, v6

    .line 89
    aget-wide v5, v4, v17

    const-wide/16 v18, -0x1

    cmp-long v23, v5, v18

    if-eqz v23, :cond_32

    .line 90
    aget-wide v24, v10, v17

    move-object/from16 p1, v11

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    move-wide/from16 v26, v10

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzd:J

    sget-object v30, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v28, v10

    .line 91
    invoke-static/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    move-object/from16 p2, v1

    const/4 v1, 0x1

    .line 92
    invoke-static {v0, v5, v6, v1, v1}, Lcom/google/android/gms/internal/ads/zzei;->zzd([JJZZ)I

    move-result v18

    aput v18, p2, v17

    .line 93
    :goto_21
    aget v18, p2, v17

    if-ltz v18, :cond_2f

    aget v19, p1, v18

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_2f

    add-int/lit8 v18, v18, -0x1

    .line 94
    aput v18, p2, v17

    const/4 v1, 0x1

    goto :goto_21

    :cond_2f
    add-long/2addr v5, v10

    const/4 v11, 0x0

    .line 95
    invoke-static {v0, v5, v6, v2, v11}, Lcom/google/android/gms/internal/ads/zzei;->zza([JJZZ)I

    move-result v1

    aput v1, v16, v17

    iget v10, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_30

    .line 96
    :goto_22
    aget v1, v16, v17

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    if-ge v1, v10, :cond_30

    add-int/lit8 v10, v1, 0x1

    aget-wide v18, v0, v10

    cmp-long v21, v18, v5

    if-gtz v21, :cond_30

    .line 97
    aput v10, v16, v17

    goto :goto_22

    .line 98
    :cond_30
    aget v5, p2, v17

    sub-int v6, v1, v5

    add-int/2addr v7, v6

    if-eq v9, v5, :cond_31

    const/4 v5, 0x1

    goto :goto_23

    :cond_31
    const/4 v5, 0x0

    :goto_23
    or-int/2addr v5, v8

    move v9, v1

    move v8, v5

    goto :goto_24

    :cond_32
    move-object/from16 p2, v1

    move-object/from16 p1, v11

    const/4 v11, 0x2

    :goto_24
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v11, p1

    move-object/from16 v5, p2

    move-object/from16 v1, v16

    goto :goto_20

    :cond_33
    move-object/from16 p2, v5

    move-object/from16 p1, v11

    if-eq v7, v3, :cond_34

    const/4 v1, 0x1

    goto :goto_25

    :cond_34
    const/4 v1, 0x0

    :goto_25
    or-int/2addr v1, v8

    if-eqz v1, :cond_35

    .line 99
    new-array v2, v7, [J

    goto :goto_26

    :cond_35
    move-object v2, v13

    :goto_26
    if-eqz v1, :cond_36

    .line 100
    new-array v3, v7, [I

    goto :goto_27

    :cond_36
    move-object v3, v14

    :goto_27
    const/4 v10, 0x1

    if-ne v10, v1, :cond_37

    const/4 v15, 0x0

    :cond_37
    if-eqz v1, :cond_38

    .line 101
    new-array v11, v7, [I

    goto :goto_28

    :cond_38
    move-object/from16 v11, p1

    .line 102
    :goto_28
    new-array v4, v7, [J

    move/from16 v27, v15

    move-wide/from16 v34, v32

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_29
    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzi:[J

    .line 103
    array-length v8, v8

    if-ge v5, v8, :cond_3d

    iget-object v8, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzj:[J

    .line 104
    aget-wide v9, v8, v5

    .line 105
    aget v8, p2, v5

    .line 106
    aget v15, v16, v5

    move-object/from16 v17, v0

    if-eqz v1, :cond_39

    sub-int v0, v15, v8

    .line 107
    invoke-static {v13, v8, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    invoke-static {v14, v8, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p0, v1

    move-object/from16 v1, p1

    .line 109
    invoke-static {v1, v8, v11, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    :cond_39
    move/from16 p0, v1

    move-object/from16 v1, p1

    :goto_2a
    move/from16 v0, v27

    :goto_2b
    if-ge v8, v15, :cond_3c

    move-object/from16 p1, v1

    move-object/from16 v25, v2

    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzd:J

    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v36, 0xf4240

    move-wide/from16 v38, v1

    .line 110
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    .line 111
    aget-wide v18, v17, v8

    sub-long v36, v18, v9

    move-wide/from16 v18, v1

    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    sget-object v42, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v38, 0xf4240

    move-wide/from16 v40, v1

    .line 112
    invoke-static/range {v36 .. v42}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    cmp-long v21, v1, v32

    if-gez v21, :cond_3a

    const/16 v22, 0x0

    goto :goto_2c

    :cond_3a
    const/16 v22, 0x1

    :goto_2c
    const/16 v21, 0x1

    xor-int/lit8 v23, v22, 0x1

    or-int v6, v23, v6

    add-long v1, v18, v1

    .line 113
    aput-wide v1, v4, v7

    if-eqz p0, :cond_3b

    .line 114
    aget v1, v3, v7

    if-le v1, v0, :cond_3b

    .line 115
    aget v0, v14, v8

    :cond_3b
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    goto :goto_2b

    :cond_3c
    move-object/from16 p1, v1

    move-object/from16 v25, v2

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzi:[J

    .line 116
    aget-wide v8, v1, v5

    add-long v34, v34, v8

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p0

    move/from16 v27, v0

    move-object/from16 v0, v17

    goto/16 :goto_29

    :cond_3d
    move-object/from16 v25, v2

    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzd:J

    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v36, 0xf4240

    move-wide/from16 v38, v0

    .line 117
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v30

    if-eqz v6, :cond_3e

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    const/4 v10, 0x1

    .line 118
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzz;->zzJ(Z)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/zzajb;->zza(Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzajb;

    move-result-object v12

    :cond_3e
    move-object/from16 v24, v12

    new-instance v23, Lcom/google/android/gms/internal/ads/zzaje;

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v11

    .line 119
    invoke-direct/range {v23 .. v31}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(Lcom/google/android/gms/internal/ads/zzajb;[J[II[J[IJ)V

    return-object v23

    .line 3
    :cond_3f
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v0

    throw v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzadb;JLcom/google/android/gms/internal/ads/zzu;ZZLcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;
    .locals 69
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_89

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/android/gms/internal/ads/zzen;

    .line 4
    iget v1, v14, Lcom/google/android/gms/internal/ads/zzen;->zzd:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move-object v2, v11

    move/from16 v35, v13

    goto/16 :goto_58

    :cond_0
    const v1, 0x6d766864

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeo;

    const v2, 0x6d646961

    .line 6
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzen;

    const v3, 0x68646c72    # 4.3148E24f

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaik;->zzi(Lcom/google/android/gms/internal/ads/zzdy;)I

    move-result v3

    const v4, 0x736f756e

    const/4 v7, -0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const v4, 0x76696465

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :cond_2
    const v4, 0x74657874

    if-eq v3, v4, :cond_5

    const v4, 0x7362746c

    if-eq v3, v4, :cond_5

    const v4, 0x73756274

    if-eq v3, v4, :cond_5

    const v4, 0x636c6370

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const v4, 0x6d657461

    if-ne v3, v4, :cond_4

    const/4 v3, 0x5

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x3

    :goto_2
    if-ne v3, v7, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v41, v11

    move/from16 v35, v13

    move-object v1, v14

    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_57

    :cond_6
    const v9, 0x746b6864

    .line 8
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v9

    .line 240
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v10, v9

    check-cast v10, Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v10, 0x8

    .line 9
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v16

    const/16 v17, 0x5

    const/16 v15, 0x10

    if-nez v16, :cond_7

    const/16 v4, 0x8

    goto :goto_4

    :cond_7
    const/16 v4, 0x10

    .line 11
    :goto_4
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 12
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v4

    const/4 v8, 0x4

    .line 13
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v20

    const/4 v5, 0x0

    :goto_5
    if-nez v16, :cond_8

    const/4 v6, 0x4

    goto :goto_6

    :cond_8
    const/16 v6, 0x8

    :goto_6
    const-wide/16 v23, 0x0

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_b

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v6

    add-int v27, v20, v5

    .line 14
    aget-byte v6, v6, v27

    if-eq v6, v7, :cond_a

    if-nez v16, :cond_9

    .line 16
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v5

    goto :goto_7

    :cond_9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v5

    :goto_7
    cmp-long v16, v5, v23

    if-nez v16, :cond_c

    goto :goto_8

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 15
    :cond_b
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    :goto_8
    move-wide/from16 v5, v25

    .line 17
    :cond_c
    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 18
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v16

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v15

    .line 20
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 21
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v9

    const/high16 v12, 0x10000

    const/high16 v7, -0x10000

    if-nez v16, :cond_10

    if-ne v15, v12, :cond_f

    if-ne v8, v7, :cond_e

    if-nez v9, :cond_d

    const/16 v7, 0x5a

    goto :goto_a

    :cond_d
    const/high16 v8, -0x10000

    :cond_e
    const/high16 v15, 0x10000

    :cond_f
    const/16 v16, 0x0

    :cond_10
    if-nez v16, :cond_14

    if-ne v15, v7, :cond_13

    if-ne v8, v12, :cond_11

    if-nez v9, :cond_12

    const/16 v7, 0x10e

    goto :goto_a

    :cond_11
    move v12, v8

    :cond_12
    const/4 v8, 0x0

    const/high16 v15, -0x10000

    goto :goto_9

    :cond_13
    move v12, v8

    const/4 v8, 0x0

    goto :goto_9

    :cond_14
    move v12, v8

    move/from16 v8, v16

    :goto_9
    if-ne v8, v7, :cond_15

    if-nez v15, :cond_15

    if-nez v12, :cond_15

    if-ne v9, v7, :cond_15

    const/16 v7, 0xb4

    goto :goto_a

    :cond_15
    const/4 v7, 0x0

    :goto_a
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaii;

    invoke-direct {v12, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzaii;-><init>(IJI)V

    cmp-long v4, p2, v25

    if-nez v4, :cond_16

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzaii;->zzc(Lcom/google/android/gms/internal/ads/zzaii;)J

    move-result-wide v4

    move-wide/from16 v34, v4

    goto :goto_b

    :cond_16
    move-wide/from16 v34, p2

    :goto_b
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaik;->zzd(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzew;

    move-result-object v1

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzew;->zzc:J

    cmp-long v1, v34, v25

    if-nez v1, :cond_17

    move-wide/from16 v38, v4

    move-wide/from16 v15, v25

    goto :goto_c

    :cond_17
    const-wide/32 v36, 0xf4240

    .line 24
    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v38, v4

    .line 25
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    move-wide v15, v4

    :goto_c
    const v1, 0x6d696e66

    .line 26
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzen;

    const v4, 0x7374626c

    .line 27
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzen;

    const v4, 0x6d646864

    .line 29
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 30
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v4

    if-nez v4, :cond_18

    const/16 v5, 0x8

    goto :goto_d

    :cond_18
    const/16 v5, 0x10

    .line 32
    :goto_d
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v41

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v5

    const/4 v6, 0x0

    :goto_e
    if-nez v4, :cond_19

    const/4 v7, 0x4

    goto :goto_f

    :cond_19
    const/16 v7, 0x8

    :goto_f
    if-ge v6, v7, :cond_1d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v7

    add-int v8, v5, v6

    .line 34
    aget-byte v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1c

    if-nez v4, :cond_1a

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v4

    goto :goto_10

    :cond_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v4

    :goto_10
    cmp-long v6, v4, v23

    if-nez v6, :cond_1b

    move-wide/from16 v44, v41

    goto :goto_11

    :cond_1b
    move-wide/from16 v44, v41

    const-wide/32 v42, 0xf4240

    .line 37
    sget-object v46, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v40, v4

    .line 38
    invoke-static/range {v40 .. v46}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v25

    goto :goto_11

    :cond_1c
    move-wide/from16 v44, v41

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1d
    move-wide/from16 v44, v41

    const/4 v8, -0x1

    .line 35
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 39
    :goto_11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v2

    shr-int/lit8 v4, v2, 0xa

    shr-int/lit8 v5, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v5, 0x1f

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v40, Lcom/google/android/gms/internal/ads/zzaic;

    move-wide/from16 v41, v44

    move-object/from16 v45, v2

    move-wide/from16 v43, v25

    invoke-direct/range {v40 .. v45}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(JJLjava/lang/String;)V

    const v2, 0x73747364

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v1

    if-eqz v1, :cond_88

    .line 231
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzaii;->zza(Lcom/google/android/gms/internal/ads/zzaii;)I

    move-result v5

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzaii;->zzb(Lcom/google/android/gms/internal/ads/zzaii;)I

    move-result v2

    invoke-static/range {v40 .. v40}, Lcom/google/android/gms/internal/ads/zzaic;->zzc(Lcom/google/android/gms/internal/ads/zzaic;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v4, 0xc

    .line 42
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaif;

    .line 44
    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(I)V

    const/4 v10, 0x0

    :goto_12
    const/16 v25, 0x8

    if-ge v10, v7, :cond_7e

    move/from16 v26, v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v3

    const/16 v28, 0xc

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v4

    if-lez v4, :cond_1e

    const/4 v8, 0x1

    goto :goto_13

    :cond_1e
    const/4 v8, 0x0

    .line 46
    :goto_13
    const-string v0, "childAtomSize must be positive"

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    move v8, v2

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    move/from16 v30, v3

    const v3, 0x61766331

    move/from16 v31, v4

    const v4, 0x656e6376

    if-eq v2, v3, :cond_2a

    const v3, 0x61766333

    if-eq v2, v3, :cond_2a

    if-eq v2, v4, :cond_2a

    const v3, 0x6d317620

    if-eq v2, v3, :cond_2a

    const v3, 0x6d703476

    if-eq v2, v3, :cond_2a

    const v3, 0x68766331

    if-eq v2, v3, :cond_2a

    const v3, 0x68657631

    if-eq v2, v3, :cond_2a

    const v3, 0x73323633

    if-eq v2, v3, :cond_2a

    const v3, 0x48323633

    if-eq v2, v3, :cond_2a

    const v3, 0x68323633

    if-eq v2, v3, :cond_2a

    const v3, 0x76703038

    if-eq v2, v3, :cond_2a

    const v3, 0x76703039

    if-eq v2, v3, :cond_2a

    const v3, 0x61763031

    if-eq v2, v3, :cond_2a

    const v3, 0x64766176

    if-eq v2, v3, :cond_2a

    const v3, 0x64766131

    if-eq v2, v3, :cond_2a

    const v3, 0x64766865

    if-eq v2, v3, :cond_2a

    const v3, 0x64766831

    if-ne v2, v3, :cond_1f

    goto/16 :goto_1b

    :cond_1f
    const v0, 0x6d703461

    if-eq v2, v0, :cond_29

    const v0, 0x656e6361

    if-eq v2, v0, :cond_29

    const v0, 0x61632d33

    if-eq v2, v0, :cond_29

    const v0, 0x65632d33

    if-eq v2, v0, :cond_29

    const v0, 0x61632d34

    if-eq v2, v0, :cond_29

    const v0, 0x6d6c7061

    if-eq v2, v0, :cond_29

    const v0, 0x64747363

    if-eq v2, v0, :cond_29

    const v0, 0x64747365

    if-eq v2, v0, :cond_29

    const v0, 0x64747368

    if-eq v2, v0, :cond_29

    const v0, 0x6474736c

    if-eq v2, v0, :cond_29

    const v0, 0x64747378

    if-eq v2, v0, :cond_29

    const v0, 0x73616d72

    if-eq v2, v0, :cond_29

    const v0, 0x73617762

    if-eq v2, v0, :cond_29

    const v0, 0x6c70636d

    if-eq v2, v0, :cond_29

    const v0, 0x736f7774

    if-eq v2, v0, :cond_29

    const v0, 0x74776f73

    if-eq v2, v0, :cond_29

    const v0, 0x2e6d7032

    if-eq v2, v0, :cond_29

    const v0, 0x2e6d7033

    if-eq v2, v0, :cond_29

    const v0, 0x6d686131

    if-eq v2, v0, :cond_29

    const v0, 0x6d686d31

    if-eq v2, v0, :cond_29

    const v0, 0x616c6163

    if-eq v2, v0, :cond_29

    const v0, 0x616c6177

    if-eq v2, v0, :cond_29

    const v0, 0x756c6177

    if-eq v2, v0, :cond_29

    const v0, 0x4f707573

    if-eq v2, v0, :cond_29

    const v0, 0x664c6143

    if-eq v2, v0, :cond_29

    const v0, 0x69616d66

    if-ne v2, v0, :cond_20

    goto/16 :goto_1a

    :cond_20
    const v0, 0x54544d4c

    if-eq v2, v0, :cond_24

    const v0, 0x74783367

    if-eq v2, v0, :cond_24

    const v0, 0x77767474

    if-eq v2, v0, :cond_24

    const v0, 0x73747070

    if-eq v2, v0, :cond_24

    const v0, 0x63363038

    if-ne v2, v0, :cond_21

    goto :goto_15

    :cond_21
    const v0, 0x6d657474

    if-ne v2, v0, :cond_22

    add-int/lit8 v3, v30, 0x10

    .line 202
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/4 v0, 0x0

    .line 203
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzy(C)Ljava/lang/String;

    .line 204
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzy(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    .line 205
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzL(I)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_14

    :cond_22
    const v0, 0x63616d6d

    if-ne v2, v0, :cond_23

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    .line 206
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 207
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzL(I)Lcom/google/android/gms/internal/ads/zzz;

    const-string v2, "application/x-camera-motion"

    .line 208
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    :cond_23
    :goto_14
    move v2, v5

    move/from16 v25, v7

    move-object/from16 v41, v11

    move-object/from16 v19, v12

    move/from16 v35, v13

    move-object/from16 v42, v14

    move-wide/from16 v36, v15

    move/from16 v29, v30

    move/from16 v53, v31

    const/4 v5, 0x3

    const/4 v13, -0x1

    const/16 v18, 0x4

    move-object/from16 v30, v6

    move/from16 v31, v10

    goto/16 :goto_51

    :cond_24
    :goto_15
    add-int/lit8 v3, v30, 0x10

    .line 191
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const v0, 0x54544d4c

    if-ne v2, v0, :cond_25

    const-string v0, "application/ttml+xml"

    :goto_16
    move-object v2, v0

    :goto_17
    move-object/from16 v19, v1

    const-wide v0, 0x7fffffffffffffffL

    :goto_18
    const/4 v3, 0x0

    goto :goto_19

    :cond_25
    const v0, 0x74783367

    if-ne v2, v0, :cond_26

    add-int/lit8 v0, v31, -0x10

    .line 192
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 193
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    .line 194
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v0

    const-string v2, "application/x-quicktime-tx3g"

    move-object v3, v0

    move-object/from16 v19, v1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_19

    :cond_26
    const v0, 0x77767474

    if-ne v2, v0, :cond_27

    const-string v0, "application/x-mp4-vtt"

    goto :goto_16

    :cond_27
    const v0, 0x73747070

    if-ne v2, v0, :cond_28

    const-string v0, "application/ttml+xml"

    move-object v2, v0

    move-object/from16 v19, v1

    move-wide/from16 v0, v23

    goto :goto_18

    :cond_28
    const/4 v0, 0x1

    iput v0, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzd:I

    const-string v2, "application/x-mp4-cea-608"

    goto :goto_17

    .line 191
    :goto_19
    new-instance v4, Lcom/google/android/gms/internal/ads/zzz;

    .line 195
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 196
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzL(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 197
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 198
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzz;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 199
    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzae(J)Lcom/google/android/gms/internal/ads/zzz;

    .line 200
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 201
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    move v2, v5

    move/from16 v25, v7

    move-object/from16 v41, v11

    move/from16 v35, v13

    move-object/from16 v42, v14

    move-wide/from16 v36, v15

    move-object/from16 v1, v19

    move/from16 v29, v30

    move/from16 v53, v31

    const/4 v5, 0x3

    const/4 v13, -0x1

    const/16 v18, 0x4

    move-object/from16 v30, v6

    move/from16 v31, v10

    move-object/from16 v19, v12

    goto/16 :goto_51

    :cond_29
    :goto_1a
    move/from16 v25, v7

    move/from16 v47, v8

    move-object/from16 v19, v12

    move/from16 v3, v30

    move/from16 v4, v31

    const/4 v0, 0x1

    const/4 v12, 0x4

    const/16 v18, 0x0

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v28, -0x1

    move-object/from16 v8, p4

    move/from16 v7, p6

    .line 190
    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzaik;->zzo(Lcom/google/android/gms/internal/ads/zzdy;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzaif;I)V

    move/from16 v29, v3

    move/from16 v53, v4

    move v2, v5

    move-object/from16 v30, v6

    move/from16 v31, v10

    move-object/from16 v41, v11

    move/from16 v35, v13

    move-object/from16 v42, v14

    move-wide/from16 v36, v15

    move/from16 v8, v47

    const/4 v5, 0x3

    const/4 v13, -0x1

    const/16 v18, 0x4

    goto/16 :goto_51

    :cond_2a
    :goto_1b
    move/from16 v25, v7

    move/from16 v47, v8

    move-object/from16 v19, v12

    move/from16 v3, v30

    const/4 v12, 0x0

    move-object/from16 v8, p4

    move v7, v2

    move/from16 v2, v31

    add-int/lit8 v12, v3, 0x10

    .line 48
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/16 v12, 0x10

    .line 49
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 50
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v12

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v4

    move-object/from16 v30, v6

    const/16 v6, 0x32

    .line 52
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v6

    move/from16 v31, v10

    const v10, 0x656e6376

    if-ne v7, v10, :cond_2d

    .line 53
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaik;->zzj(Lcom/google/android/gms/internal/ads/zzdy;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_2c

    .line 54
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v8, :cond_2b

    move/from16 v29, v3

    const/16 v34, 0x0

    goto :goto_1c

    :cond_2b
    move/from16 v29, v3

    .line 55
    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v3

    move-object/from16 v34, v3

    .line 54
    :goto_1c
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzaif;->zza:[Lcom/google/android/gms/internal/ads/zzajc;

    .line 56
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzajc;

    aput-object v7, v3, v31

    goto :goto_1d

    :cond_2c
    move/from16 v29, v3

    move-object/from16 v34, v8

    .line 57
    :goto_1d
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    move-object/from16 v3, v34

    goto :goto_1e

    :cond_2d
    move/from16 v29, v3

    move v10, v7

    move-object v3, v8

    :goto_1e
    const v7, 0x6d317620

    if-ne v10, v7, :cond_2e

    const-string v7, "video/mpeg"

    move/from16 v68, v10

    move-object v10, v7

    move/from16 v7, v68

    goto :goto_1f

    :cond_2e
    const v7, 0x48323633

    if-ne v10, v7, :cond_2f

    .line 165
    const-string v10, "video/3gpp"

    goto :goto_1f

    :cond_2f
    move v7, v10

    const/4 v10, 0x0

    :goto_1f
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v46, v4

    move/from16 v52, v5

    move-object v4, v10

    move-object/from16 v41, v11

    move/from16 v49, v12

    move/from16 v35, v13

    move-object/from16 v42, v14

    move-wide/from16 v36, v15

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/16 v12, 0x8

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v43, -0x1

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v50, 0x0

    const/high16 v51, 0x3f800000    # 1.0f

    move-object/from16 v16, v3

    move v11, v6

    const/4 v3, -0x1

    const/16 v6, 0x8

    :goto_20
    sub-int v5, v11, v29

    if-ge v5, v2, :cond_7a

    .line 58
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v5

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v53

    if-nez v53, :cond_31

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v53

    move/from16 v54, v11

    sub-int v11, v53, v29

    if-ne v11, v2, :cond_30

    goto/16 :goto_4f

    :cond_30
    const/4 v11, 0x0

    goto :goto_21

    :cond_31
    move/from16 v54, v11

    move/from16 v11, v53

    :goto_21
    if-lez v11, :cond_32

    move/from16 v53, v2

    const/4 v2, 0x1

    goto :goto_22

    :cond_32
    move/from16 v53, v2

    const/4 v2, 0x0

    .line 60
    :goto_22
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    move/from16 v55, v5

    const v5, 0x61766343

    if-ne v2, v5, :cond_35

    add-int/lit8 v5, v55, 0x8

    if-nez v4, :cond_33

    const/4 v8, 0x1

    goto :goto_23

    :cond_33
    const/4 v8, 0x0

    :goto_23
    const/4 v12, 0x0

    .line 62
    invoke-static {v8, v12}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 63
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 64
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabr;->zza(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzabr;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzabr;->zza:Ljava/util/List;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzabr;->zzb:I

    iput v4, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzc:I

    if-nez v45, :cond_34

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzabr;->zzk:F

    move/from16 v51, v4

    const/4 v8, 0x0

    goto :goto_24

    :cond_34
    const/4 v8, 0x1

    :goto_24
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzabr;->zzl:Ljava/lang/String;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzabr;->zzj:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzabr;->zzg:I

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzabr;->zzh:I

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzabr;->zzi:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzabr;->zze:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzabr;->zzf:I

    const-string v43, "video/avc"

    move/from16 v18, v14

    move v14, v10

    move v10, v12

    move/from16 v12, v18

    move-object/from16 v59, v0

    move-object/from16 v50, v4

    move/from16 v57, v7

    move/from16 v45, v8

    move-object/from16 v56, v9

    move-object/from16 v60, v13

    move-object/from16 v4, v43

    const/4 v13, -0x1

    const/16 v18, 0x4

    move-object v8, v3

    move/from16 v43, v5

    move v3, v6

    const/4 v5, 0x3

    move v6, v2

    goto/16 :goto_4e

    :cond_35
    const v5, 0x68766343

    if-ne v2, v5, :cond_39

    add-int/lit8 v5, v55, 0x8

    if-nez v4, :cond_36

    const/4 v8, 0x1

    goto :goto_25

    :cond_36
    const/4 v8, 0x0

    :goto_25
    const/4 v12, 0x0

    .line 65
    invoke-static {v8, v12}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 66
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzadc;->zza(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzadc;->zza:Ljava/util/List;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzb:I

    iput v4, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzc:I

    if-nez v45, :cond_37

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzi:F

    move/from16 v51, v4

    const/4 v8, 0x0

    goto :goto_26

    :cond_37
    const/4 v8, 0x1

    :goto_26
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzj:I

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzk:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzh:I

    const/4 v10, -0x1

    if-eq v6, v10, :cond_38

    move v15, v6

    :cond_38
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzf:I

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzg:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzc:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzd:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzl:Lcom/google/android/gms/internal/ads/zzfh;

    const-string v43, "video/hevc"

    move-object/from16 v18, v43

    move/from16 v43, v4

    move-object/from16 v4, v18

    move-object/from16 v59, v0

    move-object/from16 v60, v2

    move-object/from16 v50, v5

    move/from16 v57, v7

    move/from16 v45, v8

    move-object/from16 v56, v9

    const/4 v5, 0x3

    const/16 v18, 0x4

    move-object v8, v3

    move v3, v6

    move v6, v14

    move v14, v10

    move v10, v12

    move v12, v13

    :goto_27
    const/4 v13, -0x1

    goto/16 :goto_4e

    :cond_39
    const v5, 0x6c687643

    if-ne v2, v5, :cond_46

    add-int/lit8 v5, v55, 0x8

    const-string v2, "video/hevc"

    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "lhvC must follow hvcC atom"

    .line 69
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    if-eqz v13, :cond_3b

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_3a

    move-object v4, v13

    const/4 v2, 0x1

    goto :goto_28

    :cond_3a
    move-object v4, v13

    const/4 v2, 0x0

    goto :goto_28

    :cond_3b
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_28
    const-string v13, "must have at least two layers"

    .line 71
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 72
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 236
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    move-object v2, v4

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfh;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzadc;->zzb(Lcom/google/android/gms/internal/ads/zzdy;Lcom/google/android/gms/internal/ads/zzfh;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object v2

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzc:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzb:I

    if-ne v5, v13, :cond_3c

    const/4 v5, 0x1

    goto :goto_29

    :cond_3c
    const/4 v5, 0x0

    :goto_29
    const-string v13, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 74
    invoke-static {v5, v13}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_3e

    if-ne v3, v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_2a

    :cond_3d
    const/4 v5, 0x0

    :goto_2a
    const-string v13, "colorSpace must be the same for both views"

    .line 75
    invoke-static {v5, v13}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    :cond_3e
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzf:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_40

    if-ne v14, v5, :cond_3f

    const/4 v5, 0x1

    goto :goto_2b

    :cond_3f
    const/4 v5, 0x0

    :goto_2b
    const-string v13, "colorRange must be the same for both views"

    .line 76
    invoke-static {v5, v13}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    :cond_40
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzg:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_42

    if-ne v10, v5, :cond_41

    const/4 v5, 0x1

    goto :goto_2c

    :cond_41
    const/4 v5, 0x0

    :goto_2c
    const-string v13, "colorTransfer must be the same for both views"

    .line 77
    invoke-static {v5, v13}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    :cond_42
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzc:I

    if-ne v12, v5, :cond_43

    const/4 v5, 0x1

    goto :goto_2d

    :cond_43
    const/4 v5, 0x0

    :goto_2d
    const-string v13, "bitdepthLuma must be the same for both views"

    .line 78
    invoke-static {v5, v13}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzd:I

    if-ne v6, v5, :cond_44

    const/4 v5, 0x1

    goto :goto_2e

    :cond_44
    const/4 v5, 0x0

    :goto_2e
    const-string v13, "bitdepthChroma must be the same for both views"

    .line 79
    invoke-static {v5, v13}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    if-eqz v8, :cond_45

    .line 80
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfxk;

    .line 81
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    .line 82
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzfxk;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxk;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzadc;->zza:Ljava/util/List;

    .line 83
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzfxk;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfxk;

    .line 84
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v8

    goto :goto_2f

    :cond_45
    const-string v5, "initializationData must be already set from hvcC atom"

    const/4 v13, 0x0

    .line 85
    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 84
    :goto_2f
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzk:Ljava/lang/String;

    const-string v5, "video/mv-hevc"

    move-object/from16 v59, v0

    move-object/from16 v50, v2

    move-object/from16 v60, v4

    move-object v4, v5

    move/from16 v57, v7

    move-object/from16 v56, v9

    goto/16 :goto_3a

    :cond_46
    const v5, 0x76657875

    if-ne v2, v5, :cond_57

    add-int/lit8 v5, v55, 0x8

    .line 86
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v2

    move-object/from16 v56, v9

    const/4 v5, 0x0

    :goto_30
    sub-int v9, v2, v55

    if-ge v9, v11, :cond_50

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v9

    if-lez v9, :cond_47

    move/from16 v57, v2

    const/4 v2, 0x1

    goto :goto_31

    :cond_47
    move/from16 v57, v2

    const/4 v2, 0x0

    .line 89
    :goto_31
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    move/from16 v58, v6

    const v6, 0x65796573

    if-ne v2, v6, :cond_4f

    add-int/lit8 v2, v57, 0x8

    .line 91
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v2

    :goto_32
    sub-int v5, v2, v57

    if-ge v5, v9, :cond_4e

    .line 92
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v5

    if-lez v5, :cond_48

    const/4 v6, 0x1

    goto :goto_33

    :cond_48
    const/4 v6, 0x0

    .line 94
    :goto_33
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v6

    move-object/from16 v59, v0

    const v0, 0x73747269

    if-ne v6, v0, :cond_4d

    const/4 v0, 0x4

    .line 96
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    and-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_49

    const/4 v5, 0x1

    goto :goto_34

    :cond_49
    const/4 v5, 0x0

    :goto_34
    and-int/lit8 v6, v0, 0x8

    move/from16 v60, v0

    const/16 v0, 0x8

    if-ne v6, v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_35

    :cond_4a
    const/4 v0, 0x0

    :goto_35
    and-int/lit8 v6, v60, 0x4

    move/from16 v60, v9

    const/4 v9, 0x4

    if-ne v6, v9, :cond_4b

    const/4 v6, 0x1

    goto :goto_36

    :cond_4b
    const/4 v6, 0x0

    :goto_36
    const/4 v9, 0x1

    if-eq v9, v2, :cond_4c

    const/4 v2, 0x0

    goto :goto_37

    :cond_4c
    const/4 v2, 0x1

    :goto_37
    const/16 v48, 0x1

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaib;

    move/from16 v61, v12

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaie;

    .line 98
    invoke-direct {v12, v2, v5, v0, v6}, Lcom/google/android/gms/internal/ads/zzaie;-><init>(ZZZZ)V

    invoke-direct {v9, v12}, Lcom/google/android/gms/internal/ads/zzaib;-><init>(Lcom/google/android/gms/internal/ads/zzaie;)V

    move-object v5, v9

    goto :goto_38

    :cond_4d
    move/from16 v60, v9

    move/from16 v61, v12

    const/16 v48, 0x1

    add-int/2addr v2, v5

    move-object/from16 v0, v59

    goto :goto_32

    :cond_4e
    move-object/from16 v59, v0

    move/from16 v60, v9

    move/from16 v61, v12

    const/16 v48, 0x1

    const/4 v5, 0x0

    goto :goto_38

    :cond_4f
    move-object/from16 v59, v0

    move/from16 v60, v9

    move/from16 v61, v12

    const/16 v48, 0x1

    :goto_38
    add-int v2, v57, v60

    move/from16 v6, v58

    move-object/from16 v0, v59

    move/from16 v12, v61

    goto/16 :goto_30

    :cond_50
    move-object/from16 v59, v0

    move/from16 v58, v6

    move/from16 v61, v12

    const/16 v48, 0x1

    if-nez v5, :cond_51

    const/4 v0, 0x0

    goto :goto_39

    .line 101
    :cond_51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaij;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzaij;-><init>(Lcom/google/android/gms/internal/ads/zzaib;)V

    :goto_39
    if-eqz v0, :cond_56

    if-eqz v13, :cond_52

    .line 98
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfxn;

    .line 99
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfxn;->size()I

    move-result v2

    const/4 v6, 0x2

    if-lt v2, v6, :cond_53

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaij;->zzb()Z

    move-result v2

    const-string v5, "both eye views must be marked as available"

    .line 100
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzaij;)Lcom/google/android/gms/internal/ads/zzaib;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaib;->zza(Lcom/google/android/gms/internal/ads/zzaib;)Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zza(Lcom/google/android/gms/internal/ads/zzaie;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 101
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    goto :goto_3c

    :cond_52
    const/4 v13, 0x0

    :cond_53
    const/4 v2, -0x1

    if-ne v15, v2, :cond_55

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaij;->zza(Lcom/google/android/gms/internal/ads/zzaij;)Lcom/google/android/gms/internal/ads/zzaib;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaib;->zza(Lcom/google/android/gms/internal/ads/zzaib;)Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaie;->zza(Lcom/google/android/gms/internal/ads/zzaie;)Z

    move-result v0

    const/4 v9, 0x1

    move/from16 v57, v7

    move-object/from16 v60, v13

    move/from16 v6, v58

    move/from16 v12, v61

    const/4 v5, 0x3

    const/4 v13, -0x1

    if-eq v9, v0, :cond_54

    const/4 v15, 0x4

    goto :goto_3b

    :cond_54
    const/4 v15, 0x5

    goto :goto_3b

    :cond_55
    move/from16 v57, v7

    move-object/from16 v60, v13

    move/from16 v6, v58

    move/from16 v12, v61

    :goto_3a
    const/4 v5, 0x3

    const/4 v13, -0x1

    :goto_3b
    const/16 v18, 0x4

    goto/16 :goto_4e

    :cond_56
    :goto_3c
    move/from16 v57, v7

    move-object/from16 v67, v8

    move-object/from16 v60, v13

    move/from16 v62, v14

    const/4 v5, 0x3

    const/4 v13, -0x1

    const/16 v18, 0x4

    goto/16 :goto_4c

    :cond_57
    move-object/from16 v59, v0

    move/from16 v58, v6

    move-object/from16 v56, v9

    move/from16 v61, v12

    const v0, 0x64766343

    if-eq v2, v0, :cond_78

    const v0, 0x64767643

    if-ne v2, v0, :cond_58

    goto/16 :goto_4b

    :cond_58
    const v0, 0x76706343

    if-ne v2, v0, :cond_5d

    if-nez v4, :cond_59

    const/4 v0, 0x1

    goto :goto_3d

    :cond_59
    const/4 v0, 0x0

    :goto_3d
    const/4 v12, 0x0

    .line 103
    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v5, v55, 0xc

    .line 104
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    int-to-byte v0, v0

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v2

    int-to-byte v2, v2

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v3

    shr-int/lit8 v4, v3, 0x4

    shr-int/lit8 v5, v3, 0x1

    const v6, 0x76703038

    if-ne v7, v6, :cond_5a

    const-string v6, "video/x-vnd.on2.vp8"

    goto :goto_3e

    .line 113
    :cond_5a
    const-string v6, "video/x-vnd.on2.vp9"

    .line 107
    :goto_3e
    const-string v9, "video/x-vnd.on2.vp9"

    .line 108
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5b

    and-int/lit8 v5, v5, 0x7

    int-to-byte v8, v4

    .line 109
    sget v9, Lcom/google/android/gms/internal/ads/zzcy;->zza:I

    int-to-byte v5, v5

    const/16 v9, 0xc

    new-array v10, v9, [B

    const/4 v12, 0x1

    const/16 v33, 0x0

    aput-byte v12, v10, v33

    aput-byte v12, v10, v12

    const/16 v22, 0x2

    aput-byte v0, v10, v22

    const/4 v0, 0x3

    aput-byte v22, v10, v0

    const/16 v18, 0x4

    aput-byte v12, v10, v18

    aput-byte v2, v10, v17

    const/4 v2, 0x6

    aput-byte v0, v10, v2

    const/4 v2, 0x7

    aput-byte v12, v10, v2

    const/16 v27, 0x8

    aput-byte v8, v10, v27

    const/16 v2, 0x9

    aput-byte v18, v10, v2

    const/16 v2, 0xa

    aput-byte v12, v10, v2

    const/16 v2, 0xb

    aput-byte v5, v10, v2

    .line 110
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v8

    goto :goto_3f

    :cond_5b
    const/4 v0, 0x3

    const/16 v9, 0xc

    const/4 v12, 0x1

    const/16 v18, 0x4

    :goto_3f
    and-int/lit8 v2, v3, 0x1

    .line 111
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v3

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v5

    .line 113
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v3

    if-eq v12, v2, :cond_5c

    const/4 v2, 0x2

    goto :goto_40

    :cond_5c
    const/4 v2, 0x1

    :goto_40
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v5

    move v14, v2

    move v12, v4

    move v10, v5

    move/from16 v57, v7

    move-object/from16 v60, v13

    const/4 v5, 0x3

    const/4 v13, -0x1

    move-object v4, v6

    move v6, v12

    goto/16 :goto_4e

    :cond_5d
    const/4 v0, 0x3

    const/16 v9, 0xc

    const/16 v18, 0x4

    const v5, 0x61763143

    if-ne v2, v5, :cond_5e

    add-int/lit8 v5, v55, 0x8

    add-int/lit8 v2, v11, -0x8

    .line 114
    new-array v3, v2, [B

    const/4 v6, 0x0

    .line 115
    invoke-virtual {v1, v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    .line 116
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 118
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaik;->zzk(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzk;->zzf:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzk;->zzg:I

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const-string v12, "video/av01"

    move-object v6, v12

    move v12, v4

    move-object v4, v6

    move v6, v5

    move/from16 v57, v7

    move v14, v10

    move-object/from16 v60, v13

    const/4 v5, 0x3

    const/4 v13, -0x1

    move v10, v3

    move v3, v8

    move-object v8, v2

    goto/16 :goto_4e

    :cond_5e
    const/4 v6, 0x0

    const v5, 0x636c6c69

    if-ne v2, v5, :cond_60

    if-nez v32, :cond_5f

    .line 119
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaik;->zzn()Ljava/nio/ByteBuffer;

    move-result-object v32

    :cond_5f
    move-object/from16 v2, v32

    const/16 v5, 0x15

    .line 120
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v32, v2

    move/from16 v57, v7

    move-object/from16 v60, v13

    move/from16 v6, v58

    move/from16 v12, v61

    :goto_41
    const/4 v5, 0x3

    goto/16 :goto_27

    :cond_60
    const v5, 0x6d646376

    if-ne v2, v5, :cond_62

    if-nez v32, :cond_61

    .line 123
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaik;->zzn()Ljava/nio/ByteBuffer;

    move-result-object v32

    :cond_61
    move-object/from16 v2, v32

    .line 124
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v5

    .line 125
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v12

    .line 126
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v6

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v9

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v0

    move/from16 v57, v7

    .line 129
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v7

    move-object/from16 v60, v13

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v13

    move/from16 v62, v14

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v14

    .line 132
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v63

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v65

    move-object/from16 v67, v8

    const/4 v8, 0x1

    .line 134
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x2710

    div-long v5, v63, v5

    long-to-int v0, v5

    int-to-short v0, v0

    .line 143
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x2710

    div-long v5, v65, v5

    long-to-int v0, v5

    int-to-short v0, v0

    .line 144
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v32, v2

    :goto_42
    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    goto :goto_41

    :cond_62
    move/from16 v57, v7

    move-object/from16 v67, v8

    move-object/from16 v60, v13

    move/from16 v62, v14

    const v0, 0x64323633

    if-ne v2, v0, :cond_64

    if-nez v4, :cond_63

    const/4 v8, 0x1

    goto :goto_43

    :cond_63
    const/4 v8, 0x0

    :goto_43
    const/4 v12, 0x0

    .line 145
    invoke-static {v8, v12}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    const-string v0, "video/3gpp"

    move-object v4, v0

    goto :goto_42

    :cond_64
    const/4 v12, 0x0

    const v0, 0x65736473

    if-ne v2, v0, :cond_67

    if-nez v4, :cond_65

    const/4 v8, 0x1

    goto :goto_44

    :cond_65
    const/4 v8, 0x0

    .line 146
    :goto_44
    invoke-static {v8, v12}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    move/from16 v0, v55

    .line 147
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaik;->zzm(Lcom/google/android/gms/internal/ads/zzdy;I)Lcom/google/android/gms/internal/ads/zzaia;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaia;->zzc(Lcom/google/android/gms/internal/ads/zzaia;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaia;->zzd(Lcom/google/android/gms/internal/ads/zzaia;)[B

    move-result-object v4

    if-eqz v4, :cond_66

    .line 148
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v4

    move-object/from16 v34, v0

    move-object v8, v4

    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    const/4 v5, 0x3

    const/4 v13, -0x1

    move-object v4, v2

    goto/16 :goto_4e

    :cond_66
    move-object/from16 v34, v0

    move-object v4, v2

    goto :goto_42

    :cond_67
    move/from16 v0, v55

    const v5, 0x70617370

    if-ne v2, v5, :cond_68

    add-int/lit8 v5, v0, 0x8

    .line 149
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v0

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    move/from16 v51, v0

    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    const/4 v5, 0x3

    const/4 v13, -0x1

    const/16 v45, 0x1

    goto/16 :goto_4e

    :cond_68
    const v5, 0x73763364

    if-ne v2, v5, :cond_6b

    add-int/lit8 v5, v0, 0x8

    :goto_45
    sub-int v2, v5, v0

    if-ge v2, v11, :cond_6a

    .line 152
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    add-int/2addr v2, v5

    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v6

    const v7, 0x70726f6a

    if-ne v6, v7, :cond_69

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v0

    .line 155
    invoke-static {v0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object/from16 v44, v0

    goto/16 :goto_42

    :cond_69
    move v5, v2

    goto :goto_45

    :cond_6a
    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    const/4 v5, 0x3

    const/4 v13, -0x1

    const/16 v44, 0x0

    goto/16 :goto_4e

    :cond_6b
    const v0, 0x73743364

    if-ne v2, v0, :cond_70

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    const/4 v5, 0x3

    .line 157
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    if-nez v0, :cond_77

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    if-eqz v0, :cond_6f

    const/4 v9, 0x1

    if-eq v0, v9, :cond_6e

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6d

    if-eq v0, v5, :cond_6c

    goto/16 :goto_4a

    :cond_6c
    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    const/4 v13, -0x1

    const/4 v15, 0x3

    goto/16 :goto_4e

    :cond_6d
    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    const/4 v13, -0x1

    const/4 v15, 0x2

    goto/16 :goto_4e

    :cond_6e
    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    const/4 v13, -0x1

    const/4 v15, 0x1

    goto/16 :goto_4e

    :cond_6f
    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    const/4 v13, -0x1

    const/4 v15, 0x0

    goto/16 :goto_4e

    :cond_70
    const/4 v5, 0x3

    const v0, 0x636f6c72

    if-ne v2, v0, :cond_77

    const/4 v13, -0x1

    if-ne v3, v13, :cond_79

    if-ne v10, v13, :cond_76

    .line 159
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v0

    const v2, 0x6e636c78

    if-eq v0, v2, :cond_72

    const v2, 0x6e636c63

    if-ne v0, v2, :cond_71

    goto :goto_46

    .line 164
    :cond_71
    const-string v2, "Unsupported color type: "

    .line 165
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeq;->zze(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BoxParsers"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    const/4 v3, -0x1

    const/4 v10, -0x1

    goto/16 :goto_4e

    .line 160
    :cond_72
    :goto_46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v0

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v2

    const/4 v6, 0x2

    .line 162
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    const/16 v3, 0x13

    if-ne v11, v3, :cond_74

    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_73

    const/4 v8, 0x1

    goto :goto_47

    :cond_73
    const/4 v8, 0x0

    :goto_47
    const/16 v11, 0x13

    goto :goto_48

    :cond_74
    const/4 v8, 0x0

    .line 164
    :goto_48
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v0

    const/4 v9, 0x1

    if-eq v9, v8, :cond_75

    const/4 v6, 0x2

    goto :goto_49

    :cond_75
    const/4 v6, 0x1

    :goto_49
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v2

    move v3, v0

    move v10, v2

    move v14, v6

    move/from16 v6, v58

    move/from16 v12, v61

    goto :goto_4d

    :cond_76
    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    move-object/from16 v8, v67

    const/4 v3, -0x1

    goto :goto_4e

    :cond_77
    :goto_4a
    const/4 v13, -0x1

    goto :goto_4c

    :cond_78
    :goto_4b
    move/from16 v57, v7

    move-object/from16 v67, v8

    move-object/from16 v60, v13

    move/from16 v62, v14

    const/4 v5, 0x3

    const/4 v13, -0x1

    const/16 v18, 0x4

    .line 102
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzacj;->zza(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzacj;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacj;->zza:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    move-object/from16 v50, v0

    move-object v4, v2

    :cond_79
    :goto_4c
    move/from16 v6, v58

    move/from16 v12, v61

    move/from16 v14, v62

    :goto_4d
    move-object/from16 v8, v67

    :goto_4e
    add-int v11, v54, v11

    move/from16 v2, v53

    move-object/from16 v9, v56

    move/from16 v7, v57

    move-object/from16 v0, v59

    move-object/from16 v13, v60

    goto/16 :goto_20

    :cond_7a
    :goto_4f
    move/from16 v53, v2

    move/from16 v58, v6

    move-object/from16 v67, v8

    move-object/from16 v56, v9

    move/from16 v61, v12

    move/from16 v62, v14

    const/4 v5, 0x3

    const/4 v13, -0x1

    const/16 v18, 0x4

    if-nez v4, :cond_7b

    move/from16 v8, v47

    move/from16 v2, v52

    move-object/from16 v9, v56

    goto/16 :goto_51

    .line 210
    :cond_7b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    .line 166
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    move/from16 v2, v52

    .line 167
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzL(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 168
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v4, v50

    .line 169
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v4, v49

    .line 170
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzaf(I)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v4, v46

    .line 171
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzK(I)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v4, v51

    .line 172
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzW(F)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v8, v47

    .line 173
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzZ(I)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v4, v44

    .line 174
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzX([B)Lcom/google/android/gms/internal/ads/zzz;

    .line 175
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzz;->zzad(I)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v4, v67

    .line 176
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v4, v43

    .line 177
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzS(I)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v4, v16

    .line 178
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzF(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzz;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 179
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v14, v62

    .line 180
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 181
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    if-eqz v32, :cond_7c

    .line 182
    invoke-virtual/range {v32 .. v32}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_50

    :cond_7c
    const/4 v3, 0x0

    :goto_50
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzi;->zze([B)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v12, v61

    .line 183
    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v6, v58

    .line 184
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 185
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v3

    .line 186
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzB(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v34, :cond_7d

    invoke-static/range {v34 .. v34}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgaq;->zze(J)I

    move-result v3

    .line 187
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzy(I)Lcom/google/android/gms/internal/ads/zzz;

    invoke-static/range {v34 .. v34}, Lcom/google/android/gms/internal/ads/zzaia;->zzb(Lcom/google/android/gms/internal/ads/zzaia;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgaq;->zze(J)I

    move-result v3

    .line 188
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzV(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 189
    :cond_7d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    move-object/from16 v9, v56

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    :goto_51
    add-int v3, v29, v53

    .line 210
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    add-int/lit8 v10, v31, 0x1

    move-object/from16 v0, p0

    move v5, v2

    move v2, v8

    move-object/from16 v12, v19

    move/from16 v7, v25

    move/from16 v3, v26

    move-object/from16 v6, v30

    move/from16 v13, v35

    move-wide/from16 v15, v36

    move-object/from16 v11, v41

    move-object/from16 v14, v42

    const/16 v4, 0xc

    const/4 v8, -0x1

    goto/16 :goto_12

    :cond_7e
    move/from16 v26, v3

    move-object/from16 v41, v11

    move-object/from16 v19, v12

    move/from16 v35, v13

    move-object/from16 v42, v14

    move-wide/from16 v36, v15

    if-nez p5, :cond_84

    const v0, 0x65647473

    move-object/from16 v1, v42

    .line 211
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v0

    if-eqz v0, :cond_85

    const v2, 0x656c7374

    .line 212
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v0

    if-nez v0, :cond_7f

    const/4 v4, 0x0

    goto :goto_55

    .line 222
    :cond_7f
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v2, 0x8

    .line 213
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v2

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v3

    new-array v4, v3, [J

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_52
    if-ge v6, v3, :cond_83

    const/4 v8, 0x1

    if-ne v2, v8, :cond_80

    .line 216
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v10

    goto :goto_53

    :cond_80
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v10

    :goto_53
    aput-wide v10, v4, v6

    if-ne v2, v8, :cond_81

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzt()J

    move-result-wide v10

    goto :goto_54

    :cond_81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    int-to-long v10, v7

    :goto_54
    aput-wide v10, v5, v6

    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v7

    if-ne v7, v8, :cond_82

    const/4 v7, 0x2

    .line 219
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    .line 218
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 232
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_83
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    :goto_55
    if-eqz v4, :cond_85

    .line 221
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    .line 222
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, [J

    move-object/from16 v31, v0

    move-object/from16 v32, v4

    goto :goto_56

    :cond_84
    move-object/from16 v1, v42

    :cond_85
    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_56
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    if-nez v0, :cond_86

    move-object/from16 v0, p7

    goto/16 :goto_3

    :cond_86
    new-instance v16, Lcom/google/android/gms/internal/ads/zzajb;

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzaii;->zza(Lcom/google/android/gms/internal/ads/zzaii;)I

    move-result v17

    invoke-static/range {v40 .. v40}, Lcom/google/android/gms/internal/ads/zzaic;->zzb(Lcom/google/android/gms/internal/ads/zzaic;)J

    move-result-wide v19

    invoke-static/range {v40 .. v40}, Lcom/google/android/gms/internal/ads/zzaic;->zza(Lcom/google/android/gms/internal/ads/zzaic;)J

    move-result-wide v2

    iget v4, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzd:I

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzaif;->zza:[Lcom/google/android/gms/internal/ads/zzajc;

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzaif;->zzc:I

    move-object/from16 v27, v0

    move/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v30, v6

    move/from16 v18, v26

    move-wide/from16 v23, v36

    move-wide/from16 v21, v38

    move-wide/from16 v25, v2

    invoke-direct/range {v16 .. v32}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzab;I[Lcom/google/android/gms/internal/ads/zzajc;I[J[J)V

    move-object/from16 v0, p7

    move-object/from16 v4, v16

    .line 223
    :goto_57
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzfuc;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajb;

    if-eqz v2, :cond_87

    const v3, 0x6d646961

    .line 224
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzen;

    const v3, 0x6d696e66

    .line 225
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzen;

    const v3, 0x7374626c

    .line 227
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzen;

    move-object/from16 v3, p1

    .line 229
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaik;->zze(Lcom/google/android/gms/internal/ads/zzajb;Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzadb;)Lcom/google/android/gms/internal/ads/zzaje;

    move-result-object v1

    move-object/from16 v2, v41

    .line 230
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_87
    move-object/from16 v3, p1

    move-object/from16 v2, v41

    :goto_58
    add-int/lit8 v13, v35, 0x1

    move-object/from16 v0, p0

    move-object v11, v2

    goto/16 :goto_0

    .line 41
    :cond_88
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v12, 0x0

    .line 231
    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v0

    throw v0

    :cond_89
    move-object v2, v11

    return-object v2
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzdy;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzdy;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzdy;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result p0

    return p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzdy;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    sub-int v13, v7, v1

    const/4 v14, 0x4

    if-ge v13, v2, :cond_4

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v13

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v15

    const/16 v16, 0x0

    const v3, 0x66726d61

    if-ne v15, v3, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v15, v3, :cond_2

    .line 9
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 10
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v15, v3, :cond_3

    move v9, v7

    move v12, v13

    :cond_3
    :goto_3
    add-int/2addr v7, v13

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    const-string v3, "cenc"

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    goto/16 :goto_c

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v12, :cond_d

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    const v13, 0x74656e63

    if-ne v8, v13, :cond_c

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v3

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    if-nez v3, :cond_9

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_8

    .line 23
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v14

    and-int/lit8 v3, v3, 0xf

    move v15, v3

    move v14, v7

    .line 24
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v3

    if-ne v3, v5, :cond_a

    move-object v3, v10

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    move-object v3, v10

    const/4 v10, 0x0

    .line 25
    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 26
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v7

    new-array v8, v7, [B

    .line 28
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    move-object/from16 v16, v8

    :cond_b
    new-instance v9, Lcom/google/android/gms/internal/ads/zzajc;

    move-object v8, v3

    .line 29
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v9

    goto :goto_a

    :cond_c
    move-object v8, v10

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v10

    move-object/from16 v3, v16

    :goto_a
    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    :goto_b
    const-string v6, "tenc atom is mandatory"

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 31
    sget v5, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzajc;

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_c
    if-nez v3, :cond_f

    goto :goto_d

    :cond_f
    return-object v3

    :cond_10
    :goto_d
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/16 v16, 0x0

    return-object v16
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdx;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result p0

    const/16 v2, 0x8

    mul-int/lit8 p0, p0, 0x8

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzl(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzo(I)V

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v4

    const/4 v5, 0x6

    .line 5
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v5

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    if-eqz v5, :cond_1

    if-eq p0, v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v8, 0xc

    .line 10
    :goto_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 11
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    :cond_2
    if-gt v4, v10, :cond_4

    if-eq p0, v5, :cond_3

    const/16 v8, 0x8

    .line 8
    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    :cond_4
    :goto_1
    const/16 v4, 0xd

    .line 12
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    const/4 v5, 0x4

    .line 14
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v6

    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported obu_type: "

    .line 15
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "Unsupported obu_extension_flag"

    .line 18
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 20
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v6

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    if-eqz v6, :cond_8

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v6

    const/16 v11, 0x7f

    if-gt v6, v11, :cond_7

    goto :goto_2

    .line 48
    :cond_7
    const-string p0, "Excessive obu_size"

    .line 65
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 23
    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v6

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string p0, "Unsupported reduced_still_picture_header"

    .line 26
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 28
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string p0, "Unsupported timing_info_present_flag"

    .line 29
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 31
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 32
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v8, 0x5

    .line 34
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x7

    if-gt v12, v11, :cond_d

    .line 35
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 36
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v14

    if-le v14, v13, :cond_c

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 38
    :cond_d
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v7

    .line 39
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v5

    add-int/2addr v7, p0

    .line 40
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    add-int/2addr v5, p0

    .line 41
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 43
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 44
    :cond_e
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 46
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 47
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_4

    .line 48
    :cond_10
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v7

    if-lez v7, :cond_11

    .line 49
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v7

    if-nez v7, :cond_11

    .line 50
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    :cond_11
    if-eqz v5, :cond_12

    .line 51
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 52
    :cond_12
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(I)V

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v3

    if-ne v6, v10, :cond_13

    if-eqz v3, :cond_14

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzm()V

    goto :goto_5

    :cond_13
    if-ne v6, p0, :cond_14

    goto :goto_6

    .line 55
    :cond_14
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v9, 0x1

    .line 56
    :cond_15
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdx;->zzp()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v3

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v5

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v2

    if-nez v9, :cond_18

    if-ne v3, p0, :cond_18

    if-ne v5, v4, :cond_16

    if-nez v2, :cond_17

    const/4 v1, 0x1

    const/4 v3, 0x1

    goto :goto_8

    :cond_16
    move v4, v5

    :cond_17
    const/4 v3, 0x1

    goto :goto_7

    :cond_18
    move v4, v5

    .line 60
    :goto_7
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(I)I

    move-result v1

    .line 61
    :goto_8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    if-ne v1, p0, :cond_19

    goto :goto_9

    :cond_19
    const/4 p0, 0x2

    .line 62
    :goto_9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result p0

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 64
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzay;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzE()S

    move-result v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 8
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzay;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzax;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzet;

    .line 9
    invoke-direct {v4, v2, p0}, Lcom/google/android/gms/internal/ads/zzet;-><init>(FF)V

    aput-object v4, v3, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzay;-><init>(J[Lcom/google/android/gms/internal/ads/zzax;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzdy;I)Lcom/google/android/gms/internal/ads/zzaia;
    .locals 9

    add-int/lit8 p1, p1, 0xc

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzh(Lcom/google/android/gms/internal/ads/zzdy;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzh(Lcom/google/android/gms/internal/ads/zzdy;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbb;->zzd(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v3

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaik;->zzh(Lcom/google/android/gms/internal/ads/zzdy;)I

    move-result p1

    move-wide v4, v3

    .line 21
    new-array v3, p1, [B

    const/4 v6, 0x0

    .line 22
    invoke-virtual {p0, v3, v6, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    const-wide/16 p0, -0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_4

    move-wide v4, p0

    :cond_4
    cmp-long v8, v0, v6

    if-lez v8, :cond_5

    move-wide v6, v0

    goto :goto_0

    :cond_5
    move-wide v6, p0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaia;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaia;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1

    .line 15
    :cond_6
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaia;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaia;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method private static zzn()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static zzo(Lcom/google/android/gms/internal/ads/zzdy;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzaif;I)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x10

    .line 1
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v11

    .line 3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    const/4 v11, 0x0

    :goto_0
    const/16 v14, 0x20

    const/4 v15, 0x4

    const/4 v12, 0x2

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v10, 0x1

    const/16 v13, 0x10

    if-eqz v11, :cond_a

    if-ne v11, v10, :cond_1

    goto :goto_2

    :cond_1
    if-ne v11, v12, :cond_4b

    .line 11
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzt()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v19

    .line 13
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v8, v10

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v10

    .line 15
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v11

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v19

    and-int/lit8 v20, v19, 0x1

    and-int/lit8 v19, v19, 0x2

    if-nez v20, :cond_8

    if-ne v11, v9, :cond_2

    const/4 v11, 0x3

    goto :goto_1

    :cond_2
    if-ne v11, v13, :cond_4

    if-eqz v19, :cond_3

    const/high16 v11, 0x10000000

    goto :goto_1

    :cond_3
    const/4 v11, 0x2

    goto :goto_1

    :cond_4
    const/16 v13, 0x18

    if-ne v11, v13, :cond_6

    if-eqz v19, :cond_5

    const/high16 v11, 0x50000000

    goto :goto_1

    :cond_5
    const/16 v11, 0x15

    goto :goto_1

    :cond_6
    if-ne v11, v14, :cond_9

    if-eqz v19, :cond_7

    const/high16 v11, 0x60000000

    goto :goto_1

    :cond_7
    const/16 v11, 0x16

    goto :goto_1

    :cond_8
    if-ne v11, v14, :cond_9

    const/4 v11, 0x4

    goto :goto_1

    :cond_9
    const/4 v11, -0x1

    .line 18
    :goto_1
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    move v9, v10

    const/4 v10, 0x0

    const/16 v19, 0x20

    goto :goto_3

    .line 5
    :cond_a
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v9

    .line 6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzn()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    .line 8
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v10

    const/4 v14, 0x1

    const/16 v19, 0x20

    if-ne v11, v14, :cond_b

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    :cond_b
    const/4 v11, -0x1

    :goto_3
    const v13, 0x69616d66

    if-ne v1, v13, :cond_c

    const/4 v8, -0x1

    :cond_c
    if-ne v1, v13, :cond_d

    const/4 v9, -0x1

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v14

    const v15, 0x656e6361

    if-ne v1, v15, :cond_10

    .line 19
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaik;->zzj(Lcom/google/android/gms/internal/ads/zzdy;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 20
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v6, :cond_e

    const/4 v6, 0x0

    goto :goto_4

    .line 21
    :cond_e
    iget-object v12, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v6

    .line 20
    :goto_4
    iget-object v12, v7, Lcom/google/android/gms/internal/ads/zzaif;->zza:[Lcom/google/android/gms/internal/ads/zzajc;

    .line 22
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajc;

    aput-object v1, v12, p9

    .line 23
    :cond_f
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    goto :goto_5

    :cond_10
    move v15, v1

    :goto_5
    const v1, 0x61632d33

    const-string v13, "audio/mhm1"

    const-string v12, "audio/ac4"

    if-ne v15, v1, :cond_11

    const-string v1, "audio/ac3"

    goto/16 :goto_9

    :cond_11
    const v1, 0x65632d33

    if-ne v15, v1, :cond_12

    .line 134
    const-string v1, "audio/eac3"

    goto/16 :goto_9

    :cond_12
    const v1, 0x61632d34

    if-ne v15, v1, :cond_13

    move-object v1, v12

    goto/16 :goto_9

    :cond_13
    const v1, 0x64747363

    if-ne v15, v1, :cond_14

    const-string v1, "audio/vnd.dts"

    goto/16 :goto_9

    :cond_14
    const v1, 0x64747368

    if-eq v15, v1, :cond_29

    const v1, 0x6474736c

    if-ne v15, v1, :cond_15

    goto/16 :goto_8

    :cond_15
    const v1, 0x64747365

    if-ne v15, v1, :cond_16

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_9

    :cond_16
    const v1, 0x64747378

    if-ne v15, v1, :cond_17

    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_9

    :cond_17
    const v1, 0x73616d72

    if-ne v15, v1, :cond_18

    const-string v1, "audio/3gpp"

    goto/16 :goto_9

    :cond_18
    const v1, 0x73617762

    if-ne v15, v1, :cond_19

    const-string v1, "audio/amr-wb"

    goto/16 :goto_9

    :cond_19
    const v1, 0x736f7774

    const-string v24, "audio/raw"

    if-ne v15, v1, :cond_1a

    :goto_6
    move-object/from16 v1, v24

    const/4 v11, 0x2

    goto/16 :goto_9

    :cond_1a
    const v1, 0x74776f73

    if-ne v15, v1, :cond_1b

    move-object/from16 v1, v24

    const/high16 v11, 0x10000000

    goto/16 :goto_9

    :cond_1b
    const v1, 0x6c70636d

    if-ne v15, v1, :cond_1d

    const/4 v1, -0x1

    if-ne v11, v1, :cond_1c

    goto :goto_6

    :cond_1c
    move-object/from16 v1, v24

    goto/16 :goto_9

    :cond_1d
    const v1, 0x2e6d7032

    if-eq v15, v1, :cond_28

    const v1, 0x2e6d7033

    if-ne v15, v1, :cond_1e

    goto :goto_7

    :cond_1e
    const v1, 0x6d686131

    if-ne v15, v1, :cond_1f

    const-string v1, "audio/mha1"

    goto :goto_9

    :cond_1f
    const v1, 0x6d686d31

    if-ne v15, v1, :cond_20

    move-object v1, v13

    goto :goto_9

    :cond_20
    const v1, 0x616c6163

    if-ne v15, v1, :cond_21

    const-string v1, "audio/alac"

    goto :goto_9

    :cond_21
    const v1, 0x616c6177

    if-ne v15, v1, :cond_22

    const-string v1, "audio/g711-alaw"

    goto :goto_9

    :cond_22
    const v1, 0x756c6177

    if-ne v15, v1, :cond_23

    const-string v1, "audio/g711-mlaw"

    goto :goto_9

    :cond_23
    const v1, 0x4f707573

    if-ne v15, v1, :cond_24

    const-string v1, "audio/opus"

    goto :goto_9

    :cond_24
    const v1, 0x664c6143

    if-ne v15, v1, :cond_25

    const-string v1, "audio/flac"

    goto :goto_9

    :cond_25
    const v1, 0x6d6c7061

    if-ne v15, v1, :cond_26

    const-string v1, "audio/true-hd"

    goto :goto_9

    :cond_26
    const v1, 0x69616d66

    if-ne v15, v1, :cond_27

    const-string v1, "audio/iamf"

    goto :goto_9

    :cond_27
    const/4 v1, 0x0

    goto :goto_9

    :cond_28
    :goto_7
    const-string v1, "audio/mpeg"

    goto :goto_9

    :cond_29
    :goto_8
    const-string v1, "audio/vnd.dts.hd"

    :goto_9
    move/from16 v23, v11

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_a
    sub-int v11, v14, p2

    if-ge v11, v3, :cond_49

    .line 24
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v11

    if-lez v11, :cond_2a

    const/4 v3, 0x1

    goto :goto_b

    :cond_2a
    const/4 v3, 0x0

    :goto_b
    move-object/from16 v24, v15

    .line 26
    const-string v15, "childAtomSize must be positive"

    invoke-static {v3, v15}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v3

    move/from16 p7, v8

    const v8, 0x6d686143

    if-ne v3, v8, :cond_2d

    add-int/lit8 v3, v14, 0x8

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v8

    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 32
    invoke-static {v1, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v15, v3, [Ljava/lang/Object;

    aput-object v8, v15, v18

    const-string v8, "mhm1.%02X"

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    goto :goto_c

    .line 34
    :cond_2b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v15, v3, [Ljava/lang/Object;

    aput-object v8, v15, v18

    const-string v3, "mha1.%02X"

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    .line 35
    :goto_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v3

    new-array v8, v3, [B

    move-object/from16 p9, v13

    const/4 v13, 0x0

    .line 36
    invoke-virtual {v0, v8, v13, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    if-nez v2, :cond_2c

    .line 37
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    goto :goto_d

    .line 38
    :cond_2c
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzfxn;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    :goto_d
    move/from16 v8, p7

    move/from16 v25, v10

    goto :goto_f

    :cond_2d
    move-object/from16 p9, v13

    const v8, 0x6d686150

    if-ne v3, v8, :cond_30

    add-int/lit8 v3, v14, 0x8

    .line 39
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v3

    if-lez v3, :cond_2f

    new-array v8, v3, [B

    const/4 v13, 0x0

    .line 41
    invoke-virtual {v0, v8, v13, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    if-nez v2, :cond_2e

    .line 42
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    goto :goto_e

    .line 43
    :cond_2e
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzfxn;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    :goto_e
    move/from16 v8, p7

    move/from16 v25, v10

    move-object/from16 v15, v24

    :goto_f
    const/4 v10, 0x0

    const/16 v22, 0x2

    goto/16 :goto_1e

    :cond_2f
    :goto_10
    move/from16 v8, p7

    move/from16 v25, v10

    const/4 v10, 0x0

    const/16 v22, 0x2

    goto/16 :goto_1d

    :cond_30
    const v8, 0x65736473

    if-eq v3, v8, :cond_42

    if-eqz p6, :cond_35

    const v13, 0x77617665

    if-ne v3, v13, :cond_35

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v3

    if-lt v3, v14, :cond_31

    const/4 v13, 0x1

    goto :goto_11

    :cond_31
    const/4 v13, 0x0

    :goto_11
    const/4 v8, 0x0

    .line 98
    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    :goto_12
    sub-int v8, v3, v14

    if-ge v8, v11, :cond_34

    .line 99
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    if-lez v8, :cond_32

    const/4 v13, 0x1

    goto :goto_13

    :cond_32
    const/4 v13, 0x0

    .line 101
    :goto_13
    invoke-static {v13, v15}, Lcom/google/android/gms/internal/ads/zzacr;->zzb(ZLjava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v13

    move/from16 v26, v3

    const v3, 0x65736473

    if-eq v13, v3, :cond_33

    add-int v8, v26, v8

    move v3, v8

    goto :goto_12

    :cond_33
    move/from16 v8, p7

    move/from16 v3, v26

    goto :goto_14

    :cond_34
    move/from16 v8, p7

    const/4 v3, -0x1

    :goto_14
    const/4 v13, -0x1

    const/4 v15, 0x4

    const/16 v22, 0x2

    goto/16 :goto_18

    :cond_35
    const v8, 0x64616333

    if-ne v3, v8, :cond_36

    add-int/lit8 v3, v14, 0x8

    .line 44
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzabn;->zzc(Lcom/google/android/gms/internal/ads/zzdy;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_10

    :cond_36
    const v8, 0x64656333

    if-ne v3, v8, :cond_37

    add-int/lit8 v3, v14, 0x8

    .line 46
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzabn;->zzd(Lcom/google/android/gms/internal/ads/zzdy;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_10

    :cond_37
    const v8, 0x64616334

    if-ne v3, v8, :cond_39

    add-int/lit8 v3, v14, 0x8

    .line 48
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/google/android/gms/internal/ads/zzabq;->zza:I

    const/4 v8, 0x1

    .line 50
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v13

    and-int/lit8 v13, v13, 0x20

    new-instance v15, Lcom/google/android/gms/internal/ads/zzz;

    .line 52
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 53
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 54
    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    const/4 v3, 0x2

    .line 55
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzz(I)Lcom/google/android/gms/internal/ads/zzz;

    shr-int/lit8 v3, v13, 0x5

    if-eq v8, v3, :cond_38

    const v3, 0xac44

    goto :goto_15

    :cond_38
    const v3, 0xbb80

    .line 56
    :goto_15
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzab(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 57
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzz;->zzF(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzz;

    .line 58
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 59
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto/16 :goto_10

    :cond_39
    const v8, 0x646d6c70

    if-ne v3, v8, :cond_3b

    if-lez v10, :cond_3a

    move v8, v10

    move/from16 v25, v8

    move-object/from16 v15, v24

    const/4 v9, 0x2

    goto/16 :goto_f

    .line 18
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v0

    throw v0

    :cond_3b
    const/4 v8, 0x0

    const v13, 0x64647473

    if-eq v3, v13, :cond_41

    const v13, 0x75647473

    if-ne v3, v13, :cond_3c

    goto/16 :goto_17

    :cond_3c
    const v13, 0x644f7073

    if-ne v3, v13, :cond_3d

    add-int/lit8 v2, v14, 0x8

    add-int/lit8 v3, v11, -0x8

    .line 67
    sget-object v13, Lcom/google/android/gms/internal/ads/zzaik;->zzb:[B

    .line 68
    array-length v15, v13

    add-int/2addr v15, v3

    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    .line 69
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 70
    array-length v2, v13

    invoke-virtual {v0, v15, v2, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    .line 71
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzadi;->zze([B)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_e

    :cond_3d
    const v13, 0x64664c61

    if-ne v3, v13, :cond_3e

    add-int/lit8 v2, v14, 0xc

    add-int/lit8 v3, v11, -0xc

    add-int/lit8 v13, v11, -0x8

    .line 72
    new-array v13, v13, [B

    const/16 v15, 0x66

    const/16 v18, 0x0

    .line 73
    aput-byte v15, v13, v18

    const/16 v15, 0x4c

    const/16 v21, 0x1

    .line 74
    aput-byte v15, v13, v21

    const/16 v15, 0x61

    const/16 v22, 0x2

    .line 75
    aput-byte v15, v13, v22

    const/16 v15, 0x43

    .line 76
    aput-byte v15, v13, v17

    .line 77
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/4 v15, 0x4

    .line 78
    invoke-virtual {v0, v13, v15, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    .line 79
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    :goto_16
    move/from16 v8, p7

    move/from16 v25, v10

    move-object/from16 v15, v24

    const/4 v10, 0x0

    goto/16 :goto_1e

    :cond_3e
    const v13, 0x616c6163

    const/4 v15, 0x4

    const/16 v22, 0x2

    if-ne v3, v13, :cond_3f

    add-int/lit8 v2, v14, 0xc

    add-int/lit8 v3, v11, -0xc

    .line 80
    new-array v9, v3, [B

    .line 81
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    .line 83
    sget v2, Lcom/google/android/gms/internal/ads/zzcy;->zza:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdy;

    .line 84
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    const/16 v3, 0x9

    .line 85
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v3

    const/16 v8, 0x14

    .line 87
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 88
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v2

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 90
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 91
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v8

    move v9, v2

    move-object v2, v8

    move/from16 v25, v10

    move-object/from16 v15, v24

    const/4 v10, 0x0

    move v8, v3

    goto/16 :goto_1e

    :cond_3f
    const v8, 0x69616362

    if-ne v3, v8, :cond_40

    add-int/lit8 v2, v14, 0x9

    .line 93
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzv()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgaq;->zzb(J)I

    move-result v2

    .line 95
    new-array v3, v2, [B

    const/4 v8, 0x0

    .line 96
    invoke-virtual {v0, v3, v8, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    .line 97
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    goto :goto_16

    :cond_40
    move/from16 v8, p7

    goto/16 :goto_1c

    :cond_41
    :goto_17
    const v13, 0x616c6163

    const/4 v15, 0x4

    const/16 v22, 0x2

    .line 59
    new-instance v3, Lcom/google/android/gms/internal/ads/zzz;

    .line 60
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 61
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzL(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 62
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 63
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzz;->zzz(I)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v8, p7

    .line 64
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzab(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 65
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzz;->zzF(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzz;

    .line 66
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    iput-object v3, v7, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    goto/16 :goto_1c

    :cond_42
    move/from16 v8, p7

    const/4 v15, 0x4

    const/16 v22, 0x2

    move v3, v14

    const/4 v13, -0x1

    :goto_18
    if-eq v3, v13, :cond_48

    .line 103
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaik;->zzm(Lcom/google/android/gms/internal/ads/zzdy;I)Lcom/google/android/gms/internal/ads/zzaia;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaia;->zzc(Lcom/google/android/gms/internal/ads/zzaia;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaia;->zzd(Lcom/google/android/gms/internal/ads/zzaia;)[B

    move-result-object v3

    if-eqz v3, :cond_48

    const-string v2, "audio/vorbis"

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdy;

    .line 105
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    const/4 v13, 0x1

    .line 106
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    const/4 v15, 0x0

    :goto_19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v21

    const/16 v13, 0xff

    if-lez v21, :cond_43

    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzf()I

    move-result v0

    if-ne v0, v13, :cond_43

    const/4 v0, 0x1

    .line 108
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    add-int/lit16 v15, v15, 0xff

    move-object/from16 v0, p0

    const/4 v13, 0x1

    goto :goto_19

    .line 109
    :cond_43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    add-int/2addr v15, v0

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v25

    if-lez v25, :cond_44

    move/from16 v25, v10

    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzf()I

    move-result v10

    if-ne v10, v13, :cond_45

    const/4 v10, 0x1

    .line 111
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    add-int/lit16 v0, v0, 0xff

    move/from16 v10, v25

    goto :goto_1a

    :cond_44
    move/from16 v25, v10

    :cond_45
    const/4 v10, 0x1

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v13

    add-int/2addr v0, v13

    .line 113
    new-array v13, v15, [B

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v2

    const/4 v10, 0x0

    .line 114
    invoke-static {v3, v2, v13, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v15

    array-length v15, v3

    add-int/2addr v2, v0

    sub-int/2addr v15, v2

    .line 115
    new-array v0, v15, [B

    .line 116
    invoke-static {v3, v2, v0, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzfxn;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    goto :goto_1d

    :cond_46
    move/from16 v25, v10

    const/4 v10, 0x0

    const-string v0, "audio/mp4a-latm"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 119
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzabk;->zza([B)Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object v0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzabi;->zza:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzabi;->zzb:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzabi;->zzc:Ljava/lang/String;

    goto :goto_1b

    :cond_47
    move-object/from16 v15, v24

    .line 120
    :goto_1b
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v2

    goto :goto_1e

    :cond_48
    :goto_1c
    move/from16 v25, v10

    const/4 v10, 0x0

    :goto_1d
    move-object/from16 v15, v24

    :goto_1e
    add-int/2addr v14, v11

    move-object/from16 v0, p0

    move/from16 v3, p3

    move-object/from16 v13, p9

    move/from16 v10, v25

    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_49
    move-object/from16 v24, v15

    .line 97
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    if-nez v0, :cond_4b

    if-eqz v1, :cond_4b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    .line 122
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    .line 123
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzL(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    move-object/from16 v15, v24

    .line 125
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzz;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    .line 126
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzz;->zzz(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 127
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzz;->zzab(I)Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v11, v23

    .line 128
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzz;->zzU(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 129
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 130
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzz;->zzF(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzz;

    .line 131
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v16, :cond_4a

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgaq;->zze(J)I

    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzy(I)Lcom/google/android/gms/internal/ads/zzz;

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzaia;->zzb(Lcom/google/android/gms/internal/ads/zzaia;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgaq;->zze(J)I

    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzV(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 134
    :cond_4a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    :cond_4b
    return-void
.end method
