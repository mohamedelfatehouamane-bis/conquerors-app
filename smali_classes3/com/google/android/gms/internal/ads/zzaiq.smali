.class public final Lcom/google/android/gms/internal/ads/zzaiq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacn;


# static fields
.field private static final zza:[B

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzab;


# instance fields
.field private zzA:J

.field private zzB:Lcom/google/android/gms/internal/ads/zzaip;

.field private zzC:I

.field private zzD:I

.field private zzE:I

.field private zzF:Z

.field private zzG:Z

.field private zzH:Lcom/google/android/gms/internal/ads/zzacq;

.field private zzI:[Lcom/google/android/gms/internal/ads/zzadt;

.field private zzJ:[Lcom/google/android/gms/internal/ads/zzadt;

.field private zzK:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzakd;

.field private final zzd:I

.field private final zze:Ljava/util/List;

.field private final zzf:Landroid/util/SparseArray;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzj:[B

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzafl;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzn:Ljava/util/ArrayDeque;

.field private final zzo:Ljava/util/ArrayDeque;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzfo;

.field private zzq:Lcom/google/android/gms/internal/ads/zzfxn;

.field private zzr:I

.field private zzs:I

.field private zzt:J

.field private zzu:I

.field private zzv:Lcom/google/android/gms/internal/ads/zzdy;

.field private zzw:J

.field private zzx:I

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiq;->zza:[B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    const-string v1, "application/x-emsg"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzakd;->zza:Lcom/google/android/gms/internal/ads/zzakd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(Lcom/google/android/gms/internal/ads/zzakd;ILcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzajb;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzadt;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakd;ILcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzajb;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzadt;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzc:Lcom/google/android/gms/internal/ads/zzakd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:I

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zze:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafl;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzl:Lcom/google/android/gms/internal/ads/zzafl;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzm:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzfk;->zza:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzg:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    const/4 p3, 0x5

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzh:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzi:Lcom/google/android/gms/internal/ads/zzdy;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzj:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdy;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzk:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzo:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzq:Lcom/google/android/gms/internal/ads/zzfxn;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzz:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzy:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzA:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzacq;->zza:Lcom/google/android/gms/internal/ads/zzacq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzH:Lcom/google/android/gms/internal/ads/zzacq;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzadt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzI:[Lcom/google/android/gms/internal/ads/zzadt;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzJ:[Lcom/google/android/gms/internal/ads/zzadt;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfo;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzain;

    .line 14
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzain;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfo;-><init>(Lcom/google/android/gms/internal/ads/zzfm;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzp:Lcom/google/android/gms/internal/ads/zzfo;

    return-void
.end method

.method private static zzg(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected negative value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object p0

    throw p0
.end method

.method private static zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzu;
    .locals 19

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_b

    move-object/from16 v5, p0

    .line 2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzeo;

    .line 3
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzeo;->zzd:I

    const v8, 0x70737368    # 3.013775E29f

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdy;

    .line 6
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_1

    :goto_1
    move/from16 v16, v3

    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 7
    :cond_1
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v9

    .line 8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v10

    const-string v11, "PsshAtomUtil"

    if-eq v10, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Advertised atom size ("

    .line 9
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") does not match buffer size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v9

    if-eq v9, v8, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Atom type is not pssh: "

    .line 11
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Unsupported pssh version: "

    .line 13
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v10, Ljava/util/UUID;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzt()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzt()J

    move-result-wide v14

    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v8, v9, :cond_6

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v9

    new-array v12, v9, [Ljava/util/UUID;

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v9, :cond_5

    new-instance v14, Ljava/util/UUID;

    move/from16 v16, v3

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzt()J

    move-result-wide v2

    move-object/from16 v17, v12

    move/from16 v18, v13

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzt()J

    move-result-wide v12

    invoke-direct {v14, v2, v3, v12, v13}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v14, v17, v18

    add-int/lit8 v13, v18, 0x1

    move/from16 v3, v16

    move-object/from16 v12, v17

    goto :goto_3

    :cond_5
    move-object/from16 v17, v12

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    move/from16 v16, v3

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v3

    if-eq v2, v3, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Atom data size ("

    .line 18
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") does not match the bytes left: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-array v3, v2, [B

    .line 19
    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaix;

    invoke-direct {v2, v10, v8, v3, v12}, Lcom/google/android/gms/internal/ads/zzaix;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    :goto_5
    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    .line 22
    :cond_8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaix;->zza:Ljava/util/UUID;

    :goto_6
    if-nez v2, :cond_9

    .line 6
    const-string v2, "FragmentedMp4Extractor"

    const-string v3, "Skipped pssh atom (failed to extract uuid)"

    .line 20
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzt;

    .line 21
    const-string v7, "video/mp4"

    const/4 v15, 0x0

    invoke-direct {v3, v2, v15, v7, v6}, Lcom/google/android/gms/internal/ads/zzt;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 22
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    move/from16 v16, v3

    :goto_7
    const/4 v15, 0x0

    :goto_8
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x0

    if-nez v4, :cond_c

    return-object v15

    .line 19
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzu;

    .line 23
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final zzj()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    return-void
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzdy;ILcom/google/android/gms/internal/ads/zzajd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result p1

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzaik;->zza:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzajd;->zzl:[Z

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzajd;->zze:I

    .line 6
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzajd;->zze:I

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzajd;->zzl:[Z

    .line 8
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result p1

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzajd;->zza(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result p1

    .line 10
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Z

    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Senc sample count "

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object p0

    throw p0

    .line 3
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object p0

    throw p0
.end method

.method private final zzl(J)V
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzen;->zza:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_51

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzen;

    .line 3
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzen;->zzd:I

    const v3, 0x6d6f6f76

    const/16 v6, 0xc

    const/16 v8, 0x8

    if-ne v1, v3, :cond_9

    .line 4
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v1

    const v3, 0x6d766578

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zza(I)Lcom/google/android/gms/internal/ads/zzen;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v9, v3

    check-cast v9, Lcom/google/android/gms/internal/ads/zzen;

    new-instance v12, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    .line 7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_4

    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    .line 8
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzeo;

    .line 9
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzeo;->zzd:I

    const/16 v16, 0x10

    const v7, 0x74726578

    if-ne v15, v7, :cond_1

    .line 10
    iget-object v7, v14, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 11
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v14

    .line 13
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v11

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v6

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    .line 17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v10, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {v10, v15, v11, v6, v7}, Lcom/google/android/gms/internal/ads/zzail;-><init>(IIII)V

    .line 18
    invoke-static {v14, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 19
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzail;

    invoke-virtual {v12, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v6, 0x6d656864

    if-ne v15, v6, :cond_3

    .line 20
    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 21
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v5

    .line 23
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v4

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0xc

    goto :goto_1

    :cond_4
    const/16 v16, 0x10

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzadb;-><init>()V

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaim;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Lcom/google/android/gms/internal/ads/zzaiq;)V

    const/4 v8, 0x0

    move-object v6, v1

    .line 25
    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzaik;->zzf(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzadb;JLcom/google/android/gms/internal/ads/zzu;ZZLcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v2, :cond_6

    .line 28
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaje;

    .line 29
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzH:Lcom/google/android/gms/internal/ads/zzacq;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    .line 30
    invoke-interface {v5, v11, v6}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v5

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzajb;->zze:J

    .line 31
    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzadt;->zzl(J)V

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzajb;->zza:I

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaip;

    .line 32
    invoke-static {v12, v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzm(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzail;

    move-result-object v6

    invoke-direct {v7, v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzaip;-><init>(Lcom/google/android/gms/internal/ads/zzadt;Lcom/google/android/gms/internal/ads/zzaje;Lcom/google/android/gms/internal/ads/zzail;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzajb;->zza:I

    .line 33
    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzz:J

    iget-wide v3, v4, Lcom/google/android/gms/internal/ads/zzajb;->zze:J

    .line 34
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzz:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzH:Lcom/google/android/gms/internal/ads/zzacq;

    .line 35
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacq;->zzD()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :goto_5
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v2, :cond_0

    .line 37
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaje;

    .line 38
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzajb;->zza:I

    .line 39
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaip;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzajb;->zza:I

    .line 40
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzm(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzail;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzaip;->zzh(Lcom/google/android/gms/internal/ads/zzaje;Lcom/google/android/gms/internal/ads/zzail;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_9
    const/16 v16, 0x10

    const v3, 0x6d6f6f66

    if-ne v1, v3, :cond_50

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzj:[B

    .line 41
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v7, :cond_4a

    .line 42
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzen;

    .line 43
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzen;->zzd:I

    const v13, 0x74726166

    if-ne v12, v13, :cond_49

    const v12, 0x74666864

    .line 44
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v12

    .line 189
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-object v13, v12

    check-cast v13, Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 45
    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 46
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v13

    .line 47
    sget v14, Lcom/google/android/gms/internal/ads/zzaik;->zza:I

    .line 48
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v14

    .line 49
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzaip;

    if-nez v14, :cond_a

    const/4 v14, 0x0

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_c

    :cond_a
    and-int/lit8 v15, v13, 0x1

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v15, :cond_b

    .line 50
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v4

    iget-object v15, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zzajd;->zzb:J

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zzajd;->zzc:J

    :cond_b
    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzaip;->zze:Lcom/google/android/gms/internal/ads/zzail;

    and-int/lit8 v5, v13, 0x2

    if-eqz v5, :cond_c

    .line 51
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 52
    :cond_c
    iget v5, v4, Lcom/google/android/gms/internal/ads/zzail;->zza:I

    :goto_8
    and-int/lit8 v15, v13, 0x8

    if-eqz v15, :cond_d

    .line 53
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v15

    goto :goto_9

    .line 54
    :cond_d
    iget v15, v4, Lcom/google/android/gms/internal/ads/zzail;->zzb:I

    :goto_9
    and-int/lit8 v21, v13, 0x10

    if-eqz v21, :cond_e

    .line 55
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v21

    move/from16 v10, v21

    goto :goto_a

    .line 56
    :cond_e
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzail;->zzc:I

    :goto_a
    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_f

    .line 57
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v4

    goto :goto_b

    .line 58
    :cond_f
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzail;->zzd:I

    .line 57
    :goto_b
    iget-object v12, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {v13, v5, v15, v10, v4}, Lcom/google/android/gms/internal/ads/zzail;-><init>(IIII)V

    iput-object v13, v12, Lcom/google/android/gms/internal/ads/zzajd;->zza:Lcom/google/android/gms/internal/ads/zzail;

    :goto_c
    if-nez v14, :cond_10

    move-object/from16 v23, v1

    move/from16 v22, v3

    move/from16 v30, v7

    move/from16 v31, v9

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xc

    :goto_d
    const/16 v12, 0x10

    goto/16 :goto_2c

    .line 49
    :cond_10
    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzp:J

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Z

    .line 59
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaip;->zzi()V

    const/4 v10, 0x1

    .line 60
    invoke-static {v14, v10}, Lcom/google/android/gms/internal/ads/zzaip;->zzg(Lcom/google/android/gms/internal/ads/zzaip;Z)V

    const v15, 0x74666474

    .line 61
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v15

    if-eqz v15, :cond_12

    and-int/lit8 v18, v3, 0x2

    if-nez v18, :cond_12

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 62
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 63
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v12

    if-ne v12, v10, :cond_11

    .line 64
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v12

    goto :goto_e

    :cond_11
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v12

    :goto_e
    iput-wide v12, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzp:J

    iput-boolean v10, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Z

    goto :goto_f

    :cond_12
    iput-wide v12, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzp:J

    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Z

    .line 65
    :goto_f
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    .line 66
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_10
    const v8, 0x7472756e

    if-ge v12, v10, :cond_14

    .line 67
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v1

    move-object/from16 v1, v22

    check-cast v1, Lcom/google/android/gms/internal/ads/zzeo;

    move/from16 v22, v3

    .line 68
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzeo;->zzd:I

    if-ne v3, v8, :cond_13

    .line 69
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v3, 0xc

    .line 70
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v1

    if-lez v1, :cond_13

    add-int/2addr v15, v1

    add-int/lit8 v13, v13, 0x1

    :cond_13
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v22

    move-object/from16 v1, v23

    goto :goto_10

    :cond_14
    move-object/from16 v23, v1

    move/from16 v22, v3

    const/4 v1, 0x0

    iput v1, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzh:I

    iput v1, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzg:I

    iput v1, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzf:I

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    iput v15, v1, Lcom/google/android/gms/internal/ads/zzajd;->zze:I

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzg:[I

    .line 72
    array-length v3, v3

    if-ge v3, v13, :cond_15

    new-array v3, v13, [J

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzf:[J

    new-array v3, v13, [I

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzg:[I

    :cond_15
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzh:[I

    .line 73
    array-length v3, v3

    if-ge v3, v15, :cond_16

    mul-int/lit8 v15, v15, 0x7d

    div-int/lit8 v15, v15, 0x64

    .line 74
    new-array v3, v15, [I

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzh:[I

    .line 75
    new-array v3, v15, [J

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzi:[J

    .line 76
    new-array v3, v15, [Z

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzj:[Z

    .line 77
    new-array v3, v15, [Z

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajd;->zzl:[Z

    :cond_16
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_11
    const-wide/16 v24, 0x0

    if-ge v1, v10, :cond_2b

    .line 78
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzeo;

    .line 79
    iget v13, v15, Lcom/google/android/gms/internal/ads/zzeo;->zzd:I

    if-ne v13, v8, :cond_2a

    add-int/lit8 v13, v3, 0x1

    .line 80
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v8, 0x8

    .line 81
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 82
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    move/from16 v27, v1

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    .line 83
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    move/from16 v28, v3

    iget-object v3, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    move-object/from16 v29, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzajd;->zza:Lcom/google/android/gms/internal/ads/zzail;

    .line 84
    sget v30, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    move-object/from16 v30, v5

    check-cast v30, Lcom/google/android/gms/internal/ads/zzail;

    move/from16 v30, v7

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzg:[I

    .line 85
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v31

    aput v31, v7, v28

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzf:[J

    move/from16 v31, v9

    move/from16 v32, v10

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzb:J

    .line 86
    aput-wide v9, v7, v28

    and-int/lit8 v33, v8, 0x1

    if-eqz v33, :cond_17

    move-object/from16 v33, v7

    .line 87
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    move-wide/from16 v34, v9

    int-to-long v9, v7

    add-long v9, v34, v9

    aput-wide v9, v33, v28

    :cond_17
    and-int/lit8 v7, v8, 0x4

    if-eqz v7, :cond_18

    const/4 v7, 0x1

    goto :goto_12

    :cond_18
    const/4 v7, 0x0

    .line 88
    :goto_12
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzail;->zzd:I

    if-eqz v7, :cond_19

    .line 89
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v9

    :cond_19
    and-int/lit16 v10, v8, 0x100

    move/from16 v33, v7

    and-int/lit16 v7, v8, 0x200

    move/from16 v34, v7

    and-int/lit16 v7, v8, 0x400

    and-int/lit16 v8, v8, 0x800

    move/from16 v35, v7

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzi:[J

    if-eqz v7, :cond_1d

    move/from16 v36, v8

    array-length v8, v7

    move-object/from16 v37, v7

    const/4 v7, 0x1

    if-ne v8, v7, :cond_1e

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzj:[J

    if-nez v7, :cond_1a

    goto :goto_14

    :cond_1a
    const/16 v17, 0x0

    .line 90
    aget-wide v38, v37, v17

    cmp-long v7, v38, v24

    if-nez v7, :cond_1b

    goto :goto_13

    .line 94
    :cond_1b
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzd:J

    sget-object v44, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v40, 0xf4240

    move-wide/from16 v42, v7

    .line 91
    invoke-static/range {v38 .. v44}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    move-wide/from16 v37, v7

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzj:[J

    .line 92
    aget-wide v39, v7, v17

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    sget-object v45, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v41, 0xf4240

    move-wide/from16 v43, v7

    .line 93
    invoke-static/range {v39 .. v45}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    add-long v7, v37, v7

    move-wide/from16 v37, v7

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zze:J

    cmp-long v39, v37, v7

    if-gez v39, :cond_1c

    goto :goto_14

    .line 90
    :cond_1c
    :goto_13
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzj:[J

    .line 94
    check-cast v7, [J

    const/16 v17, 0x0

    aget-wide v24, v7, v17

    goto :goto_14

    :cond_1d
    move/from16 v36, v8

    .line 89
    :cond_1e
    :goto_14
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzh:[I

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzi:[J

    move-object/from16 v37, v7

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzj:[Z

    move-object/from16 v38, v7

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzb:I

    move-object/from16 v39, v8

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f

    and-int/lit8 v7, v22, 0x1

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_15

    :cond_1f
    const/4 v7, 0x0

    :goto_15
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzg:[I

    .line 95
    aget v8, v8, v28

    add-int/2addr v8, v12

    move/from16 v26, v9

    move/from16 v47, v10

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzc:J

    move-wide/from16 v44, v9

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzp:J

    :goto_16
    if-ge v12, v8, :cond_29

    if-eqz v47, :cond_20

    .line 96
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v1

    goto :goto_17

    :cond_20
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzail;->zzb:I

    :goto_17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzg(I)I

    if-eqz v34, :cond_21

    .line 97
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v28

    move/from16 v48, v7

    goto :goto_18

    :cond_21
    move/from16 v48, v7

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzail;->zzc:I

    move/from16 v28, v7

    :goto_18
    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzaiq;->zzg(I)I

    if-eqz v35, :cond_22

    .line 98
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    goto :goto_19

    :cond_22
    if-nez v12, :cond_24

    if-eqz v33, :cond_23

    move/from16 v7, v26

    const/4 v12, 0x0

    goto :goto_19

    :cond_23
    const/4 v12, 0x0

    .line 99
    :cond_24
    iget v7, v5, Lcom/google/android/gms/internal/ads/zzail;->zzd:I

    :goto_19
    if-eqz v36, :cond_25

    .line 100
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v40

    move-object/from16 v49, v5

    move/from16 v5, v40

    goto :goto_1a

    :cond_25
    move-object/from16 v49, v5

    const/4 v5, 0x0

    :goto_1a
    move/from16 v51, v7

    move/from16 v50, v8

    int-to-long v7, v5

    add-long/2addr v7, v9

    sub-long v40, v7, v24

    const-wide/32 v42, 0xf4240

    sget-object v46, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 101
    invoke-static/range {v40 .. v46}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    .line 102
    aput-wide v7, v39, v12

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Z

    if-nez v5, :cond_26

    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    move-wide/from16 v40, v7

    .line 103
    iget-wide v7, v5, Lcom/google/android/gms/internal/ads/zzaje;->zzh:J

    add-long v7, v40, v7

    aput-wide v7, v39, v12

    .line 104
    :cond_26
    aput v28, v37, v12

    shr-int/lit8 v5, v51, 0x10

    const/16 v18, 0x1

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_28

    if-eqz v48, :cond_27

    if-nez v12, :cond_28

    const/4 v5, 0x1

    const/4 v12, 0x0

    goto :goto_1b

    :cond_27
    const/4 v5, 0x1

    goto :goto_1b

    :cond_28
    const/4 v5, 0x0

    .line 105
    :goto_1b
    aput-boolean v5, v38, v12

    int-to-long v7, v1

    add-long/2addr v9, v7

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v48

    move-object/from16 v5, v49

    move/from16 v8, v50

    goto/16 :goto_16

    :cond_29
    move/from16 v50, v8

    .line 96
    iput-wide v9, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzp:J

    move v3, v13

    move/from16 v12, v50

    goto :goto_1c

    :cond_2a
    move/from16 v27, v1

    move/from16 v28, v3

    move-object/from16 v29, v5

    move/from16 v30, v7

    move/from16 v31, v9

    move/from16 v32, v10

    :goto_1c
    add-int/lit8 v1, v27, 0x1

    move-object/from16 v5, v29

    move/from16 v7, v30

    move/from16 v9, v31

    move/from16 v10, v32

    const v8, 0x7472756e

    goto/16 :goto_11

    :cond_2b
    move/from16 v30, v7

    move/from16 v31, v9

    .line 93
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    .line 106
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzajd;->zza:Lcom/google/android/gms/internal/ads/zzail;

    .line 188
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzail;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzail;->zza:I

    .line 108
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(I)Lcom/google/android/gms/internal/ads/zzajc;

    move-result-object v1

    const v3, 0x7361697a

    .line 109
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzajc;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzajc;->zzd:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v8, 0x8

    .line 111
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 112
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    const/4 v10, 0x1

    and-int/2addr v7, v10

    if-ne v7, v10, :cond_2c

    .line 113
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 114
    :cond_2c
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v7

    .line 115
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v8

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzajd;->zze:I

    if-gt v8, v9, :cond_31

    if-nez v7, :cond_2f

    .line 182
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzl:[Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1d
    if-ge v9, v8, :cond_2e

    .line 116
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v12

    add-int/2addr v10, v12

    if-le v12, v5, :cond_2d

    const/4 v12, 0x1

    goto :goto_1e

    :cond_2d
    const/4 v12, 0x0

    .line 117
    :goto_1e
    aput-boolean v12, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_2e
    const/4 v7, 0x0

    goto :goto_20

    :cond_2f
    if-le v7, v5, :cond_30

    const/4 v3, 0x1

    goto :goto_1f

    :cond_30
    const/4 v3, 0x0

    :goto_1f
    mul-int v10, v7, v8

    .line 126
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzl:[Z

    const/4 v7, 0x0

    .line 118
    invoke-static {v5, v7, v8, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 117
    :goto_20
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzl:[Z

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzajd;->zze:I

    .line 119
    invoke-static {v3, v8, v5, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v10, :cond_32

    .line 120
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzajd;->zza(I)V

    goto :goto_21

    .line 115
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saiz sample count "

    .line 182
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is greater than fragment sample count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_32
    :goto_21
    const v3, 0x7361696f

    .line 121
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v3

    if-eqz v3, :cond_36

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v8, 0x8

    .line 122
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 123
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    const/4 v10, 0x1

    if-ne v7, v10, :cond_33

    .line 124
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 125
    :cond_33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v7

    if-ne v7, v10, :cond_35

    .line 183
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v5

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzc:J

    if-nez v5, :cond_34

    .line 126
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v9

    goto :goto_22

    :cond_34
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v9

    :goto_22
    add-long/2addr v7, v9

    iput-wide v7, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzc:J

    goto :goto_23

    .line 125
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected saio entry count: "

    .line 183
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_36
    :goto_23
    const/4 v3, 0x0

    const v5, 0x73656e63

    .line 127
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzb(I)Lcom/google/android/gms/internal/ads/zzeo;

    move-result-object v5

    if-eqz v5, :cond_37

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v7, 0x0

    .line 128
    invoke-static {v5, v7, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzk(Lcom/google/android/gms/internal/ads/zzdy;ILcom/google/android/gms/internal/ads/zzajd;)V

    :cond_37
    if-eqz v1, :cond_38

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Ljava/lang/String;

    move-object/from16 v34, v1

    goto :goto_24

    :cond_38
    move-object/from16 v34, v3

    :goto_24
    move-object v1, v3

    move-object v5, v1

    const/4 v7, 0x0

    .line 129
    :goto_25
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3b

    .line 130
    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzeo;

    .line 131
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 132
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzeo;->zzd:I

    const v10, 0x73626770

    const v12, 0x73656967

    if-ne v8, v10, :cond_39

    const/16 v10, 0xc

    .line 133
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 134
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    if-ne v8, v12, :cond_3a

    move-object v1, v9

    goto :goto_26

    :cond_39
    const/16 v10, 0xc

    const v13, 0x73677064

    if-ne v8, v13, :cond_3a

    .line 135
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 136
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v8

    if-ne v8, v12, :cond_3a

    move-object v5, v9

    :cond_3a
    :goto_26
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_3b
    const/16 v10, 0xc

    if-eqz v1, :cond_44

    if-nez v5, :cond_3c

    goto/16 :goto_28

    :cond_3c
    const/16 v8, 0x8

    .line 137
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v7

    const/4 v9, 0x4

    .line 139
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    const/4 v12, 0x1

    if-ne v7, v12, :cond_3d

    .line 140
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 141
    :cond_3d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v1

    if-ne v1, v12, :cond_43

    .line 142
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 143
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v1

    .line 144
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    if-ne v1, v12, :cond_3f

    .line 145
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v7

    cmp-long v1, v7, v24

    if-eqz v1, :cond_3e

    goto :goto_27

    .line 179
    :cond_3e
    const-string v1, "Variable length description in sgpd found (unsupported)"

    .line 185
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_3f
    const/4 v8, 0x2

    if-lt v1, v8, :cond_40

    .line 146
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 147
    :cond_40
    :goto_27
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v7

    const-wide/16 v12, 0x1

    cmp-long v1, v7, v12

    if-nez v1, :cond_42

    const/4 v7, 0x1

    .line 148
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 149
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v1

    and-int/lit16 v8, v1, 0xf0

    shr-int/lit8 v37, v8, 0x4

    and-int/lit8 v38, v1, 0xf

    .line 150
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v1

    if-ne v1, v7, :cond_45

    .line 151
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v35

    const/16 v1, 0x10

    new-array v8, v1, [B

    const/4 v9, 0x0

    .line 152
    invoke-virtual {v5, v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    if-nez v35, :cond_41

    .line 153
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v1

    new-array v3, v1, [B

    .line 154
    invoke-virtual {v5, v3, v9, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    :cond_41
    move-object/from16 v39, v3

    iput-boolean v7, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzk:Z

    new-instance v32, Lcom/google/android/gms/internal/ads/zzajc;

    const/16 v33, 0x1

    move-object/from16 v36, v8

    .line 155
    invoke-direct/range {v32 .. v39}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v1, v32

    iput-object v1, v4, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzajc;

    goto :goto_29

    .line 147
    :cond_42
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    .line 186
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    .line 141
    :cond_43
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    .line 184
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_44
    :goto_28
    const/4 v7, 0x1

    .line 156
    :cond_45
    :goto_29
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v1, :cond_48

    .line 157
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeo;

    .line 158
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzeo;->zzd:I

    const v9, 0x75756964

    if-ne v8, v9, :cond_46

    .line 159
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    const/16 v8, 0x8

    .line 160
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    const/4 v9, 0x0

    const/16 v12, 0x10

    .line 161
    invoke-virtual {v5, v6, v9, v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    sget-object v13, Lcom/google/android/gms/internal/ads/zzaiq;->zza:[B

    .line 162
    invoke-static {v6, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 163
    invoke-static {v5, v12, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzk(Lcom/google/android/gms/internal/ads/zzdy;ILcom/google/android/gms/internal/ads/zzajd;)V

    goto :goto_2b

    :cond_46
    const/16 v8, 0x8

    const/4 v9, 0x0

    const/16 v12, 0x10

    :cond_47
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_48
    const/16 v8, 0x8

    const/4 v9, 0x0

    goto/16 :goto_d

    :cond_49
    move-object/from16 v23, v1

    move/from16 v22, v3

    move/from16 v30, v7

    move/from16 v31, v9

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/16 v12, 0x10

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2c
    add-int/lit8 v1, v31, 0x1

    move v9, v1

    move/from16 v3, v22

    move-object/from16 v1, v23

    move/from16 v7, v30

    const/16 v16, 0x10

    goto/16 :goto_7

    :cond_4a
    const/4 v3, 0x0

    const/4 v9, 0x0

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 164
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaiq;->zzh(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 165
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v2, :cond_4c

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 166
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    .line 167
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzajd;->zza:Lcom/google/android/gms/internal/ads/zzail;

    .line 168
    sget v8, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    move-object v8, v7

    check-cast v8, Lcom/google/android/gms/internal/ads/zzail;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzail;->zza:I

    .line 169
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(I)Lcom/google/android/gms/internal/ads/zzajc;

    move-result-object v6

    if-eqz v6, :cond_4b

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Ljava/lang/String;

    goto :goto_2e

    :cond_4b
    move-object v6, v3

    .line 170
    :goto_2e
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    .line 171
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v7

    .line 172
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzz;->zzF(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaip;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    .line 173
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_4c
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzy:J

    cmp-long v3, v1, v19

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 174
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v11, 0x0

    :goto_2f
    if-ge v11, v1, :cond_4f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 175
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaip;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzy:J

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzf:I

    :goto_30
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzajd;->zze:I

    if-ge v5, v7, :cond_4e

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzajd;->zzi:[J

    .line 176
    aget-wide v8, v7, v5

    cmp-long v7, v8, v3

    if-gtz v7, :cond_4e

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajd;->zzj:[Z

    .line 177
    aget-boolean v6, v6, v5

    if-eqz v6, :cond_4d

    iput v5, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzi:I

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_4e
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :cond_4f
    move-wide/from16 v2, v19

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzy:J

    goto/16 :goto_0

    :cond_50
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    .line 178
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    .line 179
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc(Lcom/google/android/gms/internal/ads/zzen;)V

    goto/16 :goto_0

    .line 180
    :cond_51
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj()V

    return-void
.end method

.method private static final zzm(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzail;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzail;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzail;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzail;

    return-object p0
.end method


# virtual methods
.method final synthetic zza(JLcom/google/android/gms/internal/ads/zzdy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzJ:[Lcom/google/android/gms/internal/ads/zzadt;

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzabz;->zza(JLcom/google/android/gms/internal/ads/zzdy;[Lcom/google/android/gms/internal/ads/zzadt;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaco;Lcom/google/android/gms/internal/ads/zzadj;)I
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_32

    const-string v11, "FragmentedMp4Extractor"

    if-eq v2, v9, :cond_24

    const-wide v3, 0x7fffffffffffffffL

    const/4 v13, 0x3

    if-eq v2, v6, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzB:Lcom/google/android/gms/internal/ads/zzaip;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v14

    move-wide v15, v3

    move-object v3, v8

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v14, :cond_3

    .line 2
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    const/16 p2, 0x2

    move-object/from16 v6, v17

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaip;

    .line 3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaip;->zzj(Lcom/google/android/gms/internal/ads/zzaip;)Z

    move-result v17

    if-nez v17, :cond_0

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzaip;->zzf:I

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    if-eq v5, v12, :cond_2

    :cond_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaip;->zzj(Lcom/google/android/gms/internal/ads/zzaip;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzaip;->zzh:I

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    if-ne v5, v12, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaip;->zzd()J

    move-result-wide v19

    cmp-long v5, v19, v15

    if-gez v5, :cond_2

    move-object v3, v6

    move-wide/from16 v15, v19

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    const/16 p2, 0x2

    if-nez v3, :cond_5

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzw:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_4

    .line 5
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj()V

    goto :goto_0

    .line 4
    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    .line 97
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    .line 98
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaip;->zzd()J

    move-result-wide v4

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v14

    sub-long/2addr v4, v14

    long-to-int v2, v4

    if-gez v2, :cond_6

    const-string v2, "Ignoring negative offset to sample data."

    .line 99
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 100
    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzB:Lcom/google/android/gms/internal/ads/zzaip;

    move-object v2, v3

    goto :goto_3

    :cond_7
    const/16 p2, 0x2

    :goto_3
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    const/4 v4, 0x6

    if-ne v3, v13, :cond_f

    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaip;->zzb()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzF:Z

    .line 102
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzf:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzi:I

    if-ge v5, v6, :cond_c

    .line 103
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaip;->zzf()Lcom/google/android/gms/internal/ads/zzajc;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    .line 108
    :cond_8
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajc;->zzd:I

    if-eqz v1, :cond_9

    .line 105
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    :cond_9
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzf:I

    .line 106
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzajd;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 107
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 108
    :cond_a
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaip;->zzk()Z

    move-result v1

    if-nez v1, :cond_b

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzB:Lcom/google/android/gms/internal/ads/zzaip;

    :cond_b
    :goto_5
    const/4 v1, 0x3

    goto/16 :goto_10

    .line 109
    :cond_c
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzajb;->zzh:I

    if-ne v5, v9, :cond_d

    add-int/lit8 v3, v3, -0x8

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    .line 110
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 111
    :cond_d
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    const-string v5, "audio/ac4"

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    const/4 v5, 0x7

    .line 112
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzaip;->zzc(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzk:Lcom/google/android/gms/internal/ads/zzdy;

    .line 113
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzabq;->zzb(ILcom/google/android/gms/internal/ads/zzdy;)V

    .line 114
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaip;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzk:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v3, v6, v5}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    goto :goto_6

    .line 147
    :cond_e
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    .line 115
    invoke-virtual {v2, v3, v10}, Lcom/google/android/gms/internal/ads/zzaip;->zzc(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    .line 114
    :goto_6
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    const/4 v3, 0x4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzE:I

    .line 116
    :cond_f
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    .line 117
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaip;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaip;->zze()J

    move-result-wide v6

    iget v11, v3, Lcom/google/android/gms/internal/ads/zzajb;->zzk:I

    if-nez v11, :cond_10

    :goto_7
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    if-ge v3, v4, :cond_1a

    sub-int/2addr v4, v3

    .line 119
    invoke-interface {v5, v1, v4, v10}, Lcom/google/android/gms/internal/ads/zzadt;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    goto :goto_7

    .line 158
    :cond_10
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzh:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v12

    .line 120
    aput-byte v10, v12, v10

    .line 121
    aput-byte v10, v12, v9

    .line 122
    aput-byte v10, v12, p2

    add-int/lit8 v14, v11, 0x1

    const/16 v18, 0x4

    rsub-int/lit8 v11, v11, 0x4

    :goto_8
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    if-ge v15, v13, :cond_1a

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzE:I

    const-string v15, "video/hevc"

    if-nez v13, :cond_15

    .line 123
    invoke-interface {v1, v12, v11, v14}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzh:Lcom/google/android/gms/internal/ads/zzdy;

    .line 124
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzh:Lcom/google/android/gms/internal/ads/zzdy;

    .line 125
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v13

    if-lez v13, :cond_14

    add-int/lit8 v13, v13, -0x1

    .line 159
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzE:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzg:Lcom/google/android/gms/internal/ads/zzdy;

    .line 126
    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzg:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v10, 0x4

    .line 127
    invoke-interface {v5, v13, v10}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzh:Lcom/google/android/gms/internal/ads/zzdy;

    .line 128
    invoke-interface {v5, v13, v9}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzJ:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 129
    array-length v13, v13

    const/16 v18, 0x4

    const-string v10, "video/avc"

    if-lez v13, :cond_13

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    aget-byte v19, v12, v18

    .line 130
    sget-object v20, Lcom/google/android/gms/internal/ads/zzfk;->zza:[B

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 131
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    and-int/lit8 v8, v19, 0x1f

    if-eq v8, v4, :cond_11

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v8, 0x1

    goto :goto_b

    .line 132
    :cond_12
    :goto_a
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    and-int/lit8 v8, v19, 0x7e

    shr-int/2addr v8, v9

    const/16 v13, 0x27

    if-ne v8, v13, :cond_13

    goto :goto_9

    :cond_13
    const/4 v8, 0x0

    :goto_b
    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzG:Z

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    add-int/lit8 v8, v8, 0x5

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    add-int/2addr v8, v11

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzF:Z

    if-nez v8, :cond_19

    .line 133
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzaip;->zzd:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 134
    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v18, 0x4

    aget-byte v8, v12, v18

    .line 135
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzi(B)Z

    move-result v8

    if-eqz v8, :cond_19

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzF:Z

    goto/16 :goto_d

    .line 125
    :cond_14
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 159
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    .line 135
    :cond_15
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzG:Z

    if-eqz v8, :cond_17

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzi:Lcom/google/android/gms/internal/ads/zzdy;

    .line 136
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzI(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzi:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v8

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzE:I

    const/4 v13, 0x0

    .line 137
    invoke-interface {v1, v8, v13, v10}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzi:Lcom/google/android/gms/internal/ads/zzdy;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzE:I

    .line 138
    invoke-interface {v5, v8, v10}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzE:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzi:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v10

    .line 139
    invoke-static {v13, v10}, Lcom/google/android/gms/internal/ads/zzfk;->zzb([BI)I

    move-result v10

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzi:Lcom/google/android/gms/internal/ads/zzdy;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 140
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzi:Lcom/google/android/gms/internal/ads/zzdy;

    .line 141
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzK(I)V

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzq:I

    const/4 v10, -0x1

    if-eq v4, v10, :cond_16

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzp:Lcom/google/android/gms/internal/ads/zzfo;

    .line 142
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfo;->zza()I

    move-result v10

    if-eq v4, v10, :cond_16

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzp:Lcom/google/android/gms/internal/ads/zzfo;

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzajb;->zzg:Lcom/google/android/gms/internal/ads/zzab;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzab;->zzq:I

    .line 143
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)V

    :cond_16
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzp:Lcom/google/android/gms/internal/ads/zzfo;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzi:Lcom/google/android/gms/internal/ads/zzdy;

    .line 144
    invoke-virtual {v4, v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzb(JLcom/google/android/gms/internal/ads/zzdy;)V

    .line 145
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaip;->zza()I

    move-result v4

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_18

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzp:Lcom/google/android/gms/internal/ads/zzfo;

    .line 146
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzc()V

    goto :goto_c

    :cond_17
    const/4 v4, 0x0

    .line 147
    invoke-interface {v5, v1, v13, v4}, Lcom/google/android/gms/internal/ads/zzadt;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v8

    .line 146
    :cond_18
    :goto_c
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    add-int/2addr v4, v8

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzD:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzE:I

    sub-int/2addr v4, v8

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzE:I

    const/4 v4, 0x6

    :cond_19
    :goto_d
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x3

    goto/16 :goto_8

    .line 148
    :cond_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaip;->zza()I

    move-result v22

    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaip;->zzf()Lcom/google/android/gms/internal/ads/zzajc;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajc;->zzc:Lcom/google/android/gms/internal/ads/zzads;

    move-object/from16 v25, v1

    goto :goto_e

    :cond_1b
    const/16 v25, 0x0

    :goto_e
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzC:I

    const/16 v24, 0x0

    move/from16 v23, v1

    move-object/from16 v19, v5

    move-wide/from16 v20, v6

    .line 150
    invoke-interface/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    :cond_1c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzo:Ljava/util/ArrayDeque;

    .line 151
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzo:Ljava/util/ArrayDeque;

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaio;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzx:I

    .line 153
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzaio;->zzc:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzx:I

    .line 154
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzaio;->zza:J

    .line 155
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzaio;->zzb:Z

    if-eqz v5, :cond_1d

    add-long v3, v3, v20

    :cond_1d
    move-wide v6, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzI:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 156
    array-length v4, v3

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v4, :cond_1c

    aget-object v5, v3, v12

    .line 157
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaio;->zzc:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzx:I

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 158
    :cond_1e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaip;->zzk()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzB:Lcom/google/android/gms/internal/ads/zzaip;

    goto/16 :goto_5

    .line 108
    :goto_10
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    const/16 v26, 0x0

    return v26

    .line 14
    :cond_1f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 91
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v5, v2, :cond_21

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iget-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Z

    if-eqz v8, :cond_20

    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/zzajd;->zzc:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_20

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaip;

    move-object v6, v3

    move-wide v3, v7

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_21
    if-nez v6, :cond_22

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    goto/16 :goto_0

    :cond_22
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v7

    sub-long/2addr v3, v7

    long-to-int v2, v3

    if-ltz v2, :cond_23

    .line 94
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zze()I

    move-result v3

    const/4 v13, 0x0

    .line 95
    invoke-interface {v1, v4, v13, v3}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Lcom/google/android/gms/internal/ads/zzdy;

    .line 96
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iput-boolean v13, v2, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Z

    goto/16 :goto_0

    .line 93
    :cond_23
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    .line 170
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_24
    const/16 p2, 0x2

    .line 115
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    long-to-int v2, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    sub-int/2addr v2, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzv:Lcom/google/android/gms/internal/ads/zzdy;

    if-eqz v5, :cond_30

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v6

    .line 23
    invoke-interface {v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeo;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzs:I

    invoke-direct {v2, v6, v5}, Lcom/google/android/gms/internal/ads/zzeo;-><init>(ILcom/google/android/gms/internal/ads/zzdy;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v5

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    .line 24
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_25

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzd(Lcom/google/android/gms/internal/ads/zzeo;)V

    goto/16 :goto_19

    .line 90
    :cond_25
    iget v8, v2, Lcom/google/android/gms/internal/ads/zzeo;->zzd:I

    if-ne v8, v4, :cond_29

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    .line 26
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v3

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v3

    const/4 v10, 0x4

    .line 29
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v15

    if-nez v3, :cond_26

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v3

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v7

    goto :goto_12

    .line 33
    :cond_26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v3

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v7

    :goto_12
    add-long/2addr v5, v7

    move-wide v11, v3

    const-wide/32 v13, 0xf4240

    .line 35
    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 36
    invoke-static/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    const/4 v7, 0x2

    .line 37
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzq()I

    move-result v7

    new-array v8, v7, [I

    new-array v10, v7, [J

    new-array v13, v7, [J

    new-array v14, v7, [J

    move-wide/from16 v21, v3

    move-wide/from16 v19, v11

    const/4 v11, 0x0

    :goto_13
    if-ge v11, v7, :cond_28

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v12

    const/high16 v17, -0x80000000

    and-int v17, v12, v17

    if-nez v17, :cond_27

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v23

    const v17, 0x7fffffff

    and-int v12, v12, v17

    .line 41
    aput v12, v8, v11

    .line 42
    aput-wide v5, v10, v11

    .line 43
    aput-wide v21, v14, v11

    add-long v19, v19, v23

    move-object v12, v13

    move-object/from16 v17, v14

    const-wide/32 v13, 0xf4240

    move-object/from16 v21, v17

    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move/from16 v26, v11

    move-object v9, v12

    move-wide/from16 v11, v19

    move-wide/from16 v19, v3

    move-object/from16 v3, v21

    .line 44
    invoke-static/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v13

    .line 45
    aget-wide v23, v3, v26

    sub-long v23, v13, v23

    aput-wide v23, v9, v26

    const/4 v4, 0x4

    .line 46
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzM(I)V

    .line 47
    aget v4, v8, v26

    move-wide/from16 v23, v5

    int-to-long v4, v4

    add-long v4, v23, v4

    add-int/lit8 v6, v26, 0x1

    move-wide/from16 v21, v13

    move-object v14, v3

    move-object v13, v9

    const/4 v9, 0x1

    move-wide/from16 v35, v11

    move v11, v6

    move-wide v5, v4

    move-wide/from16 v3, v19

    move-wide/from16 v19, v35

    goto :goto_13

    .line 39
    :cond_27
    const-string v1, "Unhandled indirect reference"

    const/4 v2, 0x0

    .line 165
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    :cond_28
    move-wide/from16 v19, v3

    move-object v9, v13

    move-object v3, v14

    .line 48
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaca;

    invoke-direct {v4, v8, v10, v9, v3}, Lcom/google/android/gms/internal/ads/zzaca;-><init>([I[J[J[J)V

    .line 49
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 50
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzA:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzH:Lcom/google/android/gms/internal/ads/zzacq;

    .line 51
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzadm;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzK:Z

    goto/16 :goto_19

    :cond_29
    if-ne v8, v3, :cond_31

    .line 34
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzdy;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzI:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 52
    array-length v3, v3

    if-eqz v3, :cond_31

    .line 53
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v3

    .line 55
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaik;->zza(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_2b

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Skipping unsupported emsg version: "

    .line 88
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 66
    :cond_2a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v16

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    sget-object v18, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 68
    invoke-static/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    sget-object v18, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 70
    invoke-static/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v10

    const/4 v13, 0x0

    .line 72
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzy(C)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 74
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzy(C)Ljava/lang/String;

    move-result-object v12

    .line 168
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    move-object v14, v12

    check-cast v14, Ljava/lang/String;

    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    move-wide v9, v4

    move-wide v7, v6

    :goto_14
    move-object/from16 v28, v3

    move-object/from16 v29, v12

    goto :goto_16

    :cond_2b
    const/4 v13, 0x0

    .line 56
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzy(C)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzy(C)Ljava/lang/String;

    move-result-object v12

    .line 166
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    move-object v6, v12

    check-cast v6, Ljava/lang/String;

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v17

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v13

    const-wide/32 v15, 0xf4240

    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 62
    invoke-static/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzA:J

    cmp-long v10, v8, v4

    if-eqz v10, :cond_2c

    add-long/2addr v8, v6

    goto :goto_15

    :cond_2c
    move-wide v8, v4

    .line 63
    :goto_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 64
    invoke-static/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzei;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v13

    move-wide/from16 v30, v10

    move-wide/from16 v32, v13

    move-wide/from16 v35, v8

    move-wide v9, v6

    move-wide/from16 v7, v35

    goto :goto_14

    :goto_16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v3

    .line 76
    new-array v3, v3, [B

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v6

    const/4 v13, 0x0

    .line 77
    invoke-virtual {v2, v3, v13, v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    .line 78
    new-instance v27, Lcom/google/android/gms/internal/ads/zzafk;

    move-object/from16 v34, v3

    invoke-direct/range {v27 .. v34}, Lcom/google/android/gms/internal/ads/zzafk;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    move-object/from16 v2, v27

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzl:Lcom/google/android/gms/internal/ads/zzafl;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdy;

    .line 79
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzafl;->zza(Lcom/google/android/gms/internal/ads/zzafk;)[B

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzI:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 80
    array-length v11, v3

    const/4 v12, 0x0

    :goto_17
    if-ge v12, v11, :cond_2d

    aget-object v13, v3, v12

    const/4 v14, 0x0

    .line 81
    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    .line 82
    invoke-interface {v13, v6, v2}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_2d
    cmp-long v3, v7, v4

    if-nez v3, :cond_2e

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzo:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaio;

    const/4 v6, 0x1

    invoke-direct {v4, v9, v10, v6, v2}, Lcom/google/android/gms/internal/ads/zzaio;-><init>(JZI)V

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzx:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzx:I

    goto :goto_19

    :cond_2e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzo:Ljava/util/ArrayDeque;

    .line 84
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzo:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaio;

    const/4 v13, 0x0

    invoke-direct {v4, v7, v8, v13, v2}, Lcom/google/android/gms/internal/ads/zzaio;-><init>(JZI)V

    .line 85
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzx:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzx:I

    goto :goto_19

    :cond_2f
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzI:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 86
    array-length v4, v3

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v4, :cond_31

    aget-object v6, v3, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    move v10, v2

    .line 87
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 89
    :cond_30
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaco;->zzk(I)V

    .line 25
    :cond_31
    :goto_19
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v2

    .line 90
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaiq;->zzl(J)V

    goto/16 :goto_0

    .line 89
    :cond_32
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    if-nez v2, :cond_34

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzm:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    const/4 v6, 0x1

    const/4 v13, 0x0

    .line 7
    invoke-interface {v1, v2, v13, v7, v6}, Lcom/google/android/gms/internal/ads/zzaco;->zzn([BIIZ)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzp:Lcom/google/android/gms/internal/ads/zzfo;

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzc()V

    const/16 v17, -0x1

    return v17

    :cond_33
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzm:Lcom/google/android/gms/internal/ads/zzdy;

    .line 8
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzm:Lcom/google/android/gms/internal/ads/zzdy;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzu()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzm:Lcom/google/android/gms/internal/ads/zzdy;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzg()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzs:I

    :cond_34
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    const-wide/16 v8, 0x1

    cmp-long v2, v5, v8

    if-nez v2, :cond_35

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzm:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v2

    .line 11
    invoke-interface {v1, v2, v7, v7}, Lcom/google/android/gms/internal/ads/zzaco;->zzi([BII)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzm:Lcom/google/android/gms/internal/ads/zzdy;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzw()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    goto :goto_1b

    :cond_35
    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-nez v2, :cond_38

    .line 164
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzd()J

    move-result-wide v5

    const-wide/16 v8, -0x1

    cmp-long v2, v5, v8

    if-nez v2, :cond_37

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzen;->zza:J

    goto :goto_1a

    :cond_36
    move-wide v5, v8

    :cond_37
    :goto_1a
    cmp-long v2, v5, v8

    if-eqz v2, :cond_38

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v8

    sub-long/2addr v5, v8

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    int-to-long v8, v2

    add-long/2addr v5, v8

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    .line 12
    :cond_38
    :goto_1b
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    int-to-long v8, v2

    cmp-long v2, v5, v8

    if-ltz v2, :cond_45

    .line 161
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v5

    sub-long/2addr v5, v8

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzs:I

    const v8, 0x6d646174

    const v9, 0x6d6f6f66

    if-eq v2, v9, :cond_39

    if-ne v2, v8, :cond_3a

    :cond_39
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzK:Z

    if-nez v2, :cond_3a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzH:Lcom/google/android/gms/internal/ads/zzacq;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzadl;

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzz:J

    .line 15
    invoke-direct {v10, v11, v12, v5, v6}, Lcom/google/android/gms/internal/ads/zzadl;-><init>(JJ)V

    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/ads/zzacq;->zzO(Lcom/google/android/gms/internal/ads/zzadm;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzK:Z

    :cond_3a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzs:I

    if-ne v2, v9, :cond_3b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 16
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v13, 0x0

    :goto_1c
    if-ge v13, v2, :cond_3b

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzaip;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaip;->zzb:Lcom/google/android/gms/internal/ads/zzajd;

    iput-wide v5, v10, Lcom/google/android/gms/internal/ads/zzajd;->zzc:J

    iput-wide v5, v10, Lcom/google/android/gms/internal/ads/zzajd;->zzb:J

    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    :cond_3b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzs:I

    if-ne v2, v8, :cond_3c

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzB:Lcom/google/android/gms/internal/ads/zzaip;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzw:J

    const/4 v7, 0x2

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    goto/16 :goto_0

    :cond_3c
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_43

    const v5, 0x7472616b

    if-eq v2, v5, :cond_43

    const v5, 0x6d646961

    if-eq v2, v5, :cond_43

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_43

    const v5, 0x7374626c

    if-eq v2, v5, :cond_43

    if-eq v2, v9, :cond_43

    const v5, 0x74726166

    if-eq v2, v5, :cond_43

    const v5, 0x6d766578

    if-eq v2, v5, :cond_43

    const v5, 0x65647473

    if-ne v2, v5, :cond_3d

    goto/16 :goto_1e

    :cond_3d
    const v5, 0x68646c72    # 4.3148E24f

    const-wide/32 v8, 0x7fffffff

    if-eq v2, v5, :cond_40

    const v5, 0x6d646864

    if-eq v2, v5, :cond_40

    const v5, 0x6d766864

    if-eq v2, v5, :cond_40

    if-eq v2, v4, :cond_40

    const v4, 0x73747364

    if-eq v2, v4, :cond_40

    const v4, 0x73747473

    if-eq v2, v4, :cond_40

    const v4, 0x63747473

    if-eq v2, v4, :cond_40

    const v4, 0x73747363

    if-eq v2, v4, :cond_40

    const v4, 0x7374737a

    if-eq v2, v4, :cond_40

    const v4, 0x73747a32

    if-eq v2, v4, :cond_40

    const v4, 0x7374636f

    if-eq v2, v4, :cond_40

    const v4, 0x636f3634

    if-eq v2, v4, :cond_40

    const v4, 0x73747373

    if-eq v2, v4, :cond_40

    const v4, 0x74666474

    if-eq v2, v4, :cond_40

    const v4, 0x74666864

    if-eq v2, v4, :cond_40

    const v4, 0x746b6864

    if-eq v2, v4, :cond_40

    const v4, 0x74726578

    if-eq v2, v4, :cond_40

    const v4, 0x7472756e

    if-eq v2, v4, :cond_40

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_40

    const v4, 0x7361697a

    if-eq v2, v4, :cond_40

    const v4, 0x7361696f

    if-eq v2, v4, :cond_40

    const v4, 0x73656e63

    if-eq v2, v4, :cond_40

    const v4, 0x75756964

    if-eq v2, v4, :cond_40

    const v4, 0x73626770

    if-eq v2, v4, :cond_40

    const v4, 0x73677064

    if-eq v2, v4, :cond_40

    const v4, 0x656c7374

    if-eq v2, v4, :cond_40

    const v4, 0x6d656864

    if-eq v2, v4, :cond_40

    if-ne v2, v3, :cond_3e

    goto :goto_1d

    .line 22
    :cond_3e
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    cmp-long v4, v2, v8

    if-gtz v4, :cond_3f

    const/4 v2, 0x0

    .line 164
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzv:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v6, 0x1

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    goto/16 :goto_0

    .line 22
    :cond_3f
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 164
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    .line 20
    :cond_40
    :goto_1d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    if-ne v2, v7, :cond_42

    .line 162
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    cmp-long v4, v2, v8

    if-gtz v4, :cond_41

    .line 21
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdy;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    long-to-int v4, v3

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzm:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v4

    const/4 v13, 0x0

    .line 22
    invoke-static {v3, v13, v4, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzv:Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v6, 0x1

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzr:I

    goto/16 :goto_0

    .line 162
    :cond_41
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 163
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    .line 20
    :cond_42
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 162
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v1

    throw v1

    .line 17
    :cond_43
    :goto_1e
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaco;->zzf()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    const-wide/16 v7, -0x8

    add-long/2addr v3, v7

    .line 18
    invoke-direct {v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzen;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzt:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzu:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_44

    .line 19
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzl(J)V

    goto/16 :goto_0

    .line 20
    :cond_44
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj()V

    goto/16 :goto_0

    .line 12
    :cond_45
    const-string v1, "Atom size less than header length (unsupported)."

    .line 161
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzq:Lcom/google/android/gms/internal/ads/zzfxn;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacq;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzc:Lcom/google/android/gms/internal/ads/zzakd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzakg;-><init>(Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzakd;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzH:Lcom/google/android/gms/internal/ads/zzacq;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzI:[Lcom/google/android/gms/internal/ads/zzadt;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:I

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzH:Lcom/google/android/gms/internal/ads/zzacq;

    const/4 v3, 0x5

    .line 3
    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 p1, 0x1

    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzI:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzei;->zzN([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzadt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzI:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 5
    array-length v0, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzaiq;->zzb:Lcom/google/android/gms/internal/ads/zzab;

    .line 6
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zze:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzJ:[Lcom/google/android/gms/internal/ads/zzadt;

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzJ:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 8
    array-length p1, p1

    if-ge v2, p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzH:Lcom/google/android/gms/internal/ads/zzacq;

    add-int/lit8 v0, v1, 0x1

    const/4 v3, 0x3

    .line 9
    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzacq;->zzw(II)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zze:Ljava/util/List;

    .line 10
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzJ:[Lcom/google/android/gms/internal/ads/zzadt;

    .line 11
    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzf:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaip;->zzi()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzo:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzx:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzp:Lcom/google/android/gms/internal/ads/zzfo;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfo;->zzc()V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzy:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzn:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiq;->zzj()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzaco;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaja;->zza(Lcom/google/android/gms/internal/ads/zzaco;)Lcom/google/android/gms/internal/ads/zzadq;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfxn;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxn;->zzn()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiq;->zzq:Lcom/google/android/gms/internal/ads/zzfxn;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
