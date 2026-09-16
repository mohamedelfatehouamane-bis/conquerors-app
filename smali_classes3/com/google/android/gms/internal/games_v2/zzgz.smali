.class public final Lcom/google/android/gms/internal/games_v2/zzgz;
.super Lcom/google/android/gms/internal/games_v2/zzgw;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzgw;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzgw;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgz;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/games_v2/zzgw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/games_v2/zzgw;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/games_v2/zzhd;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games_v2/zzgz;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzhd;->zzk([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games_v2/zzhd;

    move-result-object v0

    return-object v0
.end method
