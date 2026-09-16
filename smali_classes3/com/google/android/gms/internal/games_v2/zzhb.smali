.class final Lcom/google/android/gms/internal/games_v2/zzhb;
.super Lcom/google/android/gms/internal/games_v2/zzhd;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/games_v2/zzhd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games_v2/zzhd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games_v2/zzhd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    return-void
.end method

.method private final zzm(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzhd;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v1

    const-string v2, "index"

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzb(IILjava/lang/String;)I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzhb;->zzm(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzhd;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzhd;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzhb;->zzm(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzhd;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzhb;->zzm(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzg(II)Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    return-object v0
.end method

.method public final zzg(II)Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzhb;->zza:Lcom/google/android/gms/internal/games_v2/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v1

    .line 2
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/games_v2/zzfu;->zzd(III)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzhd;->size()I

    move-result p2

    sub-int/2addr p2, p1

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzg(II)Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzf()Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object p1

    return-object p1
.end method
