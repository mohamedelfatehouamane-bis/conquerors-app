.class abstract Lcom/google/android/gms/internal/games_v2/zzgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field final zza:Ljava/lang/Comparable;


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzgu;->zza:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzgu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/games_v2/zzgu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzgu;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzgu;->zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract hashCode()I
.end method

.method abstract zza(Ljava/lang/StringBuilder;)V
.end method

.method abstract zzb(Ljava/lang/StringBuilder;)V
.end method

.method public zzc(Lcom/google/android/gms/internal/games_v2/zzgu;)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgt;->zzd()Lcom/google/android/gms/internal/games_v2/zzgt;

    move-result-object v0

    if-eq p1, v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgr;->zzd()Lcom/google/android/gms/internal/games_v2/zzgr;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/games_v2/zzgu;->zza:Ljava/lang/Comparable;

    sget v0, Lcom/google/android/gms/internal/games_v2/zzhw;->zzc:I

    const-string v0, ""

    .line 2
    invoke-interface {v0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/games_v2/zzgs;

    instance-of p1, p1, Lcom/google/android/gms/internal/games_v2/zzgs;

    .line 3
    invoke-static {v0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
