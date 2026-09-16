.class public final Lcom/google/android/gms/internal/ads/zzaiv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacn;
.implements Lcom/google/android/gms/internal/ads/zzadm;


# instance fields
.field private zzA:I

.field private zzB:Lcom/google/android/gms/internal/ads/zzagv;

.field private final zza:Lcom/google/android/gms/internal/ads/zzakd;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzg:Ljava/util/ArrayDeque;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzaiz;

.field private final zzi:Ljava/util/List;

.field private zzj:Lcom/google/android/gms/internal/ads/zzfxn;

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzdy;

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:Z

.field private zzv:Lcom/google/android/gms/internal/ads/zzacq;

.field private zzw:[Lcom/google/android/gms/internal/ads/zzaiu;

.field private zzx:[[J

.field private zzy:I

.field private zzz:J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzakd;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzakd;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakd;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzakd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:Lcom/google/android/gms/internal/ads/zzfxn;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzh:Lcom/google/android/gms/internal/ads/zzaiz;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v0, 0x5

    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzacq;->zza:Lcom/google/android/gms/internal/ads/zzacq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzacq;

    new-array p1, p2, [Lcom/google/android/gms/internal/ads/zzaiu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:[Lcom/google/android/gms/internal/ads/zzaiu;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:Z

    return-void
.end method

.method private static zzj(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzaje;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaje;->zza(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaje;->zzb(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzaje;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaiv;->zzk(Lcom/google/android/gms/internal/ads/zzaje;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaje;->zzc:[J

    aget-wide p1, p0, p1

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzm()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    return-void
.end method

.method private final zzn(J)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzen;->zza:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzen;->zzd:I

    const v4, 0x6d6f6f76

    if-ne v1, v4, :cond_1c

    const v1, 0x6d657461

    .line 4
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaik;->zzb(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzA:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v4, v14, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzadb;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzadb;-><init>()V

    const v5, 0x75647461

    .line 8
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaik;->zzc(Lcom/google/android/gms/internal/ads/zzeo;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v5

    .line 10
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzadb;->zzb(Lcom/google/android/gms/internal/ads/zzay;)Z

    move-object v15, v5

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    new-instance v5, Lcom/google/android/gms/internal/ads/zzay;

    new-array v6, v14, [Lcom/google/android/gms/internal/ads/zzax;

    const v7, 0x6d766864

    .line 11
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v7

    .line 64
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v8, v7

    check-cast v8, Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaik;->zzd(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzew;

    move-result-object v7

    aput-object v7, v6, v13

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v5, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzay;-><init>(J[Lcom/google/android/gms/internal/ads/zzax;)V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:I

    and-int/2addr v6, v14

    if-eq v14, v6, :cond_4

    move-wide v6, v7

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-wide v6, v7

    const/4 v8, 0x1

    :goto_4
    new-instance v10, Lcom/google/android/gms/internal/ads/zzait;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzait;-><init>()V

    move-wide/from16 v16, v6

    move-object v7, v5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v18, v7

    const/4 v7, 0x0

    move-object/from16 v19, v12

    move-wide/from16 v11, v16

    .line 12
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzaik;->zzf(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzadb;JLcom/google/android/gms/internal/ads/zzu;ZZLcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;

    move-result-object v3

    move-wide v7, v11

    move-wide/from16 v16, v7

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 13
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const-wide/16 v20, 0x0

    if-ge v6, v11, :cond_16

    .line 14
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzaje;

    .line 15
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    if-nez v12, :cond_5

    move-object/from16 v27, v1

    move-object/from16 v26, v4

    move/from16 v25, v6

    move/from16 v24, v10

    move-object/from16 v1, v19

    const/4 v5, -0x1

    move-object v10, v3

    goto/16 :goto_f

    .line 16
    :cond_5
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    const/16 v22, 0x0

    new-instance v13, Lcom/google/android/gms/internal/ads/zzaiu;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzacq;

    add-int/lit8 v24, v10, 0x1

    iget v5, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    .line 17
    invoke-interface {v14, v10, v5}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v5

    invoke-direct {v13, v12, v11, v5}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>(Lcom/google/android/gms/internal/ads/zzajb;Lcom/google/android/gms/internal/ads/zzaje;Lcom/google/android/gms/internal/ads/zzadt;)V

    move-object v10, v3

    iget-wide v2, v12, Lcom/google/android/gms/internal/ads/zzajb;->zze:J

    cmp-long v14, v2, v16

    if-eqz v14, :cond_6

    goto :goto_6

    .line 18
    :cond_6
    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzaje;->zzh:J

    .line 17
    :goto_6
    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzaiu;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    .line 19
    invoke-interface {v14, v2, v3}, Lcom/google/android/gms/internal/ads/zzadt;->zzl(J)V

    .line 20
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v14, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    const-string v5, "audio/true-hd"

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 21
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 22
    iget v5, v11, Lcom/google/android/gms/internal/ads/zzaje;->zze:I

    mul-int/lit8 v5, v5, 0x10

    goto :goto_7

    .line 23
    :cond_7
    iget v5, v11, Lcom/google/android/gms/internal/ads/zzaje;->zze:I

    add-int/lit8 v5, v5, 0x1e

    .line 22
    :goto_7
    iget-object v14, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v14

    .line 24
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzR(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v5, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    move/from16 v25, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    iget-object v6, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:I

    move/from16 v26, v5

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    and-int/lit8 v26, v26, 0x8

    if-eqz v26, :cond_9

    move/from16 v26, v5

    const/4 v5, -0x1

    if-ne v9, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x2

    :goto_8
    or-int v5, v26, v5

    goto :goto_9

    :cond_9
    move/from16 v26, v5

    :goto_9
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v6, v6, v26

    if-nez v6, :cond_a

    cmp-long v6, v2, v20

    if-lez v6, :cond_a

    .line 25
    iget v6, v11, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    if-lez v6, :cond_a

    long-to-float v2, v2

    int-to-float v3, v6

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v2, v6

    div-float/2addr v3, v2

    .line 26
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzI(F)Lcom/google/android/gms/internal/ads/zzz;

    .line 27
    :cond_a
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzY(I)Lcom/google/android/gms/internal/ads/zzz;

    :cond_b
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzadb;->zza()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzadb;->zza:I

    .line 28
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzadb;->zzb:I

    .line 29
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzz;->zzH(I)Lcom/google/android/gms/internal/ads/zzz;

    :cond_c
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:Ljava/util/List;

    const/4 v6, 0x3

    new-array v11, v6, [Lcom/google/android/gms/internal/ads/zzay;

    .line 30
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v5, 0x0

    goto :goto_a

    .line 42
    :cond_d
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:Ljava/util/List;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzay;

    .line 30
    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzay;-><init>(Ljava/util/List;)V

    :goto_a
    aput-object v5, v11, v22

    const/16 v23, 0x1

    aput-object v15, v11, v23

    const/4 v5, 0x2

    aput-object v18, v11, v5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzay;

    const/4 v5, 0x0

    new-array v6, v5, [Lcom/google/android/gms/internal/ads/zzax;

    move-object/from16 v26, v4

    move-wide/from16 v4, v16

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzay;-><init>(J[Lcom/google/android/gms/internal/ads/zzax;)V

    if-eqz v1, :cond_11

    const/4 v6, 0x0

    .line 31
    :goto_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzay;->zza()I

    move-result v4

    if-ge v6, v4, :cond_11

    .line 32
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzay;->zzb(I)Lcom/google/android/gms/internal/ads/zzax;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzem;

    if-eqz v5, :cond_10

    .line 33
    check-cast v4, Lcom/google/android/gms/internal/ads/zzem;

    .line 34
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzem;->zza:Ljava/lang/String;

    move-object/from16 v27, v1

    const-string v1, "com.android.capture.fps"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v5, 0x2

    if-ne v2, v5, :cond_e

    const/4 v1, 0x1

    new-array v5, v1, [Lcom/google/android/gms/internal/ads/zzax;

    const/16 v22, 0x0

    aput-object v4, v5, v22

    .line 35
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzay;->zzc([Lcom/google/android/gms/internal/ads/zzax;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v3

    goto :goto_c

    :cond_e
    const/16 v22, 0x0

    goto :goto_c

    :cond_f
    const/4 v1, 0x1

    const/16 v22, 0x0

    new-array v5, v1, [Lcom/google/android/gms/internal/ads/zzax;

    aput-object v4, v5, v22

    .line 36
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzay;->zzc([Lcom/google/android/gms/internal/ads/zzax;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v3

    goto :goto_c

    :cond_10
    move-object/from16 v27, v1

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v27

    goto :goto_b

    :cond_11
    move-object/from16 v27, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    :goto_d
    if-ge v1, v2, :cond_12

    aget-object v4, v11, v1

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzay;->zzd(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzay;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 38
    :cond_12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzay;->zza()I

    move-result v1

    if-lez v1, :cond_13

    .line 39
    invoke-virtual {v14, v3}, Lcom/google/android/gms/internal/ads/zzz;->zzT(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzz;

    :cond_13
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzaiu;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    .line 40
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_14

    const/4 v5, -0x1

    if-ne v9, v5, :cond_15

    .line 41
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v1

    move v9, v1

    goto :goto_e

    :cond_14
    const/4 v5, -0x1

    :cond_15
    :goto_e
    move-object/from16 v1, v19

    .line 42
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v19, v1

    move-object v3, v10

    move/from16 v10, v24

    move-object/from16 v4, v26

    move-object/from16 v1, v27

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_5

    :cond_16
    move-object/from16 v1, v19

    const/4 v5, -0x1

    .line 18
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzy:I

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzz:J

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzaiu;

    .line 43
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaiu;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:[Lcom/google/android/gms/internal/ads/zzaiu;

    .line 44
    array-length v2, v1

    new-array v3, v2, [[J

    new-array v4, v2, [I

    new-array v6, v2, [J

    new-array v2, v2, [Z

    const/4 v7, 0x0

    .line 45
    :goto_10
    array-length v8, v1

    if-ge v7, v8, :cond_17

    .line 46
    aget-object v8, v1, v7

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    new-array v8, v8, [J

    aput-object v8, v3, v7

    .line 47
    aget-object v8, v1, v7

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaje;->zzf:[J

    const/16 v22, 0x0

    aget-wide v9, v8, v22

    aput-wide v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_17
    const/16 v22, 0x0

    const/4 v7, 0x0

    .line 48
    :goto_11
    array-length v8, v1

    if-ge v7, v8, :cond_1b

    const-wide v8, 0x7fffffffffffffffL

    move-wide v10, v8

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 49
    :goto_12
    array-length v12, v1

    if-ge v8, v12, :cond_19

    .line 50
    aget-boolean v12, v2, v8

    if-nez v12, :cond_18

    aget-wide v12, v6, v8

    cmp-long v14, v12, v10

    if-gtz v14, :cond_18

    move v9, v8

    move-wide v10, v12

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 51
    :cond_19
    aget v8, v4, v9

    .line 52
    aget-object v10, v3, v9

    aput-wide v20, v10, v8

    .line 53
    aget-object v11, v1, v9

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzaje;->zzd:[I

    aget v12, v12, v8

    int-to-long v12, v12

    add-long v20, v20, v12

    const/16 v23, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 54
    aput v8, v4, v9

    .line 55
    array-length v10, v10

    if-ge v8, v10, :cond_1a

    .line 56
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzaje;->zzf:[J

    aget-wide v11, v10, v8

    aput-wide v11, v6, v9

    goto :goto_11

    .line 57
    :cond_1a
    aput-boolean v23, v2, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_1b
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:[[J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzacq;

    .line 58
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzD()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzacq;

    .line 59
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    const/4 v5, 0x2

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    goto/16 :goto_0

    :cond_1c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzc(Lcom/google/android/gms/internal/ads/zzen;)V

    goto/16 :goto_0

    :cond_1d
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1e

    .line 63
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzm()V

    :cond_1e
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzz:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaco;Lcom/google/android/gms/internal/ads/zzadj;)I
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 76
    :cond_0
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    const v4, 0x66747970

    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/16 v11, 0x8

    const/4 v12, 0x1

    if-eqz v3, :cond_27

    if-eq v3, v12, :cond_1e

    if-eq v3, v9, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzh:Lcom/google/android/gms/internal/ads/zzaiz;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:Ljava/util/List;

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaiz;->zza(Lcom/google/android/gms/internal/ads/zzaco;Lcom/google/android/gms/internal/ads/zzadj;Ljava/util/List;)I

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    cmp-long v3, v1, v7

    if-nez v3, :cond_1

    .line 77
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzm()V

    :cond_1
    return v12

    .line 35
    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v3

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:I

    if-ne v11, v10, :cond_c

    const-wide v16, 0x7fffffffffffffffL

    move-wide/from16 v18, v16

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/4 v11, 0x0

    const/16 v20, 0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x1

    const-wide/32 v28, 0x40000

    :goto_1
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:[Lcom/google/android/gms/internal/ads/zzaiu;

    .line 36
    array-length v15, v14

    if-ge v11, v15, :cond_a

    .line 37
    aget-object v14, v14, v11

    .line 38
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzaiu;->zze:I

    .line 39
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    move-wide/from16 v30, v7

    iget v7, v14, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    if-ne v15, v7, :cond_3

    goto :goto_6

    .line 40
    :cond_3
    iget-object v7, v14, Lcom/google/android/gms/internal/ads/zzaje;->zzc:[J

    aget-wide v32, v7, v15

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzx:[[J

    .line 41
    sget v8, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    check-cast v7, [[J

    aget-object v7, v7, v11

    aget-wide v14, v7, v15

    sub-long v32, v32, v3

    cmp-long v7, v32, v30

    if-ltz v7, :cond_5

    cmp-long v7, v32, v28

    if-ltz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v7, :cond_6

    if-nez v27, :cond_7

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    move/from16 v8, v27

    :goto_4
    if-ne v7, v8, :cond_8

    cmp-long v27, v32, v23

    if-gez v27, :cond_8

    :cond_7
    move/from16 v27, v7

    move/from16 v26, v11

    move-wide/from16 v21, v14

    move-wide/from16 v23, v32

    goto :goto_5

    :cond_8
    move/from16 v27, v8

    :goto_5
    cmp-long v8, v14, v18

    if-gez v8, :cond_9

    move/from16 v20, v7

    move/from16 v25, v11

    move-wide/from16 v18, v14

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v30

    goto :goto_1

    :cond_a
    move-wide/from16 v30, v7

    cmp-long v7, v18, v16

    if-eqz v7, :cond_b

    if-eqz v20, :cond_b

    const-wide/32 v7, 0xa00000

    add-long v18, v18, v7

    cmp-long v7, v21, v18

    if-ltz v7, :cond_b

    move/from16 v11, v25

    goto :goto_7

    :cond_b
    move/from16 v11, v26

    :goto_7
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:I

    if-ne v11, v10, :cond_d

    return v10

    :cond_c
    move-wide/from16 v30, v7

    const-wide/32 v28, 0x40000

    :cond_d
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:[Lcom/google/android/gms/internal/ads/zzaiu;

    .line 42
    aget-object v7, v7, v11

    .line 43
    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zzc:Lcom/google/android/gms/internal/ads/zzadt;

    .line 44
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zze:I

    .line 45
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzaje;->zzc:[J

    const/16 v16, 0x2

    aget-wide v9, v15, v8

    .line 46
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaje;->zzd:[I

    aget v11, v11, v8

    .line 47
    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzadu;

    sub-long v3, v9, v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    move-object/from16 v17, v14

    const/16 v24, 0x0

    int-to-long v13, v5

    add-long/2addr v3, v13

    cmp-long v5, v3, v30

    if-ltz v5, :cond_1d

    cmp-long v5, v3, v28

    if-ltz v5, :cond_e

    goto/16 :goto_d

    .line 48
    :cond_e
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzh:I

    if-ne v2, v12, :cond_f

    const-wide/16 v9, 0x8

    add-long/2addr v3, v9

    add-int/lit8 v11, v11, -0x8

    :cond_f
    long-to-int v2, v3

    .line 49
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 50
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const-string v3, "video/avc"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iput-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:Z

    .line 51
    :cond_10
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    if-eqz v3, :cond_16

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    .line 52
    aput-byte v24, v2, v24

    .line 53
    aput-byte v24, v2, v12

    .line 54
    aput-byte v24, v2, v16

    add-int/lit8 v4, v3, 0x1

    rsub-int/lit8 v3, v3, 0x4

    :goto_8
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    if-ge v5, v11, :cond_14

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    if-nez v5, :cond_13

    .line 55
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v9, 0x0

    .line 56
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:Lcom/google/android/gms/internal/ads/zzdy;

    .line 57
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v5

    if-lez v5, :cond_12

    add-int/lit8 v5, v5, -0x1

    .line 63
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    .line 58
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    move-object/from16 v14, v17

    .line 59
    invoke-interface {v14, v5, v6}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:Lcom/google/android/gms/internal/ads/zzdy;

    .line 60
    invoke-interface {v14, v5, v12}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    add-int/lit8 v5, v5, 0x5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    add-int/2addr v11, v3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:Z

    if-nez v5, :cond_11

    .line 61
    aget-byte v5, v2, v6

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzi(B)Z

    move-result v5

    if-eqz v5, :cond_11

    iput-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:Z

    :cond_11
    move-object/from16 v17, v14

    goto :goto_9

    .line 57
    :cond_12
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 63
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_13
    move-object/from16 v14, v17

    const/4 v9, 0x0

    .line 62
    invoke-interface {v14, v1, v5, v9}, Lcom/google/android/gms/internal/ads/zzadt;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v5

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    sub-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    :goto_9
    const/16 v24, 0x0

    goto :goto_8

    :cond_14
    move-object/from16 v14, v17

    :cond_15
    move/from16 v18, v11

    goto :goto_b

    :cond_16
    move-object/from16 v14, v17

    .line 74
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    const-string v3, "audio/ac4"

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    .line 65
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzabq;->zzb(ILcom/google/android/gms/internal/ads/zzdy;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v3, 0x7

    .line 66
    invoke-interface {v14, v2, v3}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    :cond_17
    add-int/lit8 v11, v11, 0x7

    goto :goto_a

    :cond_18
    if-eqz v15, :cond_19

    .line 67
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzadu;->zzd(Lcom/google/android/gms/internal/ads/zzaco;)V

    .line 66
    :cond_19
    :goto_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    if-ge v2, v11, :cond_15

    sub-int v2, v11, v2

    const/4 v9, 0x0

    .line 68
    invoke-interface {v14, v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzadt;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    goto :goto_a

    .line 69
    :goto_b
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzf:[J

    aget-wide v16, v2, v8

    .line 70
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzg:[I

    aget v1, v1, v8

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:Z

    if-nez v2, :cond_1a

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_1a
    if-eqz v15, :cond_1b

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v15

    move-object v15, v14

    move-object/from16 v14, v19

    move/from16 v19, v18

    move/from16 v18, v1

    .line 71
    invoke-virtual/range {v14 .. v21}, Lcom/google/android/gms/internal/ads/zzadu;->zzc(Lcom/google/android/gms/internal/ads/zzadt;JIIILcom/google/android/gms/internal/ads/zzads;)V

    move-object v1, v14

    move-object v14, v15

    add-int/2addr v8, v12

    .line 72
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    if-ne v8, v2, :cond_1c

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/zzadu;->zza(Lcom/google/android/gms/internal/ads/zzadt;Lcom/google/android/gms/internal/ads/zzads;)V

    goto :goto_c

    :cond_1b
    move-wide/from16 v15, v16

    move/from16 v17, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 74
    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    .line 75
    :cond_1c
    :goto_c
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zze:I

    add-int/2addr v1, v12

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zze:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:I

    const/4 v9, 0x0

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    iput-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:Z

    return v9

    .line 47
    :cond_1d
    :goto_d
    iput-wide v9, v2, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    return v12

    :cond_1e
    const/16 v16, 0x2

    const-wide/32 v28, 0x40000

    .line 67
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    int-to-long v9, v3

    sub-long/2addr v7, v9

    .line 24
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v9

    add-long/2addr v9, v7

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzo:Lcom/google/android/gms/internal/ads/zzdy;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v5

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    long-to-int v8, v7

    .line 25
    invoke-interface {v1, v5, v13, v8}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:I

    if-ne v5, v4, :cond_22

    iput-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:Z

    .line 26
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaiv;->zzj(I)I

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_e

    .line 28
    :cond_1f
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    :cond_20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v4

    if-lez v4, :cond_21

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaiv;->zzj(I)I

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_e

    :cond_21
    const/4 v4, 0x0

    .line 27
    :goto_e
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzA:I

    goto :goto_f

    .line 29
    :cond_22
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzen;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzeo;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzeo;-><init>(ILcom/google/android/gms/internal/ads/zzdy;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzd(Lcom/google/android/gms/internal/ads/zzeo;)V

    goto :goto_f

    :cond_23
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzu:Z

    if-nez v3, :cond_24

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:I

    const v4, 0x6d646174

    if-ne v3, v4, :cond_24

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzA:I

    :cond_24
    cmp-long v3, v7, v28

    if-gez v3, :cond_26

    long-to-int v3, v7

    .line 32
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    :cond_25
    :goto_f
    const/4 v13, 0x0

    goto :goto_10

    .line 33
    :cond_26
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v3

    add-long/2addr v3, v7

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadj;->zza:J

    const/4 v13, 0x1

    .line 34
    :goto_10
    invoke-direct {v0, v9, v10}, Lcom/google/android/gms/internal/ads/zzaiv;->zzn(J)V

    if-eqz v13, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    return v12

    :cond_27
    move-wide/from16 v30, v7

    const/4 v5, 0x2

    .line 33
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    if-nez v3, :cond_2b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v3

    const/4 v9, 0x0

    .line 1
    invoke-interface {v1, v3, v9, v11, v12}, Lcom/google/android/gms/internal/ads/zzaco;->zzn([BIIZ)Z

    move-result v3

    if-nez v3, :cond_2a

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzA:I

    if-ne v1, v5, :cond_29

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_29

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzacq;

    .line 78
    invoke-interface {v1, v9, v6}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzB:Lcom/google/android/gms/internal/ads/zzagv;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_28

    const/4 v5, 0x0

    goto :goto_11

    .line 83
    :cond_28
    new-instance v5, Lcom/google/android/gms/internal/ads/zzay;

    new-array v6, v12, [Lcom/google/android/gms/internal/ads/zzax;

    aput-object v2, v6, v9

    .line 79
    invoke-direct {v5, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzay;-><init>(J[Lcom/google/android/gms/internal/ads/zzax;)V

    .line 78
    :goto_11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzz;

    .line 80
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzT(Lcom/google/android/gms/internal/ads/zzay;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzacq;

    .line 81
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzD()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzacq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzadl;

    move-wide/from16 v5, v30

    .line 82
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzadl;-><init>(JJ)V

    .line 83
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    :cond_29
    const/16 v22, -0x1

    return v22

    .line 79
    :cond_2a
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v9, 0x0

    .line 2
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:I

    :cond_2b
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_2c

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v3

    .line 5
    invoke-interface {v1, v3, v11, v11}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    add-int/2addr v3, v11

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    goto :goto_13

    :cond_2c
    const-wide/16 v30, 0x0

    cmp-long v3, v5, v30

    if-nez v3, :cond_2f

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_2e

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzen;

    if-eqz v3, :cond_2d

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzen;->zza:J

    goto :goto_12

    :cond_2d
    move-wide v5, v7

    :cond_2e
    :goto_12
    cmp-long v3, v5, v7

    if-eqz v3, :cond_2f

    .line 9
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    .line 6
    :cond_2f
    :goto_13
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    int-to-long v7, v3

    cmp-long v9, v5, v7

    if-ltz v9, :cond_39

    .line 84
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_36

    const v6, 0x7472616b

    if-eq v5, v6, :cond_36

    const v6, 0x6d646961

    if-eq v5, v6, :cond_36

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_36

    const v6, 0x7374626c

    if-eq v5, v6, :cond_36

    const v6, 0x65647473

    if-eq v5, v6, :cond_36

    if-eq v5, v7, :cond_36

    const v6, 0x65647664

    if-ne v5, v6, :cond_30

    goto/16 :goto_17

    :cond_30
    const v6, 0x6d646864

    if-eq v5, v6, :cond_33

    const v6, 0x6d766864

    if-eq v5, v6, :cond_33

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_33

    const v6, 0x73747364

    if-eq v5, v6, :cond_33

    const v6, 0x73747473

    if-eq v5, v6, :cond_33

    const v6, 0x73747373

    if-eq v5, v6, :cond_33

    const v6, 0x63747473

    if-eq v5, v6, :cond_33

    const v6, 0x656c7374

    if-eq v5, v6, :cond_33

    const v6, 0x73747363

    if-eq v5, v6, :cond_33

    const v6, 0x7374737a

    if-eq v5, v6, :cond_33

    const v6, 0x73747a32

    if-eq v5, v6, :cond_33

    const v6, 0x7374636f

    if-eq v5, v6, :cond_33

    const v6, 0x636f3634

    if-eq v5, v6, :cond_33

    const v6, 0x746b6864

    if-eq v5, v6, :cond_33

    if-eq v5, v4, :cond_33

    const v4, 0x75647461

    if-eq v5, v4, :cond_33

    const v4, 0x6b657973

    if-eq v5, v4, :cond_33

    const v4, 0x696c7374

    if-ne v5, v4, :cond_31

    goto :goto_14

    .line 23
    :cond_31
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    int-to-long v5, v5

    sub-long v27, v3, v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_32

    add-long v31, v27, v5

    new-instance v24, Lcom/google/android/gms/internal/ads/zzagv;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    sub-long v33, v3, v5

    const-wide/16 v25, 0x0

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v24 .. v34}, Lcom/google/android/gms/internal/ads/zzagv;-><init>(JJJJJ)V

    move-object/from16 v3, v24

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzB:Lcom/google/android/gms/internal/ads/zzagv;

    :cond_32
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzo:Lcom/google/android/gms/internal/ads/zzdy;

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    goto/16 :goto_0

    :cond_33
    :goto_14
    if-ne v3, v11, :cond_34

    const/4 v3, 0x1

    goto :goto_15

    :cond_34
    const/4 v3, 0x0

    .line 19
    :goto_15
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_35

    const/4 v3, 0x1

    goto :goto_16

    :cond_35
    const/4 v3, 0x0

    .line 20
    :goto_16
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 21
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdy;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v5

    const/4 v9, 0x0

    .line 22
    invoke-static {v4, v9, v5, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzo:Lcom/google/android/gms/internal/ads/zzdy;

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    goto/16 :goto_0

    .line 10
    :cond_36
    :goto_17
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    add-long/2addr v3, v5

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    int-to-long v8, v8

    cmp-long v10, v5, v8

    if-eqz v10, :cond_37

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:I

    if-ne v5, v7, :cond_37

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    .line 11
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzdy;->zzI(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 12
    invoke-interface {v1, v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzaco;->zzh([BII)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaik;->zzg(Lcom/google/android/gms/internal/ads/zzdy;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzd()I

    move-result v5

    .line 14
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzj()V

    :cond_37
    sub-long/2addr v3, v8

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:I

    .line 16
    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzen;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzm:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_38

    .line 17
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiv;->zzn(J)V

    goto/16 :goto_0

    .line 18
    :cond_38
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzm()V

    goto/16 :goto_0

    .line 6
    :cond_39
    const-string v1, "Atom size less than header length (unsupported)."

    .line 84
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzacn;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:Lcom/google/android/gms/internal/ads/zzfxn;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacq;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzakd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzakg;-><init>(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzakd;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzv:Lcom/google/android/gms/internal/ads/zzacq;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzn:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzs:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzt:Z

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiv;->zzm()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzh:Lcom/google/android/gms/internal/ads/zzaiz;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaiz;->zzb()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:[Lcom/google/android/gms/internal/ads/zzaiu;

    .line 5
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v2, p1, v0

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    .line 7
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzaje;->zza(J)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 8
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzaje;->zzb(J)I

    move-result v4

    .line 9
    :cond_2
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzaiu;->zze:I

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaiu;->zzd:Lcom/google/android/gms/internal/ads/zzadu;

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzadu;->zzb()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzadk;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:[Lcom/google/android/gms/internal/ads/zzaiu;

    array-length v1, v0

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadk;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadn;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    .line 2
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzadn;Lcom/google/android/gms/internal/ads/zzadn;)V

    return-object p1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzy:I

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_3

    .line 3
    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    .line 4
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaiv;->zzk(Lcom/google/android/gms/internal/ads/zzaje;J)I

    move-result v1

    if-ne v1, v2, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadk;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzadn;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    .line 5
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzadn;Lcom/google/android/gms/internal/ads/zzadn;)V

    return-object p1

    .line 6
    :cond_1
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaje;->zzf:[J

    aget-wide v8, v7, v1

    .line 7
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaje;->zzc:[J

    aget-wide v10, v7, v1

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    .line 8
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    add-int/2addr v7, v2

    if-ge v1, v7, :cond_2

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaje;->zzb(J)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 10
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzaje;->zzf:[J

    aget-wide v1, p2, p1

    .line 11
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzaje;->zzc:[J

    aget-wide p1, p2, p1

    move-wide v3, p1

    goto :goto_0

    :cond_2
    move-wide v1, v5

    :goto_0
    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzw:[Lcom/google/android/gms/internal/ads/zzaiu;

    .line 12
    array-length v8, v7

    if-ge v0, v8, :cond_6

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzy:I

    if-eq v0, v8, :cond_5

    .line 13
    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaiu;->zzb:Lcom/google/android/gms/internal/ads/zzaje;

    .line 14
    invoke-static {v7, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzaiv;->zzl(Lcom/google/android/gms/internal/ads/zzaje;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    .line 15
    invoke-static {v7, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiv;->zzl(Lcom/google/android/gms/internal/ads/zzaje;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzadn;

    .line 16
    invoke-direct {v0, p1, p2, v10, v11}, Lcom/google/android/gms/internal/ads/zzadn;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadk;

    .line 17
    invoke-direct {p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzadn;Lcom/google/android/gms/internal/ads/zzadn;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadn;

    .line 18
    invoke-direct {p1, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadn;-><init>(JJ)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzadk;

    .line 19
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzadk;-><init>(Lcom/google/android/gms/internal/ads/zzadn;Lcom/google/android/gms/internal/ads/zzadn;)V

    return-object p2
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzaco;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaja;->zzb(Lcom/google/android/gms/internal/ads/zzaco;Z)Lcom/google/android/gms/internal/ads/zzadq;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:Lcom/google/android/gms/internal/ads/zzfxn;

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method
