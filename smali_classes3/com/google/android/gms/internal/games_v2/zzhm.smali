.class public final Lcom/google/android/gms/internal/games_v2/zzhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# direct methods
.method public static zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzig;

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/games_v2/zzig;->zzd:Lcom/google/android/gms/internal/games_v2/zzhd;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzl(I)Lcom/google/android/gms/internal/games_v2/zzim;

    move-result-object p0

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzhp;->zza(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
