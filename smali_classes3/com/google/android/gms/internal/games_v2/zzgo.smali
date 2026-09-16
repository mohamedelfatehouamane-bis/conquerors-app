.class final Lcom/google/android/gms/internal/games_v2/zzgo;
.super Lcom/google/android/gms/internal/games_v2/zzgq;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzgq;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/gms/internal/games_v2/zzgq;
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgq;->zze()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzf()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzgq;->zzd()Lcom/google/android/gms/internal/games_v2/zzgq;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
