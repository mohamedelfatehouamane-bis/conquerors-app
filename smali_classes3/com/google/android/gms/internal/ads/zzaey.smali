.class final Lcom/google/android/gms/internal/ads/zzaey;
.super Lcom/google/android/gms/internal/ads/zzaex;
.source "com.google.android.gms:play-services-ads@@23.6.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzdy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdy;

.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadt;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaex;-><init>(Lcom/google/android/gms/internal/ads/zzadt;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzb:Lcom/google/android/gms/internal/ads/zzdy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdy;

    const/4 v0, 0x4

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzdy;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaew;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzg:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaew;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video format not supported: "

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaew;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/ads/zzdy;J)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbc;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzm()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzh()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->zze:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v1

    .line 13
    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdy;-><init>([B)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v2

    .line 14
    invoke-virtual {p1, v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabr;->zza(Lcom/google/android/gms/internal/ads/zzdy;)Lcom/google/android/gms/internal/ads/zzabr;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzabr;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    .line 16
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    const-string v1, "video/avc"

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaa(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzabr;->zzl:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzabr;->zzc:I

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzaf(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzabr;->zzd:I

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzK(I)Lcom/google/android/gms/internal/ads/zzz;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzabr;->zzk:F

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zzW(F)Lcom/google/android/gms/internal/ads/zzz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzabr;->zza:Ljava/util/List;

    .line 22
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzz;->zzN(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzz;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzag()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    .line 24
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadt;->zzm(Lcom/google/android/gms/internal/ads/zzab;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaey;->zze:Z

    return v4

    :cond_0
    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->zze:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzg:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzf:Z

    if-nez v5, :cond_2

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v0

    .line 3
    aput-byte v4, v0, v4

    .line 4
    aput-byte v4, v0, v3

    const/4 v5, 0x2

    .line 5
    aput-byte v4, v0, v5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzd:I

    const/4 v5, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdy;->zzb()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzN()[B

    move-result-object v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzd:I

    .line 6
    invoke-virtual {p1, v6, v0, v7}, Lcom/google/android/gms/internal/ads/zzdy;->zzH([BII)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    .line 7
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzc:Lcom/google/android/gms/internal/ads/zzdy;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzb:Lcom/google/android/gms/internal/ads/zzdy;

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdy;->zzp()I

    move-result v6

    .line 9
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzL(I)V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaey;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzb:Lcom/google/android/gms/internal/ads/zzdy;

    .line 10
    invoke-interface {v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    add-int/lit8 v10, v10, 0x4

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaey;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    .line 11
    invoke-interface {v7, p1, v6}, Lcom/google/android/gms/internal/ads/zzadt;->zzr(Lcom/google/android/gms/internal/ads/zzdy;I)V

    add-int/2addr v10, v6

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    add-long v7, p2, v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaey;->zza:Lcom/google/android/gms/internal/ads/zzadt;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 12
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzadt;->zzt(JIIILcom/google/android/gms/internal/ads/zzads;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaey;->zzf:Z

    return v3

    :cond_4
    return v4
.end method
