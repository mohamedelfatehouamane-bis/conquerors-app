.class public abstract Lcom/google/android/gms/internal/ads/zzsn;
.super Lcom/google/android/gms/internal/ads/zzhr;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:I

.field private zzB:Z

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:J

.field private zzI:J

.field private zzJ:I

.field private zzK:I

.field private zzL:Ljava/nio/ByteBuffer;

.field private zzM:Z

.field private zzN:Z

.field private zzO:Z

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:I

.field private zzT:I

.field private zzU:I

.field private zzV:Z

.field private zzW:Z

.field private zzX:Z

.field private zzY:J

.field private zzZ:J

.field protected zza:Lcom/google/android/gms/internal/ads/zzhs;

.field private zzaa:Z

.field private zzab:Z

.field private zzac:Z

.field private zzad:Lcom/google/android/gms/internal/ads/zzsl;

.field private zzae:J

.field private zzaf:Z

.field private zzag:Lcom/google/android/gms/internal/ads/zzrg;

.field private zzah:Lcom/google/android/gms/internal/ads/zzrg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzsb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzsp;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzru;

.field private final zzj:Landroid/media/MediaCodec$BufferInfo;

.field private final zzk:Ljava/util/ArrayDeque;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzqt;

.field private zzm:Lcom/google/android/gms/internal/ads/zzab;

.field private zzn:Lcom/google/android/gms/internal/ads/zzab;

.field private zzo:Lcom/google/android/gms/internal/ads/zzli;

.field private zzp:Landroid/media/MediaCrypto;

.field private zzq:F

.field private zzr:F

.field private zzs:Lcom/google/android/gms/internal/ads/zzsd;

.field private zzt:Lcom/google/android/gms/internal/ads/zzab;

.field private zzu:Landroid/media/MediaFormat;

.field private zzv:Z

.field private zzw:F

.field private zzx:Ljava/util/ArrayDeque;

.field private zzy:Lcom/google/android/gms/internal/ads/zzsj;

.field private zzz:Lcom/google/android/gms/internal/ads/zzsg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsn;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzsb;Lcom/google/android/gms/internal/ads/zzsp;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Lcom/google/android/gms/internal/ads/zzsb;

    .line 2
    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzd:Lcom/google/android/gms/internal/ads/zzsp;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzsn;->zze:F

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    .line 5
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    const/4 p3, 0x2

    .line 6
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzru;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzru;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    .line 8
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzq:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzr:F

    new-instance p3, Ljava/util/ArrayDeque;

    .line 9
    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzsl;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhh;->zzj(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzru;->zzc:Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqt;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzl:Lcom/google/android/gms/internal/ads/zzqt;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzae:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzH:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    return-void
.end method

.method protected static zzaP(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzK:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzaQ()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsl;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzaf:Z

    :cond_0
    return-void
.end method

.method private final zzaS()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    return-void
.end method

.method private final zzaT()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaS()V

    :goto_0
    return v1
.end method

.method private final zzaU()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaV(JJ)Z
    .locals 4

    const/4 v0, 0x0

    cmp-long v1, p3, p1

    if-gez v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzadi;->zzf(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    return v0
.end method

.method private final zzaW(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzk()Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzhr;->zzcU(Lcom/google/android/gms/internal/ads/zzke;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result p1

    const/4 v0, -0x5

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzac(Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzht;

    return v2

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhb;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzcT()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzr:F

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzT()[Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzZ(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzae()V

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzq(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    :cond_3
    :goto_0
    return v2
.end method

.method private final zzad()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzl:Lcom/google/android/gms/internal/ads/zzqt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqt;->zzb()V

    return-void
.end method

.method private final zzae()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    return-void
.end method

.method private final zzah()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaH()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaH()V

    .line 3
    throw v0
.end method

.method private final zzai()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaq()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzah()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaS()V

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzah()V

    return-void
.end method

.method private final zzao()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static bridge synthetic zzax(Lcom/google/android/gms/internal/ads/zzsn;)Lcom/google/android/gms/internal/ads/zzli;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzo:Lcom/google/android/gms/internal/ads/zzli;

    return-object p0
.end method


# virtual methods
.method protected zzC()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzad()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    return-void

    :catchall_0
    move-exception v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    .line 3
    throw v1
.end method

.method protected zzF([Lcom/google/android/gms/internal/ads/zzab;JJLcom/google/android/gms/internal/ads/zzug;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsl;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzsl;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(JJJ)V

    .line 2
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzsn;->zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzae:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_3

    cmp-long p1, v4, v0

    if-ltz p1, :cond_3

    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzsl;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(JJJ)V

    .line 5
    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 6
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzsl;->zzd:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzap()V

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(JJJ)V

    .line 4
    invoke-virtual {p1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzq:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzr:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z

    return-void
.end method

.method public zzV(JJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v3, 0x1

    .line 1
    :try_start_0
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaq()V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v4, 0x2

    if-nez v0, :cond_1

    .line 2
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzsn;->zzaW(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_a

    const/4 v5, -0x5

    const/4 v6, 0x0

    if-eqz v0, :cond_1b

    :try_start_1
    const-string v0, "bypassRender"

    .line 4
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    xor-int/2addr v0, v3

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v4
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_4

    :try_start_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzru;->zzc:Ljava/nio/ByteBuffer;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzru;->zzm()I

    move-result v10

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzru;->zze:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzf()J

    move-result-wide v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzru;->zzn()J

    move-result-wide v2

    .line 6
    invoke-direct {v1, v13, v14, v2, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzaV(JJ)Z

    move-result v13

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzf()Z

    move-result v14

    const/4 v2, 0x1

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v15, :cond_3

    .line 7
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    move-object v3, v6

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 8
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzar(JJLcom/google/android/gms/internal/ads/zzsd;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzru;->zzn()J

    move-result-wide v2

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzaD(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v6

    .line 43
    throw v2
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a

    :cond_4
    move-object v2, v6

    .line 10
    :goto_1
    :try_start_3
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_a

    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_5
    const/4 v3, 0x1

    .line 142
    :try_start_5
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 11
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzru;->zzp(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v5, 0x0

    :try_start_6
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v0

    if-nez v0, :cond_7

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzad()V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    if-eqz v0, :cond_1a

    goto :goto_5

    :cond_7
    :goto_4
    move-object v6, v2

    const/4 v5, -0x5

    goto/16 :goto_0

    :cond_8
    :goto_5
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    xor-int/2addr v0, v3

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzk()Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    :cond_9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 18
    invoke-virtual {v1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzhr;->zzcU(Lcom/google/android/gms/internal/ads/zzke;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result v4

    const/4 v6, -0x5

    if-eq v4, v6, :cond_17

    const/4 v7, -0x4

    if-eq v4, v7, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    goto/16 :goto_a

    .line 38
    :cond_a
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhb;->zzf()Z

    move-result v7

    if-eqz v7, :cond_b

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    goto/16 :goto_a

    :cond_b
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    .line 19
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhb;->zzh()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    :cond_d
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_a

    const-string v7, "audio/opus"

    if-eqz v4, :cond_11

    :try_start_7
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v4, :cond_10

    .line 20
    move-object v8, v4

    check-cast v8, Lcom/google/android/gms/internal/ads/zzab;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    .line 21
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    .line 22
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    .line 23
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    .line 24
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzadi;->zza([B)I

    move-result v4

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v8, :cond_e

    .line 25
    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v8

    .line 26
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzG(I)Lcom/google/android/gms/internal/ads/zzz;

    .line 27
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_6

    .line 40
    :cond_e
    throw v2

    .line 27
    :cond_f
    :goto_6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    .line 28
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzan(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    goto :goto_7

    .line 41
    :cond_10
    throw v2

    .line 28
    :cond_11
    :goto_7
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhh;->zzk()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    .line 30
    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhb;->zze()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    iput-object v7, v4, Lcom/google/android/gms/internal/ads/zzhh;->zza:Lcom/google/android/gms/internal/ads/zzab;

    .line 31
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzsn;->zzaj(Lcom/google/android/gms/internal/ads/zzhh;)V

    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzf()J

    move-result-wide v7

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    invoke-static {v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzadi;->zzf(JJ)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzl:Lcom/google/android/gms/internal/ads/zzqt;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v8, :cond_13

    .line 32
    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    .line 33
    invoke-virtual {v7, v4, v8}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzhh;Ljava/util/List;)V

    goto :goto_8

    .line 39
    :cond_13
    throw v2

    .line 33
    :cond_14
    :goto_8
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_9

    .line 36
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzf()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzru;->zzn()J

    move-result-wide v9

    .line 34
    invoke-direct {v1, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzaV(JJ)Z

    move-result v4

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    iget-wide v9, v9, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    .line 35
    invoke-direct {v1, v7, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzaV(JJ)Z

    move-result v7

    if-ne v4, v7, :cond_16

    .line 33
    :goto_9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 36
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzru;->zzp(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_16
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    goto :goto_a

    .line 37
    :cond_17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzac(Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzht;

    .line 18
    :cond_18
    :goto_a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzk()V

    :cond_19
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzru;->zzq()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    if-nez v0, :cond_7

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    if-eqz v0, :cond_1a

    goto/16 :goto_4

    .line 42
    :cond_1a
    :goto_b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v10, 0x0

    const/4 v15, 0x1

    goto/16 :goto_1f

    :catch_0
    move-exception v0

    const/4 v3, 0x1

    goto :goto_c

    :catch_1
    move-exception v0

    :goto_c
    const/4 v5, 0x0

    goto/16 :goto_20

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_25

    :cond_1b
    move-object v2, v6

    const/4 v5, 0x0

    const/4 v6, -0x5

    .line 37
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v0, :cond_55

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    const-string v0, "drainAndFeed"

    .line 45
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_d
    const/16 v16, -0x5

    :goto_e
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v6, :cond_54

    .line 46
    move-object v0, v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaU()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzD:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_a

    if-eqz v0, :cond_1d

    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_10

    .line 73
    :catch_3
    :try_start_9
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    if-eqz v0, :cond_1c

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    :cond_1c
    :goto_f
    move-object/from16 v17, v2

    goto/16 :goto_17

    .line 65
    :cond_1d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 47
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_10
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v0, :cond_24

    const/4 v6, -0x2

    if-ne v0, v6, :cond_20

    .line 48
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzX:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v0, :cond_1f

    .line 49
    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzc()Landroid/media/MediaFormat;

    move-result-object v0

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    if-eqz v6, :cond_1e

    const-string v6, "width"

    .line 50
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1e

    const-string v6, "height"

    .line 51
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_1e

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzF:Z

    goto :goto_e

    :cond_1e
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzu:Landroid/media/MediaFormat;

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzv:Z

    goto :goto_e

    .line 75
    :cond_1f
    throw v2

    .line 51
    :cond_20
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    if-eqz v0, :cond_22

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    if-nez v0, :cond_21

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    if-ne v0, v4, :cond_22

    .line 76
    :cond_21
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    :cond_22
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzH:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_23

    goto :goto_f

    :cond_23
    const-wide/16 v6, 0x64

    add-long/2addr v9, v6

    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zza()J

    move-result-wide v6

    cmp-long v0, v9, v6

    if-gez v0, :cond_1c

    .line 78
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    goto :goto_f

    :cond_24
    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzF:Z

    if-eqz v9, :cond_25

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzF:Z

    .line 52
    invoke-interface {v6, v0, v5}, Lcom/google/android/gms/internal/ads/zzsd;->zzo(IZ)V

    goto/16 :goto_e

    :cond_25
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 53
    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v9, :cond_26

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_26

    .line 85
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    goto/16 :goto_f

    :cond_26
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    .line 54
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_27

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 56
    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_27
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 57
    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzf()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-gez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_11

    :cond_28
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzM:Z

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    cmp-long v0, v9, v7

    if-eqz v0, :cond_29

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 58
    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v9, v7

    if-gtz v0, :cond_29

    const/4 v0, 0x1

    goto :goto_12

    :cond_29
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 59
    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 60
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzee;->zzc(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    if-nez v0, :cond_2a

    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaf:Z

    if-eqz v7, :cond_2a

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzu:Landroid/media/MediaFormat;

    if-eqz v7, :cond_2a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 61
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzee;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    :cond_2a
    if-eqz v0, :cond_2b

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_13

    .line 65
    :cond_2b
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzv:Z

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v0, :cond_2d

    .line 61
    :goto_13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v0, :cond_2c

    .line 62
    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzu:Landroid/media/MediaFormat;

    invoke-virtual {v1, v0, v7}, Lcom/google/android/gms/internal/ads/zzsn;->zzan(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzv:Z

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaf:Z

    goto :goto_14

    .line 84
    :cond_2c
    throw v2

    .line 62
    :cond_2d
    :goto_14
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzD:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_a

    if-eqz v0, :cond_2f

    :try_start_a
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 66
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzM:Z

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v15, :cond_2e

    .line 67
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_b

    const/4 v10, 0x1

    move-wide/from16 v4, p3

    move-object/from16 v17, v2

    move-wide/from16 v2, p1

    .line 68
    :try_start_b
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzar(JJLcom/google/android/gms/internal/ads/zzsd;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    goto :goto_15

    :cond_2e
    move-object/from16 v17, v2

    .line 81
    throw v17
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_b

    :catch_4
    move-object/from16 v17, v2

    .line 82
    :catch_5
    :try_start_c
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    if-eqz v0, :cond_33

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    goto :goto_17

    :cond_2f
    move-object/from16 v17, v2

    .line 80
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzL:Ljava/nio/ByteBuffer;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzK:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 63
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzM:Z

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzn:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v15, :cond_53

    .line 64
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    const/4 v10, 0x1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 65
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzar(JJLcom/google/android/gms/internal/ads/zzsd;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    :goto_15
    if-eqz v0, :cond_33

    .line 68
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 69
    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzaD(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 70
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_30

    const/4 v2, 0x1

    goto :goto_16

    :cond_30
    const/4 v2, 0x0

    :goto_16
    if-nez v2, :cond_31

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    if-eqz v0, :cond_31

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    if-eqz v0, :cond_31

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zza()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzH:J

    .line 72
    :cond_31
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaQ()V

    if-eqz v2, :cond_32

    .line 80
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    goto :goto_17

    :cond_32
    move-object/from16 v2, v17

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_d

    .line 76
    :cond_33
    :goto_17
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v2, :cond_51

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_51

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    if-eqz v0, :cond_34

    goto/16 :goto_1d

    .line 86
    :cond_34
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsd;

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    if-gez v0, :cond_35

    .line 87
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzsd;->zza()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    if-ltz v0, :cond_51

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 88
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzsd;->zzf(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    :cond_35
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I
    :try_end_c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_a

    const/4 v15, 0x1

    if-ne v0, v15, :cond_37

    :try_start_d
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    if-nez v0, :cond_36

    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 125
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsd;->zzk(IIIJI)V

    .line 126
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    :cond_36
    iput v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    const/4 v10, 0x0

    goto/16 :goto_1e

    :cond_37
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzE:Z
    :try_end_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    if-eqz v0, :cond_39

    const/4 v10, 0x0

    :try_start_e
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzE:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_38

    .line 90
    move-object v3, v0

    check-cast v3, Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzsn;->zzb:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x26

    .line 91
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsd;->zzk(IIIJI)V

    .line 92
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    goto :goto_17

    .line 127
    :cond_38
    throw v17

    :cond_39
    const/4 v10, 0x0

    .line 92
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    if-ne v0, v15, :cond_3d

    const/4 v0, 0x0

    :goto_18
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v3, :cond_3c

    .line 93
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3b

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    .line 94
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_3a

    .line 95
    move-object v5, v4

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 128
    :cond_3a
    throw v17

    .line 95
    :cond_3b
    iput v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    goto :goto_19

    .line 138
    :cond_3c
    throw v17

    .line 95
    :cond_3d
    :goto_19
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_50

    .line 96
    move-object v3, v0

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzk()Lcom/google/android/gms/internal/ads/zzke;

    move-result-object v3
    :try_end_e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_8

    :try_start_f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 98
    invoke-virtual {v1, v3, v4, v10}, Lcom/google/android/gms/internal/ads/zzhr;->zzcU(Lcom/google/android/gms/internal/ads/zzke;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result v4
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzhg; {:try_start_f .. :try_end_f} :catch_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_8

    const/4 v5, -0x3

    if-ne v4, v5, :cond_3e

    :try_start_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    goto/16 :goto_1e

    :cond_3e
    const/4 v11, -0x5

    if-ne v4, v11, :cond_40

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    if-ne v0, v9, :cond_3f

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iput v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    .line 103
    :cond_3f
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzac(Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzht;

    goto/16 :goto_17

    :cond_40
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhb;->zzf()Z

    move-result v4

    if-eqz v4, :cond_43

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    if-ne v0, v9, :cond_41

    .line 129
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iput v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    :cond_41
    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    if-nez v0, :cond_42

    .line 130
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzai()V

    goto/16 :goto_1e

    :cond_42
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    if-nez v0, :cond_52

    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 131
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsd;->zzk(IIIJI)V

    .line 132
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    goto/16 :goto_1e

    :cond_43
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    if-nez v4, :cond_44

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhb;->zzg()Z

    move-result v4

    if-nez v4, :cond_44

    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    if-ne v0, v9, :cond_33

    iput v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    goto/16 :goto_17

    .line 104
    :cond_44
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzaO(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 106
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    add-int/2addr v2, v15

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    goto/16 :goto_17

    :cond_45
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzl()Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Lcom/google/android/gms/internal/ads/zzhe;

    .line 107
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(I)V

    :cond_46
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    if-eqz v0, :cond_4a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v3, :cond_47

    .line 110
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzd(JLjava/lang/Object;)V

    goto :goto_1a

    .line 134
    :cond_47
    throw v17

    .line 119
    :cond_48
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 111
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v3, :cond_49

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzd(JLjava/lang/Object;)V

    .line 110
    :goto_1a
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    goto :goto_1b

    .line 136
    :cond_49
    throw v17

    .line 110
    :cond_4a
    :goto_1b
    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    .line 112
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzh()Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_4b
    iput-wide v12, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    :cond_4c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzk()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zze()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 114
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaj(Lcom/google/android/gms/internal/ads/zzhh;)V

    :cond_4d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 115
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaE(Lcom/google/android/gms/internal/ads/zzhh;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 116
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzau(Lcom/google/android/gms/internal/ads/zzhh;)I

    if-eqz v4, :cond_4e

    .line 120
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsd;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 121
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsd;->zzl(IILcom/google/android/gms/internal/ads/zzhe;JI)V

    goto :goto_1c

    .line 117
    :cond_4e
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsd;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzJ:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4f

    .line 118
    move-object v4, v0

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 119
    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzsd;->zzk(IIIJI)V

    .line 122
    :goto_1c
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    iput v10, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 123
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhs;->zzc:I

    add-int/2addr v2, v15

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhs;->zzc:I

    goto/16 :goto_17

    .line 135
    :cond_4f
    throw v17

    :catch_6
    move-exception v0

    const/4 v11, -0x5

    .line 99
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzak(Ljava/lang/Exception;)V

    .line 100
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzaW(I)Z

    .line 101
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzah()V

    goto/16 :goto_17

    .line 137
    :cond_50
    throw v17

    :catch_7
    move-exception v0

    const/4 v10, 0x0

    goto :goto_21

    :cond_51
    :goto_1d
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 133
    :cond_52
    :goto_1e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1f

    :cond_53
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 79
    throw v17

    :cond_54
    move-object/from16 v17, v2

    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 139
    throw v17

    :cond_55
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 47
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 140
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzhr;->zzd(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    .line 141
    invoke-direct {v1, v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzaW(I)Z

    .line 42
    :goto_1f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhs;->zza()V
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_8

    :cond_56
    return-void

    :catch_8
    move-exception v0

    goto :goto_21

    :catch_9
    move-exception v0

    goto :goto_26

    :catch_a
    move-exception v0

    :goto_20
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 143
    :goto_21
    instance-of v2, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_57

    goto :goto_22

    .line 144
    :cond_57
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 145
    array-length v4, v3

    if-lez v4, :cond_5b

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.MediaCodec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 147
    :goto_22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzak(Ljava/lang/Exception;)V

    if-eqz v2, :cond_58

    .line 148
    move-object v2, v0

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    .line 149
    invoke-virtual {v2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v2

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    goto :goto_23

    :cond_58
    const/4 v2, 0x0

    :goto_23
    if-eqz v2, :cond_59

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    :cond_59
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    .line 151
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzaA(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsg;)Lcom/google/android/gms/internal/ads/zzsf;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzsf;->zzb:I

    const/16 v4, 0x44d

    if-ne v3, v4, :cond_5a

    const/16 v3, 0xfa6

    goto :goto_24

    :cond_5a
    const/16 v3, 0xfa3

    :goto_24
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    .line 152
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v0

    throw v0

    .line 146
    :cond_5b
    throw v0

    :catch_b
    move-exception v0

    :goto_25
    const/4 v10, 0x0

    .line 141
    :goto_26
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    .line 153
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzei;->zzl(I)I

    move-result v3

    .line 154
    invoke-virtual {v1, v0, v2, v10, v3}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v0

    .line 155
    throw v0
.end method

.method public zzW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    return v0
.end method

.method public zzX()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzS()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaU()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final zzY(Lcom/google/android/gms/internal/ads/zzab;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzd:Lcom/google/android/gms/internal/ads/zzsp;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzsn;->zzaa(Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzab;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzsu; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected zzZ(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaA(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsg;)Lcom/google/android/gms/internal/ads/zzsf;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsf;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsg;)V

    return-object v0
.end method

.method protected final zzaB()Lcom/google/android/gms/internal/ads/zzsg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    return-object v0
.end method

.method protected final zzaC()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    const-string v8, "MediaCodecRenderer"

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-nez v0, :cond_47

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    if-nez v0, :cond_47

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    if-nez v9, :cond_0

    goto/16 :goto_17

    :cond_0
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzsn;->zzaM(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzad()V

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "audio/mpeg"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "audio/opus"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    .line 7
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzru;->zzo(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    const/16 v2, 0x20

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzru;->zzo(I)V

    .line 7
    :goto_0
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    return-void

    .line 6
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    .line 9
    sget-boolean v2, Lcom/google/android/gms/internal/ads/zzrh;->zza:Z

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrg;->zza()Lcom/google/android/gms/internal/ads/zzqy;

    :cond_3
    const/4 v11, 0x0

    :try_start_0
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    const/4 v13, 0x0

    if-eqz v12, :cond_46

    .line 11
    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzd:Lcom/google/android/gms/internal/ads/zzsp;

    .line 12
    invoke-virtual {v1, v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzag(Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzab;Z)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v2, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    .line 16
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzsu; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    :catch_0
    move-exception v0

    .line 141
    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzsj;

    const v3, -0xc34e

    .line 17
    invoke-direct {v2, v12, v0, v11, v3}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZI)V

    throw v2

    .line 16
    :cond_5
    :goto_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 19
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    if-eqz v14, :cond_44

    .line 20
    move-object v0, v14

    check-cast v0, Ljava/util/ArrayDeque;

    :goto_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-nez v0, :cond_43

    .line 21
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/google/android/gms/internal/ads/zzsg;

    if-eqz v15, :cond_42

    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsg;

    .line 22
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzsn;->zzaN(Lcom/google/android/gms/internal/ads/zzsg;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_47

    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v0, :cond_3f

    .line 23
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    .line 24
    sget v3, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_6

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_3

    .line 114
    :cond_6
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzr:F

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzT()[Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    invoke-virtual {v1, v3, v0, v6}, Lcom/google/android/gms/internal/ads/zzsn;->zzZ(FLcom/google/android/gms/internal/ads/zzab;[Lcom/google/android/gms/internal/ads/zzab;)F

    move-result v3

    .line 24
    :goto_3
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzsn;->zze:F

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_7

    const/high16 v3, -0x40800000    # -1.0f

    .line 26
    :cond_7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaF(Lcom/google/android/gms/internal/ads/zzab;)V

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v6

    const/high16 v16, -0x40800000    # -1.0f

    .line 28
    invoke-virtual {v1, v15, v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzsn;->zzaf(Lcom/google/android/gms/internal/ads/zzsg;Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsa;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v17, 0x1

    :try_start_4
    sget v10, Lcom/google/android/gms/internal/ads/zzei;->zza:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/16 v18, 0x0

    const/16 v11, 0x1f

    if-lt v10, v11, :cond_8

    .line 29
    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzo()Lcom/google/android/gms/internal/ads/zzog;

    move-result-object v10

    .line 30
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzog;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v10

    .line 31
    invoke-static {}, Lcom/facebook/internal/Utility$$ExternalSyntheticApiModelOutline0;->m()Landroid/media/metrics/LogSessionId;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzoc$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzsa;->zzb:Landroid/media/MediaFormat;

    const-string v4, "log-session-id"

    .line 32
    invoke-static {v10}, Lcom/gpc/sdk/GPCBaseActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v4, v10}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v19, v13

    goto/16 :goto_14

    :cond_8
    :goto_4
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCodec:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzc:Lcom/google/android/gms/internal/ads/zzsb;

    .line 35
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzsb;->zzd(Lcom/google/android/gms/internal/ads/zzsa;)Lcom/google/android/gms/internal/ads/zzsd;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzsk;

    invoke-direct {v10, v1, v13}, Lcom/google/android/gms/internal/ads/zzsk;-><init>(Lcom/google/android/gms/internal/ads/zzsn;Lcom/google/android/gms/internal/ads/zzsm;)V

    .line 36
    invoke-interface {v4, v10}, Lcom/google/android/gms/internal/ads/zzsd;->zzs(Lcom/google/android/gms/internal/ads/zzsc;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v10

    .line 40
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zze(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v19, v13

    if-nez v4, :cond_30

    :try_start_8
    const-string v4, "Format exceeds selected codec\'s capabilities [%s, %s]"

    const-string v13, ","

    .line 41
    move-object/from16 v20, v13

    check-cast v20, Ljava/lang/String;

    move-object/from16 v20, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v21, v6

    const-string v6, "id="

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mimeType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzn:Ljava/lang/String;

    if-eqz v6, :cond_9

    const-string v6, ", container="

    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    const-string v6, ", bitrate="

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzj:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzk:Ljava/lang/String;

    if-eqz v6, :cond_b

    const-string v6, ", codecs="

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzk:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzs:Lcom/google/android/gms/internal/ads/zzu;

    if-eqz v6, :cond_12

    new-instance v6, Ljava/util/LinkedHashSet;

    .line 47
    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move-wide/from16 v23, v10

    const/4 v7, 0x0

    :goto_5
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzab;->zzs:Lcom/google/android/gms/internal/ads/zzu;

    .line 48
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzu;->zzb:I

    if-ge v7, v11, :cond_11

    .line 49
    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzu;->zza(I)Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzt;->zza:Ljava/util/UUID;

    .line 50
    sget-object v11, Lcom/google/android/gms/internal/ads/zzh;->zzb:Ljava/util/UUID;

    invoke-virtual {v10, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v10, "cenc"

    .line 51
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    move/from16 v25, v7

    goto :goto_7

    :cond_c
    sget-object v11, Lcom/google/android/gms/internal/ads/zzh;->zzc:Ljava/util/UUID;

    .line 52
    invoke-virtual {v10, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v10, "clearkey"

    .line 53
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    sget-object v11, Lcom/google/android/gms/internal/ads/zzh;->zze:Ljava/util/UUID;

    .line 54
    invoke-virtual {v10, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const-string v10, "playready"

    .line 55
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    sget-object v11, Lcom/google/android/gms/internal/ads/zzh;->zzd:Ljava/util/UUID;

    .line 56
    invoke-virtual {v10, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v10, "widevine"

    .line 57
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    sget-object v11, Lcom/google/android/gms/internal/ads/zzh;->zza:Ljava/util/UUID;

    .line 58
    invoke-virtual {v10, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v10, "universal"

    .line 59
    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 60
    :cond_10
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v7

    const-string v7, "unknown ("

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v7, v25, 0x1

    goto :goto_5

    :cond_11
    const-string v7, ", drm=["

    .line 61
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {v5, v6, v13}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5d

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_12
    move-wide/from16 v23, v10

    :goto_8
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_13

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-eq v6, v7, :cond_13

    const-string v6, ", res="

    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_13
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    if-eqz v6, :cond_15

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzk;->zze()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzk;->zzf()Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_14
    const-string v6, ", color="

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzk;->zzd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    cmpl-float v6, v6, v16

    if-eqz v6, :cond_16

    const-string v6, ", fps="

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzx:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_16
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_17

    const-string v6, ", channels="

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_17
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_18

    const-string v6, ", sample_rate="

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_18
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzd:Ljava/lang/String;

    if-eqz v6, :cond_19

    const-string v6, ", language="

    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzd:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzc:Ljava/util/List;

    .line 70
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const-string v7, "]"

    if-nez v6, :cond_1a

    :try_start_9
    const-string v6, ", labels=["

    .line 71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzc:Ljava/util/List;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzy;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzy;-><init>()V

    .line 72
    invoke-static {v6, v10}, Lcom/google/android/gms/internal/ads/zzfyd;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfuc;)Ljava/util/List;

    move-result-object v6

    .line 73
    invoke-static {v5, v6, v13}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zze:I

    if-eqz v6, :cond_1d

    const-string v6, ", selectionFlags=["

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zze:I

    new-instance v10, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v11, v6, 0x1

    if-eqz v11, :cond_1b

    const-string v11, "default"

    .line 77
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1c

    const-string v6, "forced"

    .line 78
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1c
    invoke-static {v5, v10, v13}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    if-eqz v6, :cond_2e

    const-string v6, ", roleFlags=["

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    new-instance v11, Ljava/util/ArrayList;

    .line 82
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v16, v6, 0x1

    if-eqz v16, :cond_1e

    const v16, 0x8000

    const-string v10, "main"

    .line 83
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    const v16, 0x8000

    :goto_9
    and-int/lit8 v10, v6, 0x2

    if-eqz v10, :cond_1f

    const-string v10, "alt"

    .line 84
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    and-int/lit8 v10, v6, 0x4

    if-eqz v10, :cond_20

    const-string v10, "supplementary"

    .line 85
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    and-int/lit8 v10, v6, 0x8

    if-eqz v10, :cond_21

    const-string v10, "commentary"

    .line 86
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    and-int/lit8 v10, v6, 0x10

    if-eqz v10, :cond_22

    const-string v10, "dub"

    .line 87
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    and-int/lit8 v10, v6, 0x20

    if-eqz v10, :cond_23

    const-string v10, "emergency"

    .line 88
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v10, v6, 0x40

    if-eqz v10, :cond_24

    const-string v10, "caption"

    .line 89
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_25

    const-string v10, "subtitle"

    .line 90
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit16 v10, v6, 0x100

    if-eqz v10, :cond_26

    const-string v10, "sign"

    .line 91
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit16 v10, v6, 0x200

    if-eqz v10, :cond_27

    const-string v10, "describes-video"

    .line 92
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit16 v10, v6, 0x400

    if-eqz v10, :cond_28

    const-string v10, "describes-music"

    .line 93
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit16 v10, v6, 0x800

    if-eqz v10, :cond_29

    const-string v10, "enhanced-intelligibility"

    .line 94
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v10, v6, 0x1000

    if-eqz v10, :cond_2a

    const-string v10, "transcribes-dialog"

    .line 95
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int/lit16 v10, v6, 0x2000

    if-eqz v10, :cond_2b

    const-string v10, "easy-read"

    .line 96
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    and-int/lit16 v10, v6, 0x4000

    if-eqz v10, :cond_2c

    const-string v10, "trick-play"

    .line 97
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    and-int v6, v6, v16

    if-eqz v6, :cond_2d

    const-string v6, "auxiliary"

    .line 98
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_2d
    invoke-static {v5, v11, v13}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_2e
    const v16, 0x8000

    :goto_a
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzab;->zzf:I

    and-int v6, v6, v16

    if-eqz v6, :cond_2f

    const-string v6, ", auxiliaryTrackType="

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "undefined"

    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v18

    aput-object v2, v7, v17

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 103
    invoke-static {v5, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v8, v4}, Lcom/google/android/gms/internal/ads/zzdo;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_30
    move-object/from16 v20, v5

    move-wide/from16 v21, v6

    move-wide/from16 v23, v10

    :goto_b
    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v3, 0x19

    if-gt v0, v3, :cond_32

    const-string v0, "OMX.Exynos.avc.dec.secure"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    const-string v4, "SM-T585"

    .line 106
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    const-string v4, "SM-A510"

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    const-string v4, "SM-A520"

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    const-string v4, "SM-J700"

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_31
    const/4 v0, 0x2

    goto :goto_c

    .line 129
    :cond_32
    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x18

    if-ge v0, v4, :cond_35

    const-string v0, "OMX.Nvidia.h264.decode"

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_33
    const-string v0, "flounder"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzei;->zzb:Ljava/lang/String;

    .line 111
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "flounder_lte"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzei;->zzb:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "grouper"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzei;->zzb:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "tilapia"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzei;->zzb:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_34
    const/4 v0, 0x1

    goto :goto_c

    :cond_35
    const/4 v0, 0x0

    .line 109
    :goto_c
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_36

    const-string v0, "c2.android.aac.decoder"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    goto :goto_d

    :cond_36
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzB:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v5, 0x17

    if-gt v0, v5, :cond_37

    const-string v0, "OMX.google.vorbis.decoder"

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_e

    :cond_37
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v5, 0x15

    if-ne v0, v5, :cond_38

    const-string v0, "OMX.google.aac.decoder"

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_f

    :cond_38
    const/4 v0, 0x0

    :goto_f
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzD:Z

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    sget v5, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    if-gt v5, v3, :cond_3a

    const-string v3, "OMX.rk.video_decoder.avc"

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_11

    :cond_39
    :goto_10
    const/4 v0, 0x1

    goto :goto_12

    :cond_3a
    :goto_11
    sget v3, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    if-gt v3, v4, :cond_3b

    const-string v3, "OMX.broadcom.video_decoder.tunnel"

    .line 119
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "OMX.bcm.vdec.avc.tunnel"

    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "OMX.bcm.vdec.hevc.tunnel"

    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    :cond_3b
    const-string v0, "Amazon"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzei;->zzc:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "AFTS"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzei;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzsg;->zzf:Z

    if-eqz v0, :cond_3c

    goto :goto_10

    :cond_3c
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v0, :cond_3e

    .line 126
    check-cast v0, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzcT()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3d

    .line 127
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzi()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcx;->zzb()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    :cond_3d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 128
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzhs;->zza:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzhs;->zza:I

    sub-long v6, v23, v21

    move-object/from16 v3, v20

    move-wide/from16 v4, v23

    .line 129
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzsn;->zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsa;JJ)V

    goto :goto_16

    .line 130
    :cond_3e
    throw v19

    :catchall_0
    move-exception v0

    move-object/from16 v19, v13

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    throw v0

    :catch_2
    move-exception v0

    move-object/from16 v19, v13

    goto :goto_13

    :cond_3f
    move-object/from16 v19, v13

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 131
    throw v19
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v0

    goto :goto_14

    :catch_4
    move-exception v0

    move-object/from16 v19, v13

    const/16 v17, 0x1

    :goto_13
    const/16 v18, 0x0

    .line 139
    :goto_14
    :try_start_a
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    const-string v3, "Failed to initialize decoder: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v8, v2, v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsj;

    const/4 v3, 0x0

    .line 134
    invoke-direct {v2, v12, v0, v3, v15}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzsg;)V

    .line 135
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzsn;->zzak(Ljava/lang/Exception;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;

    if-nez v0, :cond_40

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;

    goto :goto_15

    .line 136
    :cond_40
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzsj;->zza(Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzsj;)Lcom/google/android/gms/internal/ads/zzsj;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;

    .line 137
    :goto_15
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    :goto_16
    move-object/from16 v13, v19

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_41
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzy:Lcom/google/android/gms/internal/ads/zzsj;

    .line 138
    throw v0

    :cond_42
    move-object/from16 v19, v13

    .line 139
    throw v19

    :cond_43
    move-object v2, v13

    .line 25
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    goto :goto_17

    :cond_44
    move-object v2, v13

    .line 140
    throw v2

    :cond_45
    move-object v2, v13

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsj;

    const v3, -0xc34f

    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v12, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Lcom/google/android/gms/internal/ads/zzab;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_46
    move-object v2, v13

    .line 141
    throw v2
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzsj; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    move-exception v0

    const/16 v2, 0xfa1

    const/4 v3, 0x0

    .line 142
    invoke-virtual {v1, v0, v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v0

    .line 143
    throw v0

    :cond_47
    :goto_17
    return-void
.end method

.method protected zzaD(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzae:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zzb:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsl;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzap()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzaE(Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    return-void
.end method

.method protected zzaF(Lcom/google/android/gms/internal/ads/zzab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    return-void
.end method

.method protected final zzaG()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsd;->zzm()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    if-eqz v1, :cond_0

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzam(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzp:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaI()V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzp:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaI()V

    .line 6
    throw v1
.end method

.method protected zzaH()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzao()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaQ()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzI:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzH:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzE:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzF:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzM:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzN:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzY:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzZ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzae:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    return-void
.end method

.method protected final zzaI()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaH()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzu:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzX:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzw:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzB:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    return-void
.end method

.method protected final zzaJ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    :cond_0
    return v0
.end method

.method protected final zzaK()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzB:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzX:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzW:Z

    if-nez v2, :cond_5

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    if-lt v0, v2, :cond_4

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaS()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzib; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    return v3

    .line 5
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzah()V

    return v1

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaG()V

    return v3
.end method

.method protected final zzaL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    return v0
.end method

.method protected final zzaM(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzsn;->zzas(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected zzaN(Lcom/google/android/gms/internal/ads/zzsg;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaO(Lcom/google/android/gms/internal/ads/zzhh;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zzaa(Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzab;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzsu;
        }
    .end annotation
.end method

.method protected zzab(Lcom/google/android/gms/internal/ads/zzsg;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzac(Lcom/google/android/gms/internal/ads/zzke;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lcom/google/android/gms/internal/ads/zzab;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzab;->zzo:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 2
    const-string v4, "video/av01"

    .line 4
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzab;->zzr:Ljava/util/List;

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzab;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    :cond_0
    move-object v8, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzke;->zzb:Lcom/google/android/gms/internal/ads/zzrg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzQ:Z

    return-object v4

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-nez p1, :cond_2

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzx:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaC()V

    return-object v4

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzz:Lcom/google/android/gms/internal/ads/zzsg;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    .line 22
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v2, v7

    check-cast v2, Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzag:Lcom/google/android/gms/internal/ads/zzrg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzah:Lcom/google/android/gms/internal/ads/zzrg;

    if-ne v2, v4, :cond_13

    if-eq v4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 10
    sget v4, Lcom/google/android/gms/internal/ads/zzei;->zza:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcw;->zzf(Z)V

    .line 11
    invoke-virtual {p0, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzsn;->zzab(Lcom/google/android/gms/internal/ads/zzsg;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzht;->zzd:I

    const/4 v6, 0x3

    if-eqz v5, :cond_f

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v5, v0, :cond_b

    if-eq v5, v10, :cond_7

    .line 12
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzsn;->zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v2, :cond_10

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaT()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    .line 14
    :cond_7
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzsn;->zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzR:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzS:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzA:I

    if-eq v5, v10, :cond_a

    if-ne v5, v0, :cond_9

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzab;->zzv:I

    if-ne v5, v9, :cond_9

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzab;->zzw:I

    if-ne v5, v9, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzE:Z

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v2, :cond_10

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaT()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    .line 16
    :cond_b
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzsn;->zzaX(Lcom/google/android/gms/internal/ads/zzab;)Z

    move-result v5

    if-nez v5, :cond_c

    :goto_4
    const/16 v10, 0x10

    goto :goto_6

    :cond_c
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzt:Lcom/google/android/gms/internal/ads/zzab;

    if-eqz v2, :cond_d

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaT()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_d
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzV:Z

    if-eqz v2, :cond_10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzT:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzC:Z

    if-eqz v2, :cond_e

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    goto :goto_6

    :cond_e
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    goto :goto_5

    .line 18
    :cond_f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzae()V

    :cond_10
    :goto_5
    const/4 v10, 0x0

    .line 12
    :goto_6
    iget v0, v4, Lcom/google/android/gms/internal/ads/zzht;->zzd:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    if-ne v0, p1, :cond_11

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzU:I

    if-ne p1, v6, :cond_12

    :cond_11
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzht;

    const/4 v9, 0x0

    .line 19
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;II)V

    return-object v5

    :cond_12
    return-object v4

    .line 20
    :cond_13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzae()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsg;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzht;

    const/4 v9, 0x0

    const/16 v10, 0x80

    .line 21
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzab;II)V

    return-object v5

    .line 1
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    .line 3
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzhr;->zzcW(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzab;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    .line 2
    throw p1
.end method

.method protected abstract zzaf(Lcom/google/android/gms/internal/ads/zzsg;Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzsa;
.end method

.method protected abstract zzag(Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzab;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzsu;
        }
    .end annotation
.end method

.method protected zzaj(Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzak(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsa;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzam(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzan(Lcom/google/android/gms/internal/ads/zzab;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzap()V
    .locals 0

    return-void
.end method

.method protected zzaq()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    return-void
.end method

.method protected abstract zzar(JJLcom/google/android/gms/internal/ads/zzsd;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzab;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method protected zzas(Lcom/google/android/gms/internal/ads/zzab;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzat()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzq:F

    return v0
.end method

.method protected zzau(Lcom/google/android/gms/internal/ads/zzhh;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzav()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:J

    return-wide v0
.end method

.method protected final zzaw()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzsl;->zzc:J

    return-wide v0
.end method

.method protected final zzay()Lcom/google/android/gms/internal/ads/zzli;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzo:Lcom/google/android/gms/internal/ads/zzli;

    return-object v0
.end method

.method protected final zzaz()Lcom/google/android/gms/internal/ads/zzsd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzs:Lcom/google/android/gms/internal/ads/zzsd;

    return-object v0
.end method

.method public final zze()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public zzu(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzli;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzo:Lcom/google/android/gms/internal/ads/zzli;

    :cond_0
    return-void
.end method

.method protected zzx()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzm:Lcom/google/android/gms/internal/ads/zzab;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsl;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaR(Lcom/google/android/gms/internal/ads/zzsl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaK()Z

    return-void
.end method

.method protected zzy(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    return-void
.end method

.method protected zzz(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzaa:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzab:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzO:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzi:Lcom/google/android/gms/internal/ads/zzru;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhb;->zzb()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzP:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzl:Lcom/google/android/gms/internal/ads/zzqt;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqt;->zzb()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsn;->zzaJ()Z

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzad:Lcom/google/android/gms/internal/ads/zzsl;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zza()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzac:Z

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsn;->zzk:Ljava/util/ArrayDeque;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method
